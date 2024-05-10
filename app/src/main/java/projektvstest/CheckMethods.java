package projektvstest;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class CheckMethods {
  Map<String,String> methodMap;
  Scanner readFile;
  String currentLine;

  public CheckMethods(String input){
    try{
      readFile = new Scanner(new File(input));
    }catch(FileNotFoundException e) {
      System.out.println("An error occurred.");
      e.printStackTrace();
    }
    methodMap = new HashMap<>();
  }
  private String removeExtraS(String l){
    return l.substring(l.indexOf(">") + 1, l.indexOf("</")).trim();
  }
  private void move(){
    if(readFile.hasNext()){
      currentLine = readFile.nextLine();
    }
  }
  public Map<String,String> check(){
    String type;
    String subRName;
    String fullSubRName;
    move();
    move();
    move();
    String className = removeExtraS(currentLine);
    while (readFile.hasNext()){
      if(currentLine.contains("constructor")||currentLine.contains("function")||currentLine.contains("method")){
        move();
        type = removeExtraS(currentLine);
        move();
        subRName = removeExtraS(currentLine);
        fullSubRName = className + "." + subRName;
        methodMap.put(fullSubRName,type);
      }
      move();
    }
    readFile.close();
    return methodMap;
  }
}
