import 'package:shared_preferences/shared_preferences.dart';

// Funciona como um armazenamento simples do app (lembrar login, tema escuro, token, nome user, config etc)
// Salva dados localmente com shared preferences

class LocalStorage {

  // salva string localmente
  // recebe nome da informação "token" e valor "abc123", esse foi um exemplo
  static Future<void> saveString(String key, String value) async {

    // aqui obtém acesso ao armazenamento local, await espera carregar antes de continuar
    SharedPreferences prefs = await SharedPreferences.getInstance();

    //salva a string
    await prefs.setString(key, value);
  }

  // busca valor salvo, retorna string ou null
  static Future<String?> getString(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  //remove um dado salvo
  static Future<void> removeString(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    //muito usado em logout
    await prefs.remove(key);
  }

  //verifica se tem algo salvo naquela chave
  static Future<bool> containsString(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(key);
  }
}