list<string> shoppingList = new list<string>();
shoppingList.add('Camera'); //0
shoppingList.add('headphone'); //1
shoppingList.add('music system'); //2
shoppingList.add('clothes'); //3
shoppingList.add('bitcoin'); //4

system.debug(shoppingList);
string item2 = shoppingList.get(2);
string item4 = shoppingList.get(4);
system.debug('item 2 is ' + item2);
system.debug('item 4 is ' + item4);


list<date> birthDateList = new list<date>();
date dt1 = date.newInstance(1990, 10, 9);
birthDateList.add(dt1);
date dt2 = date.newInstance(1960, 7, 23);
birthDateList.add(dt2);
birthDateList.add(date.newInstance(1991, 5, 20));
system.debug(birthDateList);
birthDateList.sort();
system.debug(birthDateList);

list<integer> lst = new List<integer>{1,2,9,99,9999};
system.debug(lst);