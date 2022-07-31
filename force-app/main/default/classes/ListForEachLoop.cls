public class ListForEachLoop {
    public static void iterateIntegerList(){
        List<Integer> myList = new List<Integer>();
        myList.add(5);
        myList.add(6);
        myList.add(7);
        myList.add(8);

        for(integer eachInteger: myList){
            system.debug(eachInteger);
        }

    }
    
    
    
    public static integer add(list<integer> listInt){
        integer returnInt = 0;
        for (integer eachInt : listInt) {
            returnInt += eachInt;

        }
        return returnInt;
    }    


}