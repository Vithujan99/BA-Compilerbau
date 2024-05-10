package projektvstest;
import java.util.ArrayList;
import java.util.List;

public class SymbolTable {
    Integer varIndex;
    List<ClassSymbol> classTable;
    List<SubSymbol> subTable;
    
    public SymbolTable(){
        varIndex = 0;
        classTable = new ArrayList<>();
        subTable = new ArrayList<>();
    }

    public void reset(){
        varIndex = 0;
        subTable.clear();
    }
    //Klassen Vaiabeln benötigen kein Index und Subroutine Variabeln benötigen kein Kind.
    //2 Tabellen erstellen mit verschieden Symbol Klassen????? JA weniger code in Engine und dies Klasse kümmert sich um ihre Tabellen
    public void define(String name, String type, String kind){
        ClassSymbol cS;
        SubSymbol sS;
        switch (kind) {
            case "static", "field" -> {
                //Vielecht bracuht es doch ein Index um bei init limit locals anzugebn??
                //NEIN limit locals bezieht sich nur auf die argumente und in der suroutine erstellte lokale Variabeln!!!!
                cS = new ClassSymbol(name, type, kind);
                classTable.add(cS);
            }
            case "var" -> {
                sS = new SubSymbol(name, type, "var", varIndex++);
                subTable.add(sS);
            }
            default -> {
                cS = null;
                sS = null;
            }
        }

    }
    //Wird benutzt um limit zu berechnen!!!
    //Deshalb nur subroutine Table.
    //Constructor und methods braucht ein platz mehr um sich selber aufzurufen.
    public Integer varCount(){
        long count = subTable.size();
        return (int) count;
    }

    //Wird benötigt für Globale variabeln und static variables deshalb nur classTable
    public String kindOf(String name){//??
        ClassSymbol sy = classTable.stream().filter(s -> s.name.equals(name)).findFirst().orElse(null);
        if(sy == null){
            return "none";
        }else{
            return sy.kind;
        }
    }

    //Wird benötigt für solche aufrufe in Jasmin [putfield #7 <TestM.x : I>] oder iload_0
    //Muss beide tabellen durchgehen.
    public String typeOf(String name){
        if(subTable.stream().anyMatch(s->s.name.equals(name))){
            SubSymbol sy = subTable.stream().filter(s -> s.name.equals(name)).findFirst().orElseThrow();
            return sy.type;
        }else{
            ClassSymbol sy = classTable.stream().filter(s -> s.name.equals(name)).findFirst().orElseThrow();
            return sy.type;
        }
    }

    //Nötig für Sumbroutine variabeln iload_0
    public Integer indexOf(String name){
        SubSymbol sy = subTable.stream().filter(s -> s.name.equals(name)).findFirst().orElseThrow();
        return sy.index;
    }


    public Boolean existInSubT(String name){
         return subTable.stream().anyMatch(s -> s.name.equals(name));
    }

    public Boolean existInClassT(String name){
        return classTable.stream().anyMatch(s -> s.name.equals(name));
    }
}
