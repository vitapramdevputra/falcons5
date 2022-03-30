map<string, integer> itemQuantityMap = new map<string, integer>();
itemQuantityMap.put('Apple', 5);
itemQuantityMap.put('Orange', 6);
itemQuantityMap.put('Football', 1);
itemQuantityMap.put('LED', 3);
itemQuantityMap.put('Notebooks', 12);
itemQuantityMap.put('Pen', 25);

integer sizeMap = itemQuantityMap.size();
system.debug('items to shop ' + sizeMap);

string getQuantityOf = 'Apple';
//we are getting VALUE(integer) of a Particular KEY(string)
integer quantityIS = itemQuantityMap.get(getQuantityOf);
system.debug(getQuantityOf + ' quantity is ' + quantityIS);

string getQuantityOf_2 = 'Pen';
integer quantityIS_2 = itemQuantityMap.get(getQuantityOf_2);
system.debug(getQuantityOf_2 + ' quantity is ' + quantityIS_2);

string getQuantityOf_3 = 'Apples';
if(itemQuantityMap.containsKey(getQuantityOf_3)){
    integer quantityIS_3 = itemQuantityMap.get(getQuantityOf_3);
    system.debug(getQuantityOf_3 + ' quantity is ' + quantityIS_3);
} else {
    system.debug(getQuantityOf_3 + ' not in syllabes');
}
    

//Keys --> SET<key_datatype> --> KeySet()
//Values --> LIST<value_datatype> --> Values

Set<string> items = itemQuantityMap.keySet();
system.debug('all items are ' + items );

List<integer> quantities = itemQuantityMap.values();
integer sumOfQ = 0;
for(integer q: quantities){
    sumOfQ += q;
}
system.debug('number of items ' + sumOfQ);