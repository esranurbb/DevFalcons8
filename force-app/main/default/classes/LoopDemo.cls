public class LoopDemo {
    public void print_int_while(){
        integer count = 1;
        while (count <=25){
            system.debug(count);
            count++;
        }
    }

    public void print_N_Numbers(integer n){
        for(integer i=0; i<n; i++){
            system.debug(i);
        }
    }

    public void print_N_Odd_Numbers(integer x, integer y){
        integer methodInt = 1;
        for(integer i=x; i<=y; i++){
            integer modI = math.mod(i, 2);
            if(modI == 1){
                system.debug(i);
            }
        }
    } 




}
