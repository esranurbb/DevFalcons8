public class ListDemo {
    public static string candidatesList(integer i){
        List<String> listCandidates = new List<String>();
        listCandidates.add('Esranur');
        listCandidates.add('Ahmet');
        listCandidates.add('Esad');
        listCandidates.add('Ahmet');
        listCandidates.add('Kubra');
        // string index3Value = listCandidates.get(3);
        // system.debug(index3Value);
        // system.debug(listCandidates);
        integer sizeOfList = listCandidates.size();
        string returnString = '';
        if(0 < i && i < sizeOfList){
            returnString = listCandidates[i];
        }else{
            returnString = 'No values found.';
        }
        return returnString;
    }

    public static void randomIntegerList(){
        List<Integer> listInteger = new List<Integer>();
        listInteger.add(10);
        listInteger.add(10);
        listInteger.add(10);
        listInteger.add(255);
        listInteger.add(-5);
        listInteger.sort();
        for (integer aaa: listInteger) {
            system.debug(aaa);
        }
        system.debug(listInteger);
    }

    public static void allCats(){
        list<Cat> cats = new list<cat>();

        Cat catObj = new Cat('xxx', 'yyy');
        Cat catObj1 = new Cat('aaa', 'bbbb');


        cats.add(catObj);
        cats.add(catObj1);
        cats.add(catObj);

        system.debug('All cats; ' + cats);

        if(!cats.isEmpty()){
            cat cat3 = cats.get(2);
            system.debug(cat3);
        }
    }

    
}
