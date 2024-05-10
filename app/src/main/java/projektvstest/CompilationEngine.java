package projektvstest;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

public class CompilationEngine{

    Scanner readFile;
    JasminWriter jasWriter;
    SymbolTable table;
    List<String> unaryOP = List.of("-","~");
    List<String> os = List.of("String","Output");

    String currentLine;
    String className;
    String subroutineName;
    String subroutineFuncKind;
    String subroutineParameterTypes;
    String subroutineReturnType;
    Map<String, String> methodsMap;
    String callingParameterTypes;
    String callingReturnType;
    String tab;

    public CompilationEngine(String input, String output, Map<String,String> map){
        try{
            readFile = new Scanner(new File(input)); 
        }catch(FileNotFoundException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
        jasWriter = new JasminWriter(output);
        table = new SymbolTable();
        methodsMap = map;
        callingParameterTypes ="";
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
            process(currentLine); //type
            name = removeExtraS(currentLine);
            process("identifier");//varName
            subroutineParameterTypes = "" + JasminWriter.getJasminType(type);
            table.define(name,type,"var");
        }
        while(!currentLine.contains(")")){
            process(",");
            type = removeExtraS(currentLine);
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
        if(subroutineFuncKind.equals("constructor")){
            jasWriter.writeLoad(0, "object");
            // dup ????
            jasWriter.writeInvoke("constructor","java/lang/Object","<init>","","void");
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

        //Ignoring for now
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
        //write("ifStatement");
        increaseTab();
        process("if");
        process("(");
        compileExpression();//expression
        process(")");
        process("{");
        compileStatements();
        process("}");

        if(currentLine.contains("else")){
            process("else");
            process("{");
            compileStatements();
            process("}");
        }

        decreaseTab();
        //write("/ifStatement"); 
    }

    public void compileWhile(){
        //write("whileStatement");
        increaseTab();
        process("while");
        process("(");
        compileExpression();//Expression
        process(")");
        process("{");
        compileStatements();
        process("}");
        decreaseTab();
        //write("/whileStatement"); 
    }

    public void compileDo(){
       
        process("do");
        
        //subroutineCall();
        compileExpression();

        process(";");
        //Do statements ingorieren ihren return Value.
        //Problem wenn println aufgerufen wird kann nicht pop aufgerufen werden, weil nichts auf dem Stack ist.
        //jasWriter.writePop();
    }

    public void compileReturn(){
       // write("returnStatement");
        
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
            jasWriter.writeArithmetic(operation);
        }
    }

    public void compileTerm(){
        if(currentLine.contains("identifier")){
            String callingSubName;
            String lastLine = removeExtraS(currentLine);
            move();
            if(currentLine.contains(".")){ //subroutineCall
                getOutOfTable(lastLine);//z.b aload_0

                process(".");
                callingSubName = removeExtraS(currentLine);
                process("identifier");

                //Gilt nur für OS Klassen
                if(os.stream().anyMatch(lastLine::contains)){
                    jasWriter.getStatic(lastLine);
                }

                process("(");
                compileExpressionList();
                process(")");

                //Calling the Subroutine
                String fullName = "Main" + "." + callingSubName;
                String typeOfFullName = methodsMap.get(fullName);
                if(os.stream().noneMatch(lastLine::contains)){
                    if(callingSubName.equals("new")){
                        //is a Constructor
                        jasWriter.writeNew(lastLine);
                        jasWriter.writeInvoke("constructor",lastLine, "<init>", callingParameterTypes,"void");
                    }else if(table.existInClassT(lastLine)||table.existInSubT(lastLine)){
                        //is a Method
                        jasWriter.writeInvoke("method",table.typeOf(lastLine), callingSubName, callingParameterTypes,typeOfFullName);

                    }else{
                        //is a function
                        jasWriter.writeInvoke("function",lastLine, callingSubName, callingParameterTypes,typeOfFullName);
                    }

                }else{
                    jasWriter.writeInvokeOS(lastLine , callingSubName);
                }

            }else if(currentLine.contains("[")){
                // writeLastLine(lastLine);
                process("[");
                compileExpression();
                process("]");
            }else if(currentLine.contains("(")){//subroutineCall
                // writeLastLine(lastLine);
                process("(");
                compileExpressionList();
                process(")");
            }else{
                // writeLastLine(lastLine);
                //Test Commit
            }
        }else if(currentLine.contains("(")){ //(expression)
            process("(");
            compileExpression();
            process(")");
        }else if(unaryOP.stream().anyMatch(uo -> currentLine.contains(uo))){
            process(currentLine);
            compileTerm();
        }else if(currentLine.contains("stringConstant")){
            process(currentLine);
        }else if(currentLine.contains("integerConstant")||currentLine.contains("keyword")){
            if(currentLine.contains("this")){
                process(currentLine);
            }else if(currentLine.contains("true")){
                jasWriter.writeBiPush(1);
                process(currentLine);
            }else if(currentLine.contains("false")){
                jasWriter.writeBiPush(0);
                process(currentLine);
            }else{
                jasWriter.writeBiPush(Integer.parseInt(removeExtraS(currentLine)));
                process(currentLine);
            }

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
        //write("expressionList");
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
        //write("/expressionList"); 
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

}