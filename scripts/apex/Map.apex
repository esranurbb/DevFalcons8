map<string, string> countryCurrency = new map<string, string>();
countryCurrency.put('USA', 'Dollar');
countryCurrency.put('Turkiye', 'TL');
countryCurrency.put('India', 'Rupees');
countryCurrency.put('Japan', 'Yen');
countryCurrency.put('France', 'Euro');
countryCurrency.put('India', 'Rupee');
countryCurrency.put('USA', 'Lira');


set<string> countriesSet = countryCurrency.keySet();
list<string> currencies = countryCurrency.values();

system.debug('Country list: ' + countriesSet);
system.debug('Currency set: ' + currencies);

system.debug(countryCurrency.get('USA'));
system.debug(countryCurrency);

set<string> countries = countryCurrency.keySet();
for(string eachKey : countries){
    string print = 'Country is ' + eachKey;
    string eachCurrency = countryCurrency.get(eachKey);
    print += ', its currency is ' + eachCurrency;
    system.debug(print);
}
