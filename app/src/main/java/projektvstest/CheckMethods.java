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
        while (!currentLine.contains(")")){
            if(currentLine.contains("keyword")) {
              paramTypes.add(removeExtraS(currentLine));
            }
            move();
        }
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
}
