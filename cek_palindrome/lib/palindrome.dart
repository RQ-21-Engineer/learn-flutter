class Palindrome {

   String check (String userInput) {
     
     for(int idxSubstr = 0; idxSubstr < (userInput.length/2).floor(); idxSubstr++) {
       
       if (userInput[idxSubstr] != userInput[userInput.length - (idxSubstr + 1) ]) {
         return "Kata '" + userInput + "' bukan palindrom";
       } 
     }
     
     return "Kata '" + userInput + "' merupakan palindrom";
   }
} 



































