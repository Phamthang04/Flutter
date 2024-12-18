bool detectCapitalUse(String word) {
  return word == word.toUpperCase() || 
         word == word.toLowerCase() || 
         word[0] == word[0].toUpperCase() && word.substring(1) == word.substring(1).toLowerCase();
}

void main() {
  // ignore: avoid_print
  print(detectCapitalUse("USA"));    
  // ignore: avoid_print
  print(detectCapitalUse("FlaG"));   
  // ignore: avoid_print
  print(detectCapitalUse("Google")); 
  // ignore: avoid_print
  print(detectCapitalUse("hello"));  
}
