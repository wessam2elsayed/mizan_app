import 'package:hive/hive.dart';
import 'package:mizan_app/core/models/hive_map_model.dart';
import 'package:path_provider/path_provider.dart';

class HiveModel {
  static final HiveModel _hiveModel=HiveModel._internal();
  factory HiveModel()=>_hiveModel;
  HiveModel._internal();
  Box? box;

  static HiveMapModel? currentUser;

  void loadUserSession() {
    if (box != null && box!.isNotEmpty) {
      final allUsers = box!.values
          .map((e) => HiveMapModel.fromMap(e))
          .toList();
      if (allUsers.isNotEmpty) {
        currentUser = allUsers.last;
      }
    }
  }

  // void loadUserSession() {
  //   final data = getData(); 
  //   if (data.isNotEmpty) {
  //     currentUser = data.last; 
  //   }
  // }

  Future<Box>init()async{
    if(!Hive.isBoxOpen("myBox")){
      final dir = await getApplicationDocumentsDirectory();
      Hive.init(dir.path);
    }
    box = await Hive.openBox("myBox");
    return box!;

  }

  

void saveOrUpdateUser(HiveMapModel value) {
  box!.put(value.email, value.toMap());
  currentUser = value;
}

HiveMapModel? getUser(String email) {
  final data = box!.get(email); 
  return data != null ? HiveMapModel.fromMap(data) : null;
}

HiveMapModel? getLastUser() {
    if (box == null || box!.isEmpty) return null;
    
    final allUsers = box!.values
        .map((e) => HiveMapModel.fromMap(e))
        .toList();
    
    return allUsers.isNotEmpty ? allUsers.last : null;
  }

  List<HiveMapModel> getAllUsers() {
    return box?.values.map((e) => HiveMapModel.fromMap(e)).toList() ?? [];
  }

void updateData(int key, Map data) {
    box!.putAt(key, data);
}

void addData(HiveMapModel value){
    box!.add(value.toMap());
  }

  List<HiveMapModel> getData(){
    return box?.values.map((e)=>HiveMapModel.fromMap(e)).toList()??[];
  }

 


  void deleteData(int index){
    box!.deleteAt(index);
  }

  void clearAllData() async {
  await box!.clear(); 
}

}