class HiveMapModel {
 final String name;
 final String email;
 final num salary;
 final num balance;
 final String country;

 const HiveMapModel( {
   required this.name,
   required this.email, 
   required this.salary,
   required this.balance,
   required this.country,});

  Map<String , dynamic> toMap(){
    return{
      "name": name,
      "email": email,
      "salary": salary,
      "balance":balance,
      "country": country,
    };
  }
 
  factory HiveMapModel.fromMap(Map<dynamic,dynamic> json){
    return HiveMapModel(
      name: json["name"],
       email: json["email"],
        salary: json["salary"],
        balance: json["balance"],
         country: json["country"]??"");
        
  }

}