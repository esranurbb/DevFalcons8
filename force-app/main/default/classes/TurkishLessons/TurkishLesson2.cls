public class TurkishLesson2 {
    public static void numberComparision(integer a, integer b){
        if (a>b) {
            system.debug('Buyuk sayi--- ' + a);
        } else if(b>a){
            system.debug('Buyuk sayi--- ' + b);
        }else {
            system.debug('Bu iki sayi esittir.');
        }
        
    } 

    public static void numberComparision2(integer a, integer b){
        integer bigNumber = math.max(a, b);
        system.debug('Big number is--- ' + bigNumber);

    }
    

    public static void marketAlisverisi(string order, integer quantity){
        integer ucret;
        // order.toLowerCase();
        if(order == 'ekmek'){
             ucret = quantity*1;
             system.debug('Ekmek icin odeyeceginiz miktar--- '+ucret);
        }else if(order == 'simit'){
            ucret = quantity*2;
            system.debug('Simit icin odeyeceginiz miktar--- '+ucret);
        }else if(order == 'kek'){
            ucret = quantity*3;
            system.debug('Kek icin odeyeceginiz miktar--- '+ucret);
        }else{
            system.debug('Boyle bir urun elimizde bulunmamaktadir.');
        }
    }

    public static integer sum(integer n){
        integer toplam = 0;
        for (integer i = 1; i<=n; i++){
            toplam += i;
        }
        return toplam;
    }
    

    public static string addString(string x, integer y){
        string addStr = '';
        for(integer i = 1; i<= y; i++){
            addStr+=' ' + x;
        }
        return addStr;
    } 
}
