public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String hi = "";
  String h = "";
  String b = "";
  for(int i = 0; i < word.length(); i++){
    hi = hi + word.substring(i, i + 1).toLowerCase();
  }
  for(int i = 0; i < hi.length(); i++){
    if(hi.substring(i, i + 1).equals(" ")){
      
    }else{
      h = h + hi.substring(i, i + 1);
    }
  }
  for(int i  = 0; i < h.length(); i++){
    if(Character.isLetter(h.charAt(i))){
      b = b + h.substring(i, i+1);
    }
  }

  String rev = reverse(b);
  
  if(b.equals(rev)){
    return true;
  }
  return false;
}
public String reverse(String str)
{
  String sNew = new String();
  for(int i = str.length() -1; i >= 0; i--){
    sNew = sNew + str.substring(i, i + 1);
  }
  return sNew;
}
