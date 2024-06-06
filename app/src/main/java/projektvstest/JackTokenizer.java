package projektvstest;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class JackTokenizer{

    List<String> symbol = List.of("{","}","(",")","[","]",".",",",";","+","-","*","/","&","|","<",">","=","~");
    Scanner tokenFile;
    String currentLine;
    List<String> currentWords;
    String currentWord;
    boolean multiComment;
    boolean isString;
    int posistion;

    public JackTokenizer(String fileName){
        posistion = 2;
        multiComment = false;
        isString = false;
        currentWords = List.of("Hallo","Schüss");
        try{
            tokenFile = new Scanner(new File(fileName)); 
        }catch(FileNotFoundException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }  
    }

    public boolean hasMoreTokens(){
        return tokenFile.hasNextLine();
    }

    public void advance(){
        if(!hasMoreTokens()){
            return;
        }
        //schaut ob wir am ende unseres aktuellen Zeile sind
        if(posistion >= currentWords.size()){
            currentLine = tokenFile.nextLine().trim();
            if(!checkComment()){
                return;
            }
            currentLine = currentLine.split("//")[0];
            currentLine = currentLine.replace("\t"," ");
            if(currentLine.length() >= 1){
                currentWords = tokenizeLine(currentLine);
            }
            posistion = 0;
        }
        //Tests if String
        if(currentWords.get(posistion).startsWith("\"")){
            currentWord = currentWords.get(posistion) + " ";
            while(!currentWords.get(posistion).endsWith("\"")){
                posistion++;
                currentWord = currentWord + currentWords.get(posistion) + " ";
            }
            posistion++;
        }else{
            currentWord = currentWords.get(posistion++);
        }
    }

    private List<String> tokenizeLine(String line) {
        List<String> tokens = new ArrayList<>();
        StringBuilder token = new StringBuilder();
        boolean inString = false;
        for (char c : line.toCharArray()) {
            if (c == '\"') {
                if (inString) {
                    token.append(c);
                    tokens.add(token.toString());
                    token.setLength(0);
                } else {
                    if (token.length() > 0) {
                        tokens.add(token.toString());
                        token.setLength(0);
                    }
                    token.append(c);
                }
                inString = !inString;
            } else if (inString) {
                token.append(c);
            } else if (symbol.contains(String.valueOf(c)) || c == ' ') {
                if (token.length() > 0) {
                    tokens.add(token.toString());
                    token.setLength(0);
                }
                if (symbol.contains(String.valueOf(c))) {
                    tokens.add(String.valueOf(c));
                }
            } else {
                token.append(c);
            }
        }
        if (token.length() > 0) {
            tokens.add(token.toString());
        }
        return tokens;
    }

    public boolean checkComment(){
        while(currentLine.equals("")||currentLine.startsWith("//")
        ||currentLine.startsWith("/**")||currentLine.startsWith("*/")
        ||currentLine.endsWith("*/")||currentLine.startsWith("*")){
            if(!hasMoreTokens()){
                return false;
            }
            currentLine = tokenFile.nextLine().trim();
        }
        return true;
    }

    public TType tokenType(){
        for(KWord kWord : KWord.values()){
            if(currentWord.equalsIgnoreCase(kWord.toString())) return TType.KEYWORD;
        }
        if(symbol.stream().anyMatch(s->s.equals(currentWord))) return TType.SYMBOL;
        if(currentWord.matches("\\d+")) return TType.INT_CONST;
        if(currentWord.startsWith("\"")) return TType.STRING_CONST;
        return TType.IDENTIFIER;
    }

    public String keyWord(){
        return currentWord;
    }

    public String symbol(){
        if(currentWord.equals("<")) return "&lt;";
        if(currentWord.equals(">")) return "&gt;";
        if(currentWord.equals("\"")) return "&quot;";
        if(currentWord.equals("&")) return "&amp;";
        return currentWord;
    }

    public String intVal(){
        return currentWord;
    }

    public String stringVal(){
        return currentWord.replaceAll("\"","");
    }

    public String identifier(){
        return currentWord;
    }
}
