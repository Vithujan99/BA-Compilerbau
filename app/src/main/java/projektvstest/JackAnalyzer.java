package projektvstest;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;

public class JackAnalyzer{
    
    public static void main(String[] args){
        String fileName = args[0];
        CheckMethods cM = new CheckMethods();
        if(fileName.endsWith(".jack")){
            translateFile(fileName);
        }else{
            File dir = new File(fileName);
            File[] listofFiles = dir.listFiles();
            for (File listofFile : listofFiles) {
                if (listofFile.isFile() & listofFile.getName().endsWith(".jack")) {
                    translateFile(listofFile.getPath());
                    String writeFileName =  listofFile.getPath().substring(0, listofFile.getPath().indexOf(".")) + "MyT.xml";
                    cM.setReadFile(writeFileName);
                    cM.check();
                }
            }
            //Compilation
            for (File listofFile : listofFiles) {
                if (listofFile.isFile() & listofFile.getName().endsWith(".jack")) {
                    String writeFileName =  listofFile.getPath().substring(0, listofFile.getPath().indexOf(".")) + "MyT.xml";
                    CompilationEngine engine = new CompilationEngine(writeFileName, listofFile.getPath(), cM);
                    engine.compileClass();
                }
            }
        }
    }

    public static void translateFile(String fileName){
        String writeFileName =  fileName.substring(0, fileName.indexOf(".")) + "MyT.xml";
        try{
            FileWriter writeFile = new FileWriter(writeFileName);
            JackTokenizer tokenizer = new JackTokenizer(fileName);
            writeFile.write("<tokens>\n");
            while(tokenizer.hasMoreTokens()){
                tokenizer.advance();
                if(!tokenizer.currentWord.isEmpty()){
                    TType tType = tokenizer.tokenType();
                    String tTypeS = tType.toString().toLowerCase();
                    String r;
                    switch(tType){
                        case KEYWORD:
                            r = tokenizer.keyWord();
                            writeFile.write("<"+tTypeS+"> " + r +" </"+tTypeS+">\n");
                            break;
                        case SYMBOL:
                            r = tokenizer.symbol();
                            writeFile.write("<"+tTypeS+"> " + r +" </"+tTypeS+">\n");
                            break;
                        case INT_CONST:
                            r = tokenizer.intVal();
                            writeFile.write("<integerConstant> " + r +" </integerConstant>\n");
                            break;
                        case STRING_CONST:
                            r  = tokenizer.stringVal();
                            writeFile.write("<stringConstant> " + r +" </stringConstant>\n");
                            break;
                        case IDENTIFIER:
                            r = tokenizer.identifier();
                            writeFile.write("<"+tTypeS+"> " + r +" </"+tTypeS+">\n");
                            break;
                    }
                }
            }
            writeFile.write("</tokens>");
            writeFile.close();
        }catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
        
    }

}