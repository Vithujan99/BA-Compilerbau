package projektvstest;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.*;

public class CheckMethods {

  List<CallingSubSymbol> methods;
  Scanner readFile;
  String currentLine;

  public CheckMethods(){
    methods = new ArrayList<>();
    initOSMethods();
  }
  private void initOSMethods(){
    String className;
    //Für Math
    className = "OS/Math";
    methods.add(new CallingSubSymbol(className + ".new", "void", "constructor", List.of()));
    methods.add(new CallingSubSymbol(className + ".bit", "boolean", "function", List.of("int","int")));
    methods.add(new CallingSubSymbol(className + ".abs", "int", "function", List.of("int")));
    methods.add(new CallingSubSymbol(className + ".multiply", "int", "function", List.of("int","int")));
    methods.add(new CallingSubSymbol(className + ".divide", "int", "function", List.of("int","int")));
    methods.add(new CallingSubSymbol(className + ".sqrt", "int", "function", List.of("int")));
    methods.add(new CallingSubSymbol(className + ".max", "int", "function", List.of("int","int")));
    methods.add(new CallingSubSymbol(className + ".min", "int", "function", List.of("int","int")));
    //Für Memory
    className = "OS/Memory";
    methods.add(new CallingSubSymbol(className + ".new", "void", "constructor", List.of()));
    methods.add(new CallingSubSymbol(className + ".peek", "int", "function", List.of("int")));
    methods.add(new CallingSubSymbol(className + ".poke", "void", "function", List.of("int","int")));
    methods.add(new CallingSubSymbol(className + ".alloc", "int", "function", List.of("int")));
    methods.add(new CallingSubSymbol(className + ".deAlloc", "int", "function", List.of("Array")));
    //Für Screen
    className = "OS/Screen";
    methods.add(new CallingSubSymbol(className + ".new", "void", "constructor", List.of()));
    methods.add(new CallingSubSymbol(className + ".clearScreen", "void", "function", List.of()));
    methods.add(new CallingSubSymbol(className + ".setColor", "void", "function", List.of("boolean")));
    methods.add(new CallingSubSymbol(className + ".drawPixel", "void", "function", List.of("int","int")));
    methods.add(new CallingSubSymbol(className + ".drawLine", "void", "function", List.of("int","int","int","int")));
    methods.add(new CallingSubSymbol(className + ".drawRectangle", "void", "function", List.of("int","int","int","int")));
    methods.add(new CallingSubSymbol(className + ".drawCircle", "void", "function", List.of("int","int","int")));
    //Für Output
    className = "OS/Output";
    methods.add(new CallingSubSymbol(className + ".new", "void", "constructor", List.of()));
    methods.add(new CallingSubSymbol(className + ".moveCursor", "void", "function", List.of("int","int")));
    methods.add(new CallingSubSymbol(className + ".printChar", "void", "function", List.of("char")));
    methods.add(new CallingSubSymbol(className + ".printString", "void", "function", List.of("OS/String")));
    methods.add(new CallingSubSymbol(className + ".printInt", "void", "function", List.of("int")));
    methods.add(new CallingSubSymbol(className + ".println", "void", "function", List.of()));
    methods.add(new CallingSubSymbol(className + ".backSpace", "void", "function", List.of()));
    //Für Keyboard
    className = "OS/Keyboard";
    methods.add(new CallingSubSymbol(className + ".new", "void", "constructor", List.of()));
    methods.add(new CallingSubSymbol(className + ".keyPressed", "char", "function", List.of()));
    methods.add(new CallingSubSymbol(className + ".readChar", "char", "function", List.of()));
    methods.add(new CallingSubSymbol(className + ".readLine", "OS/String", "function", List.of("OS/String")));
    methods.add(new CallingSubSymbol(className + ".readInt", "int", "function", List.of("OS/String")));
    //Für String
    className = "OS/String";
    methods.add(new CallingSubSymbol(className + ".new", "void", "constructor", List.of("int")));
    methods.add(new CallingSubSymbol(className + ".dispose", "void", "method", List.of()));
    methods.add(new CallingSubSymbol(className + ".length", "int", "method", List.of()));
    methods.add(new CallingSubSymbol(className + ".charAt", "char", "method", List.of("int")));
    methods.add(new CallingSubSymbol(className + ".setCharAt", "void", "method", List.of("int","char")));
    methods.add(new CallingSubSymbol(className + ".appendChar", "OS/String", "method", List.of("char")));
    methods.add(new CallingSubSymbol(className + ".eraseLastChar", "void", "method", List.of()));
    methods.add(new CallingSubSymbol(className + ".intValue", "int", "method", List.of()));
    methods.add(new CallingSubSymbol(className + ".setInt", "void", "method", List.of("int")));
    methods.add(new CallingSubSymbol(className + ".setIntCalc", "void", "method", List.of("int")));
    methods.add(new CallingSubSymbol(className + ".newLine", "char", "function", List.of()));
    methods.add(new CallingSubSymbol(className + ".backSpace", "char", "function", List.of()));
    methods.add(new CallingSubSymbol(className + ".doubleQuote", "char", "function", List.of()));
    //Für Array
    className = "OS/Array";
    methods.add(new CallingSubSymbol(className + ".new", "void", "constructor", List.of("int")));
    methods.add(new CallingSubSymbol(className + ".setBaseAddress", "OS/Array", "function", List.of("int")));
    methods.add(new CallingSubSymbol(className + ".get", "int", "method", List.of("int")));
    methods.add(new CallingSubSymbol(className + ".set", "void", "method", List.of("int","int")));
    methods.add(new CallingSubSymbol(className + ".dispose", "void", "method", List.of()));
    //Für Sys
    className = "OS/Sys";
    methods.add(new CallingSubSymbol(className + ".new", "void", "constructor", List.of()));
    methods.add(new CallingSubSymbol(className + ".halt", "void", "function", List.of()));
    methods.add(new CallingSubSymbol(className + ".wait", "void", "function", List.of("int")));
    methods.add(new CallingSubSymbol(className + ".error", "void", "function", List.of("int")));

  }
  public void setReadFile(String input){
    try{
      readFile = new Scanner(new File(input));
    }catch(FileNotFoundException e) {
      System.out.println("An error occurred.");
      e.printStackTrace();
    }
  }
  private String removeExtraS(String l){
    return l.substring(l.indexOf(">") + 1, l.indexOf("</")).trim();
  }
  private void move(){
    if(readFile.hasNext()){
      currentLine = readFile.nextLine();
    }
  }
  public void check(){
    String kind;
    String type;
    String subName;
    String fullSubName;
    move();
    move();
    move();
    String className = removeExtraS(currentLine);
    while (readFile.hasNext()){
      if(currentLine.contains("constructor")||currentLine.contains("function")||currentLine.contains("method")){
        kind = removeExtraS(currentLine);
        move();
        type = kind.equals("constructor") ? "void" :removeExtraS(currentLine);
        move();
        subName = removeExtraS(currentLine);
        fullSubName = className + "." + subName;
        move();
        List<String> paramTypes = new ArrayList<>();
        process("(");
        if (!currentLine.contains(")")){
          paramTypes.add(removeExtraS(currentLine));
          process(currentLine);
          process("identifier");
        }
        while(!currentLine.contains(")")){
          process(",");
          paramTypes.add(removeExtraS(currentLine));
          process(currentLine);
          process("identifier");
        }
        process(")");
        methods.add(new CallingSubSymbol(fullSubName, type, kind, paramTypes));
      }
      move();
    }
    readFile.close();
  }

  private CallingSubSymbol findSymbol(String name){
    return methods.stream().filter(m -> m.callingName.equals(name)).findFirst().orElseThrow();
  }
  public String getMethodKind(String name){
    CallingSubSymbol s = findSymbol(name);
    return s.callingKind;
  }
  public String getMethodType(String name){
    CallingSubSymbol s = findSymbol(name);
    return s.callingType;
  }
  public List<String> getMethodParamTypes(String name){
    CallingSubSymbol s = findSymbol(name);
    return s.callingParamTypes;
  }

  private void process(String str){
    if(!currentLine.contains(str)){
      System.out.println("Code is Wrong in CheckMethod");
    }
    move();
  }
}
