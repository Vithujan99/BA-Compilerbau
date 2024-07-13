package projektvstest;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class CompilationEngine{

    Scanner readFile;
    JasminWriter jasWriter;
    SymbolTable table;
    List<String> unaryOP = List.of("-","~");
    final List<String> os = List.of("Math","Memory","Screen","Output","Keyboard","String","Array","Sys");

    String currentLine;
    String className;
    String subroutineName;
    String subroutineFuncKind;
    List<String> subroutineParameterTypes;
    String subroutineReturnType;
    CheckMethods cM;
    String callingReturnType;
    Integer labelCounter;
    String tab;
    String arithmeticType;
    Boolean isReturn;

    public CompilationEngine(String input, String output, CheckMethods checkMethods){
        try{
            readFile = new Scanner(new File(input)); 
        }catch(FileNotFoundException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
        jasWriter = new JasminWriter(output);
        table = new SymbolTable();
        cM = checkMethods;
        callingReturnType = "";
        subroutineParameterTypes = new ArrayList<>();
        labelCounter = 0;
        arithmeticType = "int";
        tab = "";
        isReturn = false;
    }

    private void move(){
        if(readFile.hasNext()){
            currentLine = readFile.nextLine();
        }
    }

    public void increaseTab(){
        tab += "  ";
    }

    public void decreaseTab(){
        tab = tab.substring(0, tab.length()-2);
    }
    private String removeExtraS(String l){
        return l.substring(l.indexOf(">") + 1, l.indexOf("</")).trim();
    }

    private void process(String str){
        if(!currentLine.contains(str)){
            System.out.println("Code: " + str + "in Class "+className+" inside the Subroutine "+subroutineName + " is Wrong");
        }
        move();
    }

    //function from the Lecture
    public void compileClass(){
        move();
        move();
        process("class");
        className = removeExtraS(currentLine);
        jasWriter.writeClass(className);
        process("identifier");//className
        process("{");

        compileClassVarDec();
        compileSubroutine();

        process("}");
        fileClose();
    }

    public void compileClassVarDec(){
        String kind;
        String type;
        String name;
        while(currentLine.contains("field")||currentLine.contains("static")){
            kind = removeExtraS(currentLine);
            process(currentLine); //static|field
            type = removeExtraS(currentLine);

            //Für Types aus OS
            if(os.stream().anyMatch(type::contains)){
                type = "OS/" + type;
            }
            process(currentLine); //type
            name = removeExtraS(currentLine);
            process("identifier");//varName
            table.define(name,type,kind);
            jasWriter.writeFieldVar(kind,name,type);//schreibt .field ... für die Klassen Variabeln
            while(currentLine.contains(",")){
                process(",");
                name = removeExtraS(currentLine);
                table.define(name,type,kind);
                jasWriter.writeFieldVar(kind,name,type);
                process("identifier");//varName
            }
            process(";");
        }
        
    }

    public void compileSubroutine(){
        while(currentLine.contains("constructor")||
                    currentLine.contains("function")||
                        currentLine.contains("method")){
            table.reset();
            subroutineParameterTypes.clear();
            subroutineFuncKind = removeExtraS(currentLine);
            if(subroutineFuncKind.equals("method")||subroutineFuncKind.equals("constructor")){
                table.define("this", className, "argument");
            }
            process(currentLine);
            subroutineReturnType = removeExtraS(currentLine);
            process(currentLine); //(void|type)
            subroutineName = removeExtraS(currentLine);
            process("identifier");//subroutineName

            //When subroutine is a Constructor type is void and name is <init>
            if(subroutineFuncKind.equals("constructor")){
                subroutineReturnType = "void";
                subroutineName = "<init>";
            }

            process("(");
            compileParameterList();
            process(")");

            //--------------Muss gändert werden nur so für Prototyp??
            if(subroutineName.equals("main")){
                subroutineParameterTypes = new ArrayList<>(List.of("[Ljava/lang/String;"));
                table.define("args","String","argument");
            }

            jasWriter.writeFunction(subroutineFuncKind, subroutineName, subroutineParameterTypes, subroutineReturnType);

            compileSubroutineBody();

            jasWriter.writeEndSubroutine();
        }
    }

    public void compileParameterList(){
        String type;
        String name;
        if(!currentLine.contains(")")){
            type = removeExtraS(currentLine);

            //Für Types aus OS
            if(os.stream().anyMatch(type::contains)){
                type = "OS/" + type;
            }
            process(currentLine); //type
            name = removeExtraS(currentLine);
            process("identifier");//varName
            subroutineParameterTypes = new ArrayList<>(List.of("" + type));
            table.define(name,type,"argument");
        }
        while(!currentLine.contains(")")){
            process(",");
            type = removeExtraS(currentLine);

            //Für Types aus OS
            if(os.stream().anyMatch(type::contains)){
                type = "OS/" + type;
            }
            process(currentLine); //type
            name = removeExtraS(currentLine);
            process("identifier");//varName
            subroutineParameterTypes.add(type);
            table.define(name,type,"argument");
        }
    }

    public void compileSubroutineBody(){
        process("{");

        compileVarDec();
        jasWriter.writeLimit(table.varCount());

        //OS Funktionen in der main Funktionen aufrufen.
        if(className.equals("Main") && subroutineName.equals("main")){
            jasWriter.writeNew("OS/Sys");
            jasWriter.writeInvoke("constructor", "OS/Sys", "<init>", new ArrayList<>(),"void");
            jasWriter.writePop();
        }

        if(subroutineFuncKind.equals("constructor")){
            jasWriter.writeLoad(0, "object");
            jasWriter.writeInvoke("constructor","java/lang/Object","<init>",null,"void");
            // Klassen Feld Variablen mit 0 initialisieren
            for(ClassSymbol s : table.classTable){
                if(s.type.equals("char")||s.type.equals("int")||s.type.equals("boolean")){
                    if(s.kind.equals("field")){
                        getOutOfTable("this");
                        jasWriter.writeNumberPush(0);
                        putOutOfTable(s.name);
                    }
                }
            }
        }
        //Subroutine Variablen mit 0 initialisieren aber nicht die Argumente
        for(SubSymbol s : table.subTable){
            if((s.type.equals("char")||s.type.equals("int")||s.type.equals("boolean")) && s.kind.equals("local")){
                jasWriter.writeNumberPush(0);
                putOutOfTable(s.name);
            }
        }
        compileStatements();

        process("}");
    }

    public void compileVarDec(){
        String type;
        String name;
        while(currentLine.contains("var")){
            process("var");
            type = removeExtraS(currentLine);
            //Für Types aus OS
            if(os.stream().anyMatch(type::contains)){
                type = "OS/" + type;
            }
            process(currentLine); //type
            name = removeExtraS(currentLine);
            process("identifier");//varName
            table.define(name,type,"local");
            while(currentLine.contains(",")){
                process(",");
                name = removeExtraS(currentLine);
                process("identifier");//varName
                table.define(name,type,"local");
            }

            process(";");
        }
    }

    public void compileStatements(){
        List<String> statements = List.of("let","if","while","for","do","return");
        //write("statements");
        
        while(statements.stream().anyMatch(s->currentLine.contains(s))){
            isReturn = false;
            if(currentLine.contains("let")) compileLet();
            if(currentLine.contains("if")) compileIf();
            if(currentLine.contains("while")) compileWhile();
            if(currentLine.contains("for")) compileFor();
            if(currentLine.contains("do")) compileDo();
            if(currentLine.contains("return")) compileReturn();
        }
        
       
        //write("/statements"); 
    }

    public void compileLet(){
        boolean isArray = false;
        process("let");
        String varName = removeExtraS(currentLine);
        process("identifier");//varName
        if(table.kindOf(varName).equals("field") && !currentLine.contains("[")){
            getOutOfTable("this");
        }
        //Array Muss noch bearbeitet werden!!!!!!
        if(currentLine.contains("[")){
            isArray = true;
            getOutOfTable(varName); //load array reference
            process("[");
            compileExpression();//index
            process("]");
        } //expression
        process("=");
        compileExpression();//Value
        process(";");
        if(table.typeOf(varName).equals("OS/Array") && !isArray && arithmeticType.equals("int")){
            jasWriter.writeInvoke("function","OS/Array","setBaseAddress",List.of("int"),"OS/Array");
        }

        if(isArray){
            if(arithmeticType.equals("OS/String")){
                jasWriter.writeInvoke("method","OS/Array","set",List.of("int","OS/String"),"void");
            }else if(arithmeticType.equals("OS/Array")){
                jasWriter.writeInvoke("method","OS/Array","getBaseAddress",List.of(),"int");
                jasWriter.writeInvoke("method","OS/Array","set",List.of("int","int"),"void");
            }else if(arithmeticType.equals("null")){
                jasWriter.writePop();
                jasWriter.writeNumberPush(0);
                jasWriter.writeInvoke("method","OS/Array","set",List.of("int","int"),"void");
            }else{
                jasWriter.writeInvoke("method","OS/Array","set",List.of("int","int"),"void"); //store value at specified index in the array
            }
        } else{
            putOutOfTable(varName);
        }
    }

    public void compileIf(){
        Integer ifCounter = labelCounter;
        labelCounter += 2;
        increaseTab();
        process("if");
        process("(");
        compileExpression();//expression
        process(")");
        jasWriter.writeIf("ifL",ifCounter);
        process("{");
        compileStatements();
        process("}");
        if(!isReturn){
            jasWriter.writeGoto("ifL",ifCounter+1);
        }
        jasWriter.writeLabel("ifL",ifCounter);
        if(currentLine.contains("else")){
            process("else");
            process("{");
            compileStatements();
            process("}");
        }
        jasWriter.writeLabel("ifL",ifCounter+1);

        decreaseTab();
    }

    public void compileWhile(){
        Integer whileCounter = labelCounter;
        labelCounter += 2;
        jasWriter.writeLabel("whileL", whileCounter + 1);
        process("while");
        process("(");
        compileExpression();//Expression
        jasWriter.writeIf("whileL", whileCounter);
        process(")");
        process("{");
        compileStatements();
        process("}");
        jasWriter.writeGoto("whileL",whileCounter + 1);
        jasWriter.writeLabel("whileL", whileCounter);
    }

    public void compileFor(){
        Integer forCounter = labelCounter;
        labelCounter += 4;
        //for (letStatement; expression; letStatement)
        process("for");
        process("(");
        compileLet();
        jasWriter.writeLabel("forL", forCounter);
        compileExpression();
        process(";");
        jasWriter.writeIf("forL", forCounter + 3);
        jasWriter.writeGoto("forL", forCounter + 1);
        jasWriter.writeLabel("forL", forCounter + 2);
        compileLet();
        process(")");
        jasWriter.writeGoto("forL", forCounter);

        jasWriter.writeLabel("forL", forCounter + 1);
        process("{");
        compileStatements();
        process("}");
        jasWriter.writeGoto("forL", forCounter + 2);
        jasWriter.writeLabel("forL", forCounter + 3);
    }

    public void compileDo(){
       
        process("do");

        compileExpression();

        process(";");
        //Do statements ingorieren ihren return Value.
        //Problem wenn println aufgerufen wird kann nicht pop aufgerufen werden, weil nichts auf dem Stack ist.
        if(!callingReturnType.equals("void")){
            jasWriter.writePop();
        }

    }

    public void compileReturn(){
        isReturn = true;
        process("return");
        //contains keyword --> NULL is a keyword
        if(currentLine.contains("identifier")||currentLine.contains("(")
            ||currentLine.contains("keyword")
            || currentLine.contains("integerConstant")
            ||currentLine.contains("stringConstant")
            ||unaryOP.stream().anyMatch(uo -> currentLine.contains(uo))){
            if(!subroutineFuncKind.contains("constructor")){
                compileExpression();
            }else{
                process(currentLine);
            }
        }
        jasWriter.writeReturn(subroutineReturnType);
        process(";");
    }

    public void compileExpression(){
        List<String> op = List.of("+","-","*"," / ","&amp;","|","&lt;","&gt;","="); 

        compileTerm();

        while(op.stream().anyMatch(o->currentLine.contains(o))){
            String operation = removeExtraS(currentLine);
            process(currentLine);
            compileTerm();
            jasWriter.writeArithmetic(operation,arithmeticType);
        }
    }

    public void compileTerm(){
        if(currentLine.contains("identifier")){
            String callingSubName;
            String lastLine = removeExtraS(currentLine);
            move();
            if(currentLine.contains(".")){ //subroutineCall!!!

                //Gilt nur für OS Klassen
                if(os.stream().anyMatch(lastLine::equals)){
                    lastLine = "OS/" + lastLine;
                }

                process(".");
                callingSubName = removeExtraS(currentLine);
                process("identifier");

                //Loading the Subroutine
                String fullName;
                if(table.existInSubT(lastLine)||table.existInClassT(lastLine)){
                    fullName = table.typeOf(lastLine) + "." + callingSubName;
                    //z.b aload_0; Wird nur aufgerufen wenn diese existiert.
                    getOutOfTable(lastLine);
                }else{
                    fullName = lastLine + "." + callingSubName;
                    if(cM.getMethodKind(fullName).equals("constructor")) {
                        jasWriter.writeNew(lastLine);//Muss vor Expression aufgerufen werden.
                    }
                }

                //cllingParameterTypes muss hier verarbeitet werden.
                process("(");
                compileExpressionList();
                process(")");

                //Calling the Subroutin
                String typeOfFullName = cM.getMethodType(fullName);
                    if(cM.getMethodKind(fullName).equals("constructor")){
                        //is a Constructor
                        jasWriter.writeInvoke("constructor", lastLine, "<init>", cM.getMethodParamTypes(fullName),typeOfFullName);
                    }else if(cM.getMethodKind(fullName).equals("method")){
                        //is a Method
                        jasWriter.writeInvoke("method",table.typeOf(lastLine), callingSubName, cM.getMethodParamTypes(fullName),typeOfFullName);
                    }else{
                        //is a function
                        if(fullName.equals("OS/Output.printInt")){
                            if(arithmeticType.equals("OS/Array")){
                                jasWriter.writeInvoke("method","OS/Array","getBaseAddress",List.of(),"int");
                            }
                        }
                        jasWriter.writeInvoke("function",lastLine, callingSubName, cM.getMethodParamTypes(fullName),typeOfFullName);
                    }
                    callingReturnType = typeOfFullName;
                    arithmeticType = callingReturnType;
                    if(fullName.contains("OS/Array")){
                        arithmeticType = "OS/Array";
                    }

            }else if(currentLine.contains("[")){
                getOutOfTable(lastLine);
                process("[");
                compileExpression();
                process("]");
                jasWriter.writeInvoke("method","OS/Array","get",List.of("int"),"int");
                arithmeticType = "int";
            }else if(currentLine.contains("(")){//calling a static function or a method in the same Class
                String fullName = className + "." + lastLine;
                if(cM.getMethodKind(fullName).equals("method")){
                    getOutOfTable("this");
                }
                process("(");
                compileExpressionList();
                process(")");
                if(cM.getMethodKind(fullName).equals("method")){
                    //is a Method
                    jasWriter.writeInvoke("method",className, lastLine, cM.getMethodParamTypes(fullName),cM.getMethodType(fullName));
                }else{
                    //is a function
                    jasWriter.writeInvoke("function",className, lastLine, cM.getMethodParamTypes(fullName),cM.getMethodType(fullName));
                }
                callingReturnType = cM.getMethodType(fullName);
                arithmeticType = callingReturnType;
            }else{
                if(table.typeOf(lastLine).equals("OS/Array") && (currentLine.contains("+") ||currentLine.contains("-"))){
                    getOutOfTable(lastLine);
                    jasWriter.writeInvoke("method","OS/Array","getBaseAddress",List.of(),"int");
                }else{
                    getOutOfTable(lastLine);
                }

                arithmeticType = table.typeOf(lastLine);
            }
        }else if(currentLine.contains("stringConstant")){
            translateAndWriteString(currentLine);
            process(currentLine);
            arithmeticType = "OS/String";
        }else if(currentLine.contains("integerConstant")||currentLine.contains("keyword")){
            if(currentLine.contains("true")){
                jasWriter.writeNumberPush(1);
                process(currentLine);
                arithmeticType = "int";
            }else if(currentLine.contains("false")){
                jasWriter.writeNumberPush(0);
                process(currentLine);
                arithmeticType = "int";
            }else if(currentLine.contains("null")){
                jasWriter.writeAconst("null");
                process(currentLine);
                arithmeticType = "null";
            }else if(currentLine.contains("this")){
                getOutOfTable(removeExtraS(currentLine));
                process(currentLine);
                arithmeticType = "Object";
            }else{
                jasWriter.writeNumberPush(Integer.parseInt(removeExtraS(currentLine)));
                process(currentLine);
                arithmeticType = "int";
            }
        }else if(currentLine.contains("(")){ //(expression)
            process("(");
            compileExpression();
            process(")");
        }else if(unaryOP.stream().anyMatch(uo -> currentLine.contains(uo))){
            String uOp = removeExtraS(currentLine);
            process(currentLine);
            compileTerm();
            if(uOp.equals("-")){
                uOp = "neg";
            }
            jasWriter.writeArithmetic(uOp,"int");
        }
        //write("/term"); 
    }

    public void compileExpressionList(){
        increaseTab();
        if(currentLine.contains("identifier")||currentLine.contains("(")
            ||currentLine.contains("keyword")
            || currentLine.contains("integerConstant")
            ||currentLine.contains("stringConstant")
            ||unaryOP.stream().anyMatch(uo -> currentLine.contains(uo))){
            compileExpression();
            while(currentLine.contains(",")){
                process(",");
                compileExpression();
            }
        } 
        decreaseTab();
    }

    public void fileClose(){
        jasWriter.fileClose();
        readFile.close();
    }
    //Falls eine statische Methode aufgerufen wir wir diese vName ignoriert.
    private void getOutOfTable(String vName){
        if(table.existInSubT(vName)){
            jasWriter.writeLoad(table.indexOf(vName), table.typeOf(vName));
        }else if(table.existInClassT(vName)){
            jasWriter.writeGet(table.kindOf(vName), className, vName, table.typeOf(vName));
        }
    }
    private void putOutOfTable(String vName){
        if(table.existInSubT(vName)){
            jasWriter.writeStore(table.indexOf(vName), table.typeOf(vName));
        }else if(table.existInClassT(vName)){
            jasWriter.writePut(table.kindOf(vName), className, vName, table.typeOf(vName));
        }
    }

    public void translateAndWriteString(String cline){
        String line = removeExtraS(cline).trim() + " ";
        jasWriter.writeNew("OS/String");
        jasWriter.writeNumberPush(line.length());
        jasWriter.writeInvoke("constructor", "OS/String", "<init>", List.of("int"),"void");
        for(int i = 0; i < line.length(); i++){
            int ascii = (int) line.charAt(i);
            jasWriter.writeNumberPush( ascii);
            jasWriter.writeInvoke("method","OS/String", "appendChar", List.of("char"),"OS/String");
        }
    }

}