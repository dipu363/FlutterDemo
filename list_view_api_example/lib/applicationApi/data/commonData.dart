class Data {
  String? cODE;
  String? nAMENATIVE;
  String? nAMEGLOBAL;
  String? sHORTNAME;

  Data({this.cODE, this.nAMENATIVE, this.nAMEGLOBAL, this.sHORTNAME});

  Data.fromJson(Map<String, dynamic> json) {
    cODE = json['CODE'];
    nAMENATIVE = json['NAME_NATIVE'];
    nAMEGLOBAL = json['NAME_GLOBAL'];
    sHORTNAME = json['SHORT_NAME'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CODE'] = this.cODE;
    data['NAME_NATIVE'] = this.nAMENATIVE;
    data['NAME_GLOBAL'] = this.nAMEGLOBAL;
    data['SHORT_NAME'] = this.sHORTNAME;
    return data;
  }
}