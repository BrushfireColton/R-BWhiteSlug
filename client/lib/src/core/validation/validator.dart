abstract class Validator {
  final Map<String, String> _errors = {};
  Map<String, String> get errors => _errors;
  bool get isValid => _errors.isEmpty;

  String addError(String key, String message) {
    if (!errors.containsKey(key)) {
      _errors[key] = message;
    }

    return message;
  }

  void removeError(String key) {
    if (errors.containsKey(key)) {
      _errors.remove(key);
    }
  }
}
