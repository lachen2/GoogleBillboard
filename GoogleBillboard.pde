public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
    //your code here 
    String digits = e.substring(2, 12);
    double dDigits = Double.parseDouble(digits); 
    for (int i = 2; i < e.length() - 10; i ++) {
      digits = e.substring(i, i + 10);
      dDigits = Double.parseDouble(digits);
      if (isPrime(dDigits) == true) {
        System.out.println("First ten digit prime found in consecutive digits of e: " + dDigits);
        break;
      }
    }
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
    //your code here 
    if (dNum < 2)
      return false;
    for (int i = 2; i <= Math.sqrt(dNum); i ++)
      if (dNum % i == 0)
        return false;
    return true;  
} 
