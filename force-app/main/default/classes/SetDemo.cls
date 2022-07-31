public class SetDemo {
    public static void citySet() {
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Lisbon');   
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Lisbon');
        system.debug(cities);
    }

    public static void randomIntegerSet() {
        set<integer> integerSet = new set<integer>();
        integerSet.add(5);
        integerSet.add(25);
        integerSet.add(125);
        integerSet.add(325);
        integerSet.add(5);
        integerSet.add(25);
        integerSet.add(325);
        system.debug(integerSet);
        
    }

    public static set<integer> setFromList(list<integer> intList) {
        set<integer> intSet = new Set<Integer>();
        intSet.addAll(intList);
        return intSet;
        
    }

    public static set<string> capitalizeSet(Set<String> setStr) {
        Set<String> capsSet = new Set<String>();

        for(string eachStr : setStr){
            string tempStr = eachStr.capitalize();
            capsSet.add(tempStr);
        }
        return capsSet;
        
    }


    public static set<string> capitalizeMethod(set<string> setStr){
        set<string> listOfString = new Set<String>();
        for(string elements : setStr){
            string capElement = elements.capitalize();
        }
        return listOfString;


    }
}
