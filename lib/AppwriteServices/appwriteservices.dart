import 'package:appwrite/appwrite.dart';


class Appwriteservices {
  late Client client;
  late Account account;
  static const endpoint = 'https://cloud.appwrite.io/v1';
  static const projectId = '6746f9fb0039b12adbf0';

  Appwriteservices() {
    client = Client();
    client.setEndpoint(endpoint).setProject(projectId);
    account = Account(client);
  }

  Future<void> registerUser(String email, String password, String name) async {
    try {
      final response = await account.create(userId: ID.unique(), email: email, password: password);
      print("User Registed");
      print("Id =  ${response.$id}");
    } catch (e) {
      print(e);
    }
  }




Future<void>loginUser(String email, String password)async{
  try {
    final session = await account.createEmailPasswordSession(email: email, password: password);
    print("User LogedIn");
    print("id = ${session.userId}");
  }on AppwriteException catch (e) {
    print(e);
    if(e.code==401){
      print("incorrect email or password");
    }else{
      print(e.message);
      throw Exception('an unexpected error occured');
    }
  }
}

Future<void> logout()async{
  try {
    await account.deleteSession(sessionId: 'current');
    print("User logged Out");
  } catch (e) {
    print(e);
  }
}

}
