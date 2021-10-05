class CodeModel{
  String CODE;
  String NAME_NATIVE;
  String NAME_GLOBAL;
  String SHORT_NAME = '';


  CodeModel(this.CODE, this.NAME_NATIVE, this.NAME_GLOBAL);

  CodeModel.fromJson(Map json):
        CODE =  json["CODE"] == null ? "" : json["CODE"],
        NAME_NATIVE =  json["NAME_NATIVE"] == null ? "" : json["NAME_NATIVE"],
        NAME_GLOBAL =  json["NAME_GLOBAL"] == null ? "" : json["NAME_GLOBAL"],
        SHORT_NAME =  json["SHORT_NAME"] == null ? "" : json["SHORT_NAME"];


}