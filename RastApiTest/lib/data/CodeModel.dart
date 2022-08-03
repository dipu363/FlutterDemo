class CodeModel {
  CodeModel({
    this.code,
    this.nameNative,
    this.nameGlobal,
    this.shortName,
  });

  String? code;
  String? nameNative;
  String? nameGlobal;
  String? shortName;

  factory CodeModel.fromJson(Map<String, dynamic> json) => CodeModel(
    code: json["CODE"],
    nameNative: json["NAME_NATIVE"],
    nameGlobal: json["NAME_GLOBAL"],
    shortName: json["SHORT_NAME"],
  );

  Map<String, dynamic> toJson() => {
    "CODE": code,
    "NAME_NATIVE": nameNative,
    "NAME_GLOBAL": nameGlobal,
    "SHORT_NAME": shortName,
  };
}
