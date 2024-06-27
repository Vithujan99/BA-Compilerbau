package projektvstest;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

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
    private String getJasminType(String type) {
        return switch (type) {
            case "int" -> "I";
            case "boolean" -> "Z";
            case "char" -> "C";
            case "void" -> "V";
            case  "[Ljava/lang/String;" -> "[Ljava/lang/String;";
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
    public void writeFunction(String subroutineKind, String subroutineName, List<String> parameterType, String returnType){
        StringBuilder pT = new StringBuilder();
        if(parameterType == null || parameterType.size() == 0){
            pT.append("");
        }else{
            for (String t : parameterType){
                pT.append(getJasminType(t));
            }
        }
        switch (subroutineKind) {
            case "method", "constructor" -> out = ".method public ";
            case "function" -> out = ".method public static ";
            default -> out = "";
        }
        out = out + subroutineName +"("+pT+")"+getJasminType(returnType);
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

//Für die Erstellung eines Arrays anstatt im OS
    public void writeNewArray(){
        write("newarray int");
    }
//writepush unterteilt------------------------------------------
    //bipush nur für Integer
    public void writeNumberPush(int number) {
        if(number == -1){
            write("iconst_m1");
        }else{
            String push;
            if(number <= 5 && number >=0){
                push = "iconst_";
            }else if(number <= 127 && number >=-127){
                push = "bipush ";
            }else if(number <= 32767 && number >=-32767){
                push = "sipush ";
            }else{
                push = "ldc ";
            }
            write(push + number);
        }

    }
    public void writeAconst(String s){
        write("aconst_" + s);
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
        String t = getJasminType(type);
        if(kind.equals("field")){
            writeLoad(0,"object");
        }
        out ="get" + kind + " " + className + "." + varName + " " + t;
        
        write(out);
    }
        //nur für array
    public void writeLoadArray(){
        write("iaload");
    }

//writepop von Jack unterteilt----------------------------------------
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
        //nur für array
    public void writeStoreArray(){
        write("iastore");
    }
//Jacks call Function--------------------------------------
    // Für parameterType wird kein getJasminType aufgerufen weil es im Compilation Engine aufgerufen wird.
    public void writeInvoke(String subroutineKind, String className, String subroutineName, List<String> parameterType, String returnType){
        StringBuilder pT = new StringBuilder();
        if(parameterType == null || parameterType.size() == 0){
            pT.append("");
        }else{
            for (String t : parameterType){
                pT.append(getJasminType(t));
            }
        }
        switch (subroutineKind) {
            case "method" -> out = "invokevirtual ";
            case "function" -> out = "invokestatic ";
            case "constructor" -> out = "invokespecial ";
            default -> out = "";
        }
        out = out  + className + "." + subroutineName +"("+pT+")" + getJasminType(returnType);
        write(out);
    }

    public void writeArithmetic(String command, String arithmeticType){
        String type;
        if(arithmeticType.equals("int")||arithmeticType.equals("boolean")||arithmeticType.equals("char")){
            type = "i";
        }else{
            type = "a";
        }
        switch (command) {
            case "+" -> out = "iadd";
            case "-" -> out = "isub";
            case "*" -> out = "imul";
            case "/" -> out = "idiv";
            case "&amp;" -> out = "iand";
            case "|" -> out = "ior";

            //Muss geschaut werden wie es mit den Schleifen funktioniert.
            //jump Counter wird in dieser Klasse vearbeitet!!!
            case "&lt;" -> out = "if_icmpge " + "jump" + (jumpCounter) + "\n" + writeJumpArithmetic();
            case "&gt;" -> out = "if_icmple " + "jump" + (jumpCounter) + "\n" + writeJumpArithmetic();
            case "=" -> out = "if_" + type + "cmpne " + "jump" + (jumpCounter) + "\n" + writeJumpArithmetic();
            case "neg" -> out = "ineg";//???
            case "~" -> out = "ifne " + "jump" + (jumpCounter) + "\n" + writeJumpArithmetic();//???
            default -> {
            }
        }
        write(out);
    }

    private String writeJumpArithmetic(){
        String out = "iconst_1" + "\n"+
        "goto jump"+(jumpCounter+1)+ "\n"+
        "jump"+(jumpCounter)+":" + "\n"+
        "iconst_0" + "\n"+
        "jump"+(jumpCounter+1)+":";
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
        out = "ifeq " + label + counter; //ifeq succeeds if and only if value = 0
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
