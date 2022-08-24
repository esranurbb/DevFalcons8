public class Calculator {
    public static void welcomeMessage(string msg){
        system.debug(msg);
    }

    public static void add(integer a, integer b){
        integer sum = a+b;
        system.debug(sum);
    }

    public static void triangle(integer a, integer b){
        integer area = (a*b)/2;
        system.debug(area);
    }

    public static string printAndReturnMessage(string xyz){
        string str1 = xyz + '...OK Cool';
        return str1;
    }

    public static string stringReturnType(string msg){
        string returnStr = msg + '...OK Cool';
        return returnStr;
    }

    public boolean leapYearCheck(date dt){
        integer year = dt.year();
        boolean lp = date.isLeapYear(year);
        return lp;

    }

    public static integer add2(integer num1, integer num2){
        integer sum = num1 + num2;
       return sum;
    }

    public static integer add2(integer num1, integer num2, integer num3){
        integer sum = num1 + num2 + num3;
        return sum;
    }

    public static boolean check(string sample){
        boolean x = sample.containsIgnoreCase('Ahmet');
        return x;
    }


}
