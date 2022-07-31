SetDemo.citySet();
SetDemo.randomIntegerSet();

List<integer> myList = new List<Integer>();
        myList.add(11);
        myList.add(11);
        myList.add(11);
        myList.add(22);
        myList.add(33);
set<integer> setfromList = SetDemo.setFromList(myList);
system.debug(setfromList);



set<string> cities = new set<string>();
cities.add('ISTANBUL');
cities.add('bURSA');
cities.add('Canakkale');
cities.add('mardin');
cities.add('ORdu');
cities.add('SamSUN');

system.debug(SetDemo.capitalizeSet(cities));
system.debug(SetDemo.capitalizeMethod(cities));