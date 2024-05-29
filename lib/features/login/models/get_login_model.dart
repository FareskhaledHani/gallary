
class GetLoginModel{
  final String name;
  final String email;
  // final String salary;
  GetLoginModel( {required this.name,required this.email});
  factory GetLoginModel.fromJson(Map<String,dynamic> json){
    return GetLoginModel(
      name: json['name'],
      email: json['email'],
      // salary: json['salary']??'',
    );
  }
}
