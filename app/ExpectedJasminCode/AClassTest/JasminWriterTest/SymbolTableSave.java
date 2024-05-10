package projektvstest;
import java.util.ArrayList;
import java.util.List;

public class SymbolTable {
    Integer varIndex;
    List<Symbol> table;
    
    public SymbolTable(){
        varIndex = 0;
        table = new ArrayList<>();
    }

    public void reset(){
        varIndex = 0;
        table.clear();
    }
    //Klassen Vaiabeln benötigen kein Index und Subroutine Variabeln benötigen kein Kind.
    //2 Tabellen erstellen mit verschieden Symbol Klassen????? NEIN --> Weil dadurch größere Funktion oder mehrere Funktionen erstehen.
    public void define(String name, String type, String kind){
        Symbol sy;
        switch (kind) {
            case "static":
                sy = new Symbol(name, type, kind, 0); 
                break;
            case "field":
                //Vielecht bracuht es doch ein Index um bei init limit locals anzugebn??
                //NEIN limit locals bezieht sich nur auf die argumente und in der suroutine erstellte lokale Variabeln!!!!
                sy = new Symbol(name, type, kind, 0); 
                break;
            case "arg":
                sy = new Symbol(name, type, "var", varIndex++); 
                break;
            case "var":
                sy = new Symbol(name, type, "var", varIndex++); 
                break;
            default:
                sy = null;
                break;
        }
        table.add(sy);
    }
    //Wird benutzt um limit zu berechnen!!!
    //Deshalb nur subroutine Table?
    //Constructor und methods braucht ein platz mehr um sich selber aufzurufen.
    public Integer varCount(String kind){
        long count = table.stream().filter(s -> s.kind.equals(kind)).count();
        return (int) count;
    }

    //Wird benötigt für Globale variabeln und static variables
    public String kindOf(String name){//??
        Symbol sy = table.stream().filter(s -> s.name.equals(name)).findFirst().orElse(null);
        if(sy == null){
            return "none";
        }else{
            return sy.kind;
        }
    }

    //Wird benötigt für solche aufrufe in Jasmin [putfield #7 <TestM.x : I>]
    public String typeOf(String name){
        Symbol sy = table.stream().filter(s -> s.name.equals(name)).findFirst().get();
        return sy.type;
    }

    //Für Sumbroutine variabeln
    public Integer indexOf(String name){
        Symbol sy = table.stream().filter(s -> s.name.equals(name)).findFirst().get();
        return sy.index;
    }

    //Brauchen wir vieleicht nicht
    // public Boolean exist(String name){
    //     return table.stream().filter(s -> s.name.equals(name)).findAny().isPresent();
    // }
}
