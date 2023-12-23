class Utils{

  static bool isPalindrome(String input) {
   if (input == '') {
     return false;
   } else {
     input = input.replaceAll(' ', '').toLowerCase();
     return input == input.split('').reversed.join('');
   }
  }


}