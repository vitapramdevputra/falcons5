//map demo. we did some time back.
map<string, string> mapCountryCurrency = new map<string, string>();
mapCountryCurrency.put('USA', 'Dollar');
mapCountryCurrency.put('Japan', 'Yen');
mapCountryCurrency.put('France', 'Euro');
mapCountryCurrency.put('India', 'Rupees');
mapCountryCurrency.put('India', 'Rupee');
mapCountryCurrency.put('Turkiye', 'Lira');
mapCountryCurrency.put('El Salvador', 'Bitcoin');

system.debug('map of country vs currency : ' + mapCountryCurrency);

string s = 'India';
string IndiaCurrency = mapCountryCurrency.get(s);
string TurkiyeCurrency = mapCountryCurrency.get('Turkiye');

system.debug('India currency = ' + IndiaCurrency);
system.debug('Turkiye currency = ' + TurkiyeCurrency);

Set<string> countries = mapCountryCurrency.keySet();
system.debug('countries = ' + countries);

List<string> currencies = mapCountryCurrency.values();
system.debug('currencies = ' + currencies);

for(string country: countries){
    system.debug('each country = ' + country);
    string eachCurrency = mapCountryCurrency.get(country);
    system.debug('currency is ' + eachCurrency);
}