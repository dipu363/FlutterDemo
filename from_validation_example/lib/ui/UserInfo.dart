class UserInfo {
  String? username;
  String? fname;
  int? roleId;
  String? rolename;
  String? password;
  String? referenced;
  Null? photo;
  String? status;
  String? phone1;
  Null? phone2;
  Null? email;
  Null? address;
  Null? dob;
  String? gender;
  Null? religion;
  Null? maritalStatus;
  Null? bloodGroup;
  Null? commLayer;
  Null? commPromotionDate;
  String? mobiPassword;
  int? branchID;
  String? ssCreator;
  String? lname;

  UserInfo(
      {this.username,
        this.fname,
        this.roleId,
        this.rolename,
        this.password,
        this.referenced,
        this.photo,
        this.status,
        this.phone1,
        this.phone2,
        this.email,
        this.address,
        this.dob,
        this.gender,
        this.religion,
        this.maritalStatus,
        this.bloodGroup,
        this.commLayer,
        this.commPromotionDate,
        this.mobiPassword,
        this.branchID,
        this.ssCreator,
        this.lname});

  UserInfo.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    fname = json['fname'];
    roleId = json['roleId'];
    rolename = json['rolename'];
    password = json['password'];
    referenced = json['referenced'];
    photo = json['photo'];
    status = json['status'];
    phone1 = json['phone1'];
    phone2 = json['phone2'];
    email = json['email'];
    address = json['address'];
    dob = json['dob'];
    gender = json['gender'];
    religion = json['religion'];
    maritalStatus = json['maritalStatus'];
    bloodGroup = json['bloodGroup'];
    commLayer = json['commLayer'];
    commPromotionDate = json['commPromotionDate'];
    mobiPassword = json['mobiPassword'];
    branchID = json['branchID'];
    ssCreator = json['ssCreator'];
    lname = json['lname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['fname'] = this.fname;
    data['roleId'] = this.roleId;
    data['rolename'] = this.rolename;
    data['password'] = this.password;
    data['referenced'] = this.referenced;
    data['photo'] = this.photo;
    data['status'] = this.status;
    data['phone1'] = this.phone1;
    data['phone2'] = this.phone2;
    data['email'] = this.email;
    data['address'] = this.address;
    data['dob'] = this.dob;
    data['gender'] = this.gender;
    data['religion'] = this.religion;
    data['maritalStatus'] = this.maritalStatus;
    data['bloodGroup'] = this.bloodGroup;
    data['commLayer'] = this.commLayer;
    data['commPromotionDate'] = this.commPromotionDate;
    data['mobiPassword'] = this.mobiPassword;
    data['branchID'] = this.branchID;
    data['ssCreator'] = this.ssCreator;
    data['lname'] = this.lname;
    return data;
  }
}