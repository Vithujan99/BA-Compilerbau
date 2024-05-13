package projektvstest;

import java.util.List;

public class CallingSubSymbol {
  String callingName;
  String callingType;
  String callingKind;
  List<String> callingParamTypes;
  public CallingSubSymbol(String callingName, String callingType, String callingKind, List<String> callingParamTypes){
    this.callingName = callingName;
    this.callingType = callingType;
    this.callingKind = callingKind;
    this.callingParamTypes = callingParamTypes;
  }
}
