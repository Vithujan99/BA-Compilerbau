package projektvstest;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class SymbolTableTest {
  SymbolTable table;

  @BeforeEach void defineTable(){
     table = new SymbolTable();
     table.define("x","int","field");
     table.define("pointCount","int","static");
     table.define("this","Point","argument");
     table.define("dx","int","local");
     table.define("ds","String","local");
  }
  @Test void testDefine() {
    assertEquals(table.classTable.size(),2);
    assertEquals(table.subTable.size(),3);
  }
  @Test void testReset() {
    table.reset();
    assertEquals(table.subTable.size(),0);
  }
  @Test void testVarCount() {
    assertEquals(table.varCount(),3);
  }
  @Test void testKindOf() {
    assertEquals(table.kindOf("x"),"field");
    assertEquals(table.kindOf("pointCount"),"static");
  }
  @Test void testTypeOf() {
    assertEquals(table.typeOf("x"),"int");
    assertEquals(table.typeOf("pointCount"),"int");
    assertEquals(table.typeOf("this"),"Point");
    assertEquals(table.typeOf("ds"),"String");
  }
  @Test void testIndexOf() {
    assertEquals(table.indexOf("this"),0);
    assertEquals(table.indexOf("ds"),2);
  }
  @Test void testExistInSubT() {
    assertEquals(true, table.existInSubT("dx"));
    assertEquals(false, table.existInSubT("x"));
  }
  @Test void testExistInClassT() {
    assertEquals(false, table.existInClassT("dx"));
    assertEquals(true, table.existInClassT("x"));
  }
}
