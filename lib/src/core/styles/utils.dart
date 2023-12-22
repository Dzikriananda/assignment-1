
class Utils{

  static bool isPalindrome(String input) {
    input = input.replaceAll(' ', '').toLowerCase();
    return input == input.split('').reversed.join('');
  }


}