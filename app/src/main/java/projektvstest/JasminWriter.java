package projektvstest;
import java.io.FileWriter;
import java.io.IOException;

public class JasminWriter {
    FileWriter writeFile;
    String out;
    int jumpCounter;
    String tab = "";

    public JasminWriter(String output){
        String fileName =  output.substring(0, output.indexOf(".")) + ".j";
        jumpCounter = 0;
        try{
            writeFile = new FileWriter(fileName);
        }catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
    }

    private void write(String str){
        try{
            writeFile.write(str + "\n");
        }catch (IOException e){
            System.out.println("An error occurred");
            e.printStackTrace();
        }
    }
    //soll "java/lang/String als type mitgegeben werden oder String
    public static String getJasminType(String type) {
        return switch (type) {
            case "int" -> "I";
            case "boolean" -> "Z";
            case "char" -> "C";
            case "void" -> "V";
            case "String" -> "Ljava/lang/String;";
            default -> "L" + type + ";";
        };
    }

    //when kind is not static an empty String will be given to Function
    public void writeFieldVar(String kind, String name, String type){
        String t = getJasminType(type);
        if(kind.equals("static")){
            out = ".field static " + name + " " + t;
        }else{
            out = ".field " + name + " " + t;
        }
        write(out);
    }

    public void writeClass(String className) {
        write(".class public " + className + "\n" +
                ".super java/lang/Object");
    }

    //muss geändert werden??
    public void writeFunction(String subroutineKind, String subroutineName, String parameterType, String returnType){
        switch (subroutineKind) {
            case "method", "constructor" -> out = ".method public ";
            case "function" -> out = ".method public static ";
            default -> out = "";
        }
        out = out + subroutineName +"("+parameterType+")"+getJasminType(returnType);
        write(out);
    }
    public void writeLimit(Integer varCounter) {
        var stackCount = 10;
        while(varCounter >= stackCount){
            stackCount+=10;
        }
        write(".limit stack " + stackCount); //Wird später gelöst
        write(".limit locals " + varCounter);
    }

    public void writeNew(String className){
        write("new "+ className + "\ndup");
    }

//writepush unterteilt------------------------------------------
    //bipush nur für Integer
    //noch eins für String ldc <Hallo World!>
    public void writeBiPush(int number) {
        write("bipush " + number);
    }
    public void writeLoad(Integer index, String type){
        if (type.equals("int")||type.equals("boolean")||type.equals("char")){
            out = "iload " + index;
        }else {
            out = "aload " + index;
        }
        write(out);
    }
    public void writeGet(String kind, String className, String varName, String type){
        //t hier bestimmen oder lieber auserhalb und ausprobieren ob V und A stimmen
        String t = getJasminType(type);
        out ="get" + kind + " " + className + "." + varName + " " + t;
        
        write(out);
    }

    //Nur für System.out von Jack!!!
    public void getStatic(String lastLine) {
        //Funktioniert das mit da oben?? NEIN? Weil OS Output. benutzt wird
        if(lastLine.equals("Output")){
            write("getstatic java/lang/System.out Ljava/io/PrintStream;");
        }
    }

//writepop unterteilt----------------------------------------
    public void writePop(){
        write("pop");
    }
    public void writeStore(Integer index, String type){
        if (type.equals("int")||type.equals("boolean")||type.equals("char")){
            out = "istore " + index;
        }else {
            out = "astore " + index;
        }
        write(out);
    }

    public void writePut(String kind, String className, String varName, String type){
        //t hier bestimmen oder lieber auserhalb und ausprobieren ob V und Z stimmt
        String t = getJasminType(type);
        out ="put" + kind + " " + className + "." + varName + " " + t;
        
        write(out);
    }

    //Jacks call Function;
    // Für parameterType wird kein getJasminType aufgerufen weil es im Compilation Engine aufgerufen wird.
    public void writeInvoke(String subroutineKind, String className, String subroutineName, String parameterType, String returnType){
        switch (subroutineKind) {
            case "method" -> out = "invokevirtual ";
            case "function" -> out = "invokestatic ";
            case "constructor" -> out = "invokespecial ";
            default -> out = "";
        }
        out = out  + className + "." + subroutineName +"("+parameterType+")" + getJasminType(returnType);
        write(out);
    }

    //Hier auch die frage lieber mit writeInoke kombinieren und dammit die arbeit Engine überlassen?
    public void writeInvokeOS(String className, String subroutineName) {
        String type="";
        if(className.equals("Output")){
            if(subroutineName.equals("printInt")){
                type = "I";
            }else if(subroutineName.equals("printString")){
                type = "Ljava/lang/String;";

            }
            write("invokevirtual java/io/PrintStream/println("+type+")V");
        }
    }

    public void writeArithmetic(String command){
        //Später für duble!!
        String type = "Integer";
        switch (command) {
            case "+":
                out = "iadd";
                break;
            case "-":
                out = "isub";
                break;
            case "*":
                out = "imul";
                break;
            case "/":
                out = "idiv";
                break;
            case "&amp;":
                out = "iand";
                break;
            case "|":
                out = "ior";
                break;
    //Muss geschaut werden wie es mit den Schleifen funktioniert.
    //jump Counter wird in dieser Klasse vearbeitet!!!
            case "&lt;":
                out = "if_icmpge jump1"+ "\n"+ writeJumpArithmetic();
                break;
            case "&gt;":
                out = "if_icmple jump1"+ "\n"+ writeJumpArithmetic();
                break;
            case "=":
                out = "if_icmpne jump1"+ "\n"+ writeJumpArithmetic();
                break;
            case "neg":
                out = "ineg";//???
                break;
            case "~":
                out = "ifne jump1"+ "\n" + writeJumpArithmetic();//???
                break;       
            default:
                break;
        }
        write(out);
    }

    private String writeJumpArithmetic(){
        String out = "bipush 1" + "\n"+
        "goto jump"+(jumpCounter+1)+ "\n"+
        "jump"+(jumpCounter)+":" + "\n"+
        "iconst_0" + "\n"+
        "jump"+(jumpCounter+1)+":" + "\n";
        jumpCounter += 2;
        return out;
    }

    public void writeLabel(String label, int counter){
        out = label + counter +":";
        write(out);
    }

    public void writeGoto(String label, int counter){
        out = "goto " + label + counter;
        write(out);
    }

    public void writeIf(String label, int counter){
        out = "ifeq " + label + counter;
        write(out);
    }

    public void writeReturn(String sReturnType) {
        if(sReturnType.equals("void")){
            write("return");
        }else if(sReturnType.equals("int")||sReturnType.equals("boolean")){
            write("ireturn");
        }else{
            write("areturn");
        }
    }

    public void writeEndSubroutine(){
        write(".end method");
    }
    public void fileClose(){
        try{
            writeFile.close();
        }catch(IOException e){
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
    }

    //Wird vieleicht benutzt
    public void increaseTab(){
        tab += "  ";
    }

    public void decreaseTab(){
        tab = tab.substring(0, tab.length()-2);
    }
}
