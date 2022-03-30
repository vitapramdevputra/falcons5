map<string, string> zipCodeMap = new map<string, string>();
zipCodeMap.put('380001', 'Ahmedabad');
zipCodeMap.put('380061', 'Ahmedabad');
zipCodeMap.put('110001', 'Goa');
zipCodeMap.put('110001', 'Delhi');
zipCodeMap.put('110001', 'New Delhi');
zipCodeMap.put('90001', 'California');
zipCodeMap.put('96162', 'California');
system.debug(zipCodeMap);

map<integer, string> m2 = new map<integer, string>();
m2.put(1,'one');
m2.put(2,'five');
map<string, integer> m3 = new map<string, integer>();
m3.put('one', 1);

system.debug('m2 ' + m2);