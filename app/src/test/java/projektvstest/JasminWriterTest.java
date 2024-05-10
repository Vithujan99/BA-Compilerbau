package projektvstest;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import static org.junit.jupiter.api.Assertions.*;

public class JasminWriterTest {
  public static String removeWhitespace(String input) {
    // Remove all whitespace characters (space, tab, newline)
    return input.replaceAll("\\s", "");
  }
  @Test void testWriteFieldVar() throws IOException {
    JasminWriter writer = new JasminWriter("JackFiles\\AClassTest\\JasminWriterTest\\TestWriteFieldVar.jack");
    writer.writeFieldVar("field","x","int");
    assertEquals(".field x I",writer.out);
    writer.writeFieldVar("static","d","int");
    assertEquals(".field static d I",writer.out);
    writer.writeFieldVar("field","s","String");
    assertEquals(".field s Ljava/lang/String;",writer.out);
    writer.writeFieldVar("field","b","boolean");
    assertEquals(".field b Z",writer.out);
    writer.fileClose();
  }

  @Test void testWriteInvoke(){
    JasminWriter writer = new JasminWriter("JackFiles\\AClassTest\\JasminWriterTest\\TestWriteInvoke.jack");
    writer.writeInvoke("method", "TestM","add","I","int");
    assertEquals("invokevirtual TestM.add(I)I",writer.out);
    writer.writeInvoke("function", "TestM","sadd","I","int");
    assertEquals("invokestatic TestM.sadd(I)I",writer.out);
    writer.writeInvoke("constructor", "TestM","<init>","II","void");
    assertEquals("invokespecial TestM.<init>(II)V",writer.out);
    writer.fileClose();
  }
  @Test void testWriteFuntion(){
    JasminWriter writer = new JasminWriter("JackFiles\\AClassTest\\JasminWriterTest\\TestWriteFunction.jack");
    writer.writeFunction("function", "main", "[Ljava/lang/String;","void");
    assertEquals(writer.out,".method public static main([Ljava/lang/String;)V");
    writer.writeFunction("constructor","<init>","II","void");
    assertEquals(writer.out,".method public <init>(II)V");
    writer.writeFunction("method", "add","I","int");
    assertEquals(writer.out,".method public add(I)I");
    writer.fileClose();
  }
  @Test void testWriteReturn() throws IOException {
    JasminWriter writer = new JasminWriter("JackFiles\\AClassTest\\JasminWriterTest\\TestWriteReturn.jack");
    writer.writeReturn("int");
    writer.writeReturn("boolean");
    writer.writeReturn("String");
    writer.writeReturn("RKlasse");
    writer.writeReturn("void");
    writer.fileClose();
    Path generatedJasminFilePath = Paths.get("JackFiles\\AClassTest\\JasminWriterTest\\TestWriteReturn.j");
    String generatedJasminContent = Files.readString(generatedJasminFilePath);
    assertEquals("""
            ireturn
            ireturn
            areturn
            areturn
            return
            """,generatedJasminContent);
  }
}
