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
    List<String> os = List.of("Math","Memory","Screen","Output","Keyboard","String","Sys");

    String currentLine;
    String className;
    String subroutineName;
    String subroutineFuncKind;
    String subroutineParameterTypes;
    String subroutineReturnType;
    CheckMethods cM;
    String callingReturnType;
    Integer labelCounter;
    String tab;
    String arithmeticType;

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
        labelCounter = 0;
        arithmeticType = "int";
        tab = "";
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
            System.out.println("Code is Wrong");
        }
        move();
    }

    //function from the Lecture
    public void compileClass(){
        // write("class");
        move();
        move();
        increaseTab();
        process("class");
        className = removeExtraS(currentLine);
        jasWriter.writeClass(className);
        process("identifier");//className
        process("{");

        increaseTab();
        compileClassVarDec();

        compileSubroutine();
        decreaseTab();

        process("}");
        decreaseTab();
        // write("/class");
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
            subroutineParameterTypes = "";
            subroutineFuncKind = removeExtraS(currentLine);
            if(subroutineFuncKind.equals("method")||subroutineFuncKind.equals("constructor")){
                table.define("this", className, "var");
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
                subroutineParameterTypes = "[Ljava/lang/String;";
                table.define("args","String","var");
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
            subroutineParameterTypes = "" + JasminWriter.getJasminType(type);
            table.define(name,type,"var");
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
            subroutineParameterTypes = subroutineParameterTypes + JasminWriter.getJasminType(type);
            table.define(name,type,"var");
        }
    }

    public void compileSubroutineBody(){
        increaseTab();
        process("{");

        compileVarDec();
        jasWriter.writeLimit(table.varCount());

        //OS Funktionen in der main Funktionen aufrufen.
        if(className.equals("Main") && subroutineName.equals("main")){
            jasWriter.writeNew("OS/Output");
            jasWriter.writeInvoke("constructor", "OS/Output", "<init>", new ArrayList<>(),"void");
            jasWriter.writePop();
            jasWriter.writeNew("OS/Screen");
            jasWriter.writeInvoke("constructor", "OS/Screen", "<init>", new ArrayList<>(),"void");
            jasWriter.writePop();
            jasWriter.writeNew("OS/Memory");
            jasWriter.writeInvoke("constructor", "OS/Memory", "<init>", new ArrayList<>(),"void");
            jasWriter.writePop();
            jasWriter.writeNew("OS/Math");
            jasWriter.writeInvoke("constructor", "OS/Math", "<init>", new ArrayList<>(),"void");
            jasWriter.writePop();
            jasWriter.writeNew("OS/Keyboard");
            jasWriter.writeInvoke("constructor", "OS/Keyboard", "<init>", new ArrayList<>(),"void");
            jasWriter.writePop();
        }

        if(subroutineFuncKind.equals("constructor")){
            jasWriter.writeLoad(0, "object");
            // dup ????
            jasWriter.writeInvoke("constructor","java/lang/Object","<init>",null,"void");
        }
        compileStatements();

        process("}");
        decreaseTab();
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
            table.define(name,type,"var");
            while(currentLine.contains(",")){
                process(",");
                name = removeExtraS(currentLine);
                process("identifier");//varName
                table.define(name,type,"var");
            }

            process(";");
        }
    }

    public void compileStatements(){
        List<String> sment = List.of("let","if","while","do","return");
        //write("statements");
        
        while(sment.stream().anyMatch(s->currentLine.contains(s))){
            if(currentLine.contains("let")) compileLet();
            if(currentLine.contains("if")) compileIf();
            if(currentLine.contains("while")) compileWhile();
            if(currentLine.contains("do")) compileDo();
            if(currentLine.contains("return")) compileReturn();
        }
        
       
        //write("/statements"); 
    }

    public void compileLet(){
        increaseTab();
        process("let");
        String varName = removeExtraS(currentLine);
        process("identifier");//varName

        if(table.kindOf(varName).equals("field")){
            getOutOfTable("this");
        }

        //Muss noch bearbeitet werden!!!!!!
        if(currentLine.contains("[")){
            process("[");
            compileExpression();
            process("]");
        } //expression
        process("=");
        compileExpression();
        process(";");

        putOutOfTable(varName);
        decreaseTab();
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
        jasWriter.writeGoto("ifL",ifCounter+1);
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
        increaseTab();
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
        decreaseTab();

    }

    public void compileDo(){
       
        process("do");
        
        //subroutineCall();
        compileExpression();

        process(";");
        //Do statements ingorieren ihren return Value.
        //Problem wenn println aufgerufen wird kann nicht pop aufgerufen werden, weil nichts auf dem Stack ist.
        if(!callingReturnType.equals("void")){
            jasWriter.writePop();
        }

    }

    public void compileReturn(){
        process("return");
        //contains keyword --> NULL is a keyword
        if(currentLine.contains("identifier")||currentLine.contains("(")
            ||currentLine.contains("keyword")
            || currentLine.contains("integerConstant")
            ||currentLine.contains("stringConstant")
            ||unaryOP.stream().anyMatch(uo -> currentLine.contains(uo))){
              compileExpression();
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
            if(currentLine.contains(".")){ //subroutineCall

                //Gilt nur für OS Klassen die statisch aufgerufen werden...
                if(os.stream().anyMatch(lastLine::contains)){
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
                        jasWriter.writeInvoke("function",lastLine, callingSubName, cM.getMethodParamTypes(fullName),typeOfFullName);
                    }
                    callingReturnType = typeOfFullName;
                    arithmeticType = callingReturnType;

            }else if(currentLine.contains("[")){
                //Muss noch bearbeitet werden!!!!!!



                process("[");
                compileExpression();
                process("]");
            }else if(currentLine.contains("(")){//calling a static function in the same Class
                process("(");
                compileExpressionList();
                process(")");
                String fullName = className + "." + lastLine;
                jasWriter.writeInvoke("function",className, lastLine, cM.getMethodParamTypes(fullName),cM.getMethodType(fullName));
                callingReturnType = cM.getMethodType(fullName);
                arithmeticType = callingReturnType;
            }else{
                getOutOfTable(lastLine);
                arithmeticType = table.typeOf(lastLine);
            }
        }else if(currentLine.contains("stringConstant")){
            translateAndWriteString(currentLine);
            process(currentLine);
            arithmeticType = "Object";
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
                arithmeticType = "Object";
            }else if(currentLine.contains("this")){
                if(!subroutineFuncKind.contains("constructor")){
                    getOutOfTable(removeExtraS(currentLine));
                }
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

    public void subroutineCall(){
        if(currentLine.contains("identifier")){
            String lastLine = currentLine;
            move();
            if(currentLine.contains(".")){ //subroutineCall
                // writeLastLine(lastLine);
                process(".");
                process("identifier");
                process("(");
                compileExpressionList();
                process(")");
            }else if(currentLine.contains("(")){//subroutineCall
                // writeLastLine(lastLine);
                process("(");
                compileExpressionList();
                process(")");
            }
        }
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

    // public void writeLastLine(String str){
    //     try{
    //         writeFile.write(tab + str +"\n");
    //     }catch (IOException e) {
    //         System.out.println("An error occurred.");
    //         e.printStackTrace();
    //     }
    // }

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
            //muss zu OS/
            //jasWriter.writeCall("String.appendChar", 2);
        }
    }

}