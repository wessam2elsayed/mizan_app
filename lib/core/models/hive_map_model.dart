class HiveMapModel {
 final String name;
 final String email;
 final int salary;
 final int balance;

 const HiveMapModel({
   required this.name,
   required this.email, 
   required this.salary,
   required this.balance});

  Map<String , dynamic> toMap(){
    return{
      "name": name,
      "email": email,
      "salary": salary,
      "balance":balance,
    };
  }
 
  factory HiveMapModel.fromMap(Map<String,dynamic> json){
    return HiveMapModel(
      name: json["name"],
       email: json["email"],
        salary: json["salary"],
        balance: json["balance"]);
  }

}