package projektvstest;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import static org.junit.jupiter.api.Assertions.*;
public class JackAnalyzerTest {
  public static String removeWhitespace(String input) {
    // Remove all whitespace characters (space, tab, newline)
    return input.replaceAll("\\s", "");
  }
  @Test void testSeven() throws IOException {
    String[] args = {"JackFiles\\Seven"};
    JackAnalyzer.main(args);
    Path expectedJasminFilePath = Paths.get("ExpectedJasminCode\\Seven\\Main.j");

    Path generatedJasminFilePath = Paths.get("JackFiles\\Seven\\Main.j");
    assertTrue(Files.exists(generatedJasminFilePath), "Es wurde kein Jasmin Datei erzeugt.");

    String generatedJasminContent = removeWhitespace(Files.readString(generatedJasminFilePath));
    String expectedJasminContent = removeWhitespace(Files.readString(expectedJasminFilePath));
    assertEquals(expectedJasminContent, generatedJasminContent, "Generierte Jasmin-Code(Seven) stimmt nicht mit dem erwartetem Code überein.");
  }

  @Test void testFieldVar() throws IOException {
    String[] args = {"JackFiles\\FieldVar"};
    JackAnalyzer.main(args);

    Path generatedJasminFilePath = Paths.get("JackFiles\\FieldVar\\Main.j");

    String generatedJasminContent = Files.readString(generatedJasminFilePath);

    assert(generatedJasminContent.contains(".field x I\n.field static y I"));
  }
  @Test void testCompileParamList() throws IOException {
    String[] args = {"JackFiles\\CompileSubroutine"};
    JackAnalyzer.main(args);

    Path generatedJasminFilePath = Paths.get("JackFiles\\CompileSubroutine\\Main.j");
    String generatedJasminContent = Files.readString(generatedJasminFilePath);

    assert(generatedJasminContent.contains(".method public static main([Ljava/lang/String;)V"));
    assert(generatedJasminContent.contains(".method public <init>(II)V"));
    assert(generatedJasminContent.contains("""        
            aload 0
            invokespecial java/lang/Object.<init>()V"""));
    assert(generatedJasminContent.contains(".method public add(I)I"));
    assert(generatedJasminContent.contains(".method public static sadd(I)"));
  }

  @Test void testLimit() throws IOException {
    String[] args = {"JackFiles\\Limit"};
    JackAnalyzer.main(args);
    Path expectedJasminFilePath = Paths.get("ExpectedJasminCode\\Limit\\Main.j");
    Path generatedJasminFilePath = Paths.get("JackFiles\\Limit\\Main.j");
    String expectedJasminContent = removeWhitespace(Files.readString(expectedJasminFilePath));
    String generatedJasminContent = removeWhitespace(Files.readString(generatedJasminFilePath));

    assertEquals(expectedJasminContent, generatedJasminContent, "Generierte Jasmin-Code(Limit) stimmt nicht mit dem erwartetem Code überein.");
  }
  @Test void testLetStatement() throws IOException {
    String[] args = {"JackFiles\\StatementTest\\LetStatement"};
    JackAnalyzer.main(args);
    Path generatedJasminFilePath = Paths.get("JackFiles\\StatementTest\\LetStatement\\Main.j");
    String generatedJasminContent = Files.readString(generatedJasminFilePath);

    assert(generatedJasminContent.contains("""
            bipush 5
            istore 1
            """));
  }

  //--------------Compile Term Tests-----------------
  @Test void callingSubTest() throws IOException {
    String[] args = {"JackFiles\\TermTest\\callingSubTest"};
    JackAnalyzer.main(args);
    Path generatedJasminFilePath = Paths.get("JackFiles\\TermTest\\callingSubTest\\Main.j");
    Path expectedJasminFilePath = Paths.get("ExpectedJasminCode\\TermTest\\callingSubTest\\Main.j");
    String generatedJasminContent = removeWhitespace(Files.readString(generatedJasminFilePath));
    String expectedJasminContent = removeWhitespace(Files.readString(expectedJasminFilePath));
    assertEquals(expectedJasminContent, generatedJasminContent, "Generierte Jasmin-Code(CallingSubTest) stimmt nicht mit dem erwartetem Code überein.");

  }
  @Test void callingInClassTest() throws IOException {
    String[] args = {"JackFiles\\TermTest\\CallingInClass"};
    JackAnalyzer.main(args);
    Path generatedJasminFilePath = Paths.get("JackFiles\\TermTest\\CallingInClass\\Main.j");
    Path expectedJasminFilePath = Paths.get("ExpectedJasminCode\\TermTest\\CallingInClass\\Main.j");
    String generatedJasminContent = removeWhitespace(Files.readString(generatedJasminFilePath));
    String expectedJasminContent = removeWhitespace(Files.readString(expectedJasminFilePath));
    assertEquals(expectedJasminContent, generatedJasminContent, "Generierte Jasmin-Code(CallingInClass) stimmt nicht mit dem erwartetem Code überein.");
  }
  @Test void unaryOpTest() throws IOException {
    String[] args = {"JackFiles\\TermTest\\UnaryOp"};
    JackAnalyzer.main(args);
    Path generatedJasminFilePath = Paths.get("JackFiles\\TermTest\\UnaryOp\\Main.j");
    Path expectedJasminFilePath = Paths.get("ExpectedJasminCode\\TermTest\\UnaryOp\\Main.j");
    String generatedJasminContent = removeWhitespace(Files.readString(generatedJasminFilePath));
    String expectedJasminContent = removeWhitespace(Files.readString(expectedJasminFilePath));
    assertEquals(expectedJasminContent, generatedJasminContent, "Generierte Jasmin-Code(UnaryOp) stimmt nicht mit dem erwartetem Code überein.");
  }

  //--------------Statement Tests-----------------
  @Test void doStatementTest() throws IOException {
    String[] args = {"JackFiles\\StatementTest\\DoS"};
    JackAnalyzer.main(args);
    Path generatedJasminFilePath = Paths.get("JackFiles\\StatementTest\\DoS\\Main.j");
    Path expectedJasminFilePath = Paths.get("ExpectedJasminCode\\StatementTest\\DoS\\Main.j");
    String generatedJasminContent = removeWhitespace(Files.readString(generatedJasminFilePath));
    String expectedJasminContent = removeWhitespace(Files.readString(expectedJasminFilePath));
    assertEquals(expectedJasminContent, generatedJasminContent, "Generierte Jasmin-Code(Do Statement) stimmt nicht mit dem erwartetem Code überein.");
  }
  @Test void ifStatementTest() throws IOException {
    String[] args = {"JackFiles\\StatementTest\\IfS"};
    JackAnalyzer.main(args);
    Path generatedJasminFilePath = Paths.get("JackFiles\\StatementTest\\IfS\\Main.j");
    Path expectedJasminFilePath = Paths.get("ExpectedJasminCode\\StatementTest\\IfS\\Main.j");
    String generatedJasminContent = removeWhitespace(Files.readString(generatedJasminFilePath));
    String expectedJasminContent = removeWhitespace(Files.readString(expectedJasminFilePath));
    assertEquals(expectedJasminContent, generatedJasminContent, "Generierte Jasmin-Code(If Statement) stimmt nicht mit dem erwartetem Code überein.");
  }
  @Test void whileStatementTest() throws IOException {
    String[] args = {"JackFiles\\StatementTest\\WhileS"};
    JackAnalyzer.main(args);
    Path generatedJasminFilePath = Paths.get("JackFiles\\StatementTest\\WhileS\\Main.j");
    Path expectedJasminFilePath = Paths.get("ExpectedJasminCode\\StatementTest\\WhileS\\Main.j");
    String generatedJasminContent = removeWhitespace(Files.readString(generatedJasminFilePath));
    String expectedJasminContent = removeWhitespace(Files.readString(expectedJasminFilePath));
    assertEquals(expectedJasminContent, generatedJasminContent, "Generierte Jasmin-Code(While Statement) stimmt nicht mit dem erwartetem Code überein.");
  }
}
