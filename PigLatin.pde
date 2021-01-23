public void setup() 
{
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++)
    System.out.println(pigLatin(lines[i]));
}
public int findFirstVowel(String sWord){
  for (int i=0; i<sWord.length(); i++)
    if (sWord.charAt(i)=='a')
      return i;
    else if (sWord.charAt(i)=='e')
      return i;
    else if (sWord.charAt(i)=='i')
      return i;
    else if (sWord.charAt(i)=='o')
      return i;
    else if (sWord.charAt(i)=='u')
      return i;
  return -1;
}
public String pigLatin(String sWord)
{
  if (findFirstVowel(sWord) == -1)
    return sWord + "ay";
  else if (findFirstVowel(sWord) == 0)
    return sWord + "way";
  else if (sWord.substring(0,2).equals("qu"))
    return sWord.substring(2) + "quay";
  else if (findFirstVowel(sWord) > 0)
    for (int i=0; i<sWord.length(); i++)
      if (findFirstVowel(sWord)==i)
      return sWord.substring(i) + sWord.substring(0,i) + "ay";
  return "ERROR!";
}
