set<string> fruits = new set<string>();
fruits.add('pineaple');
fruits.add('apple');
fruits.add('grapes');
fruits.add('grapes');
fruits.add('pineaple');
fruits.add('pineaPle');
fruits.add('PineaPle');
system.debug('fruits ' + fruits);

list<string> shoppingList = new list<string>();
shoppingList.add('Camera'); //0
shoppingList.add('headphone'); //1
shoppingList.add('music system'); //2
shoppingList.add('clothes'); //3
shoppingList.add('bitcoin'); //4
shoppingList.add('bitcoin'); //5
shoppingList.add('bitcoin'); //6
shoppingList.add('Camera'); //7
system.debug('shopping list ' + shoppingList);

set<string> shopNow = new set<string>();
shopNow.addAll(shoppingList);
system.debug('go and shopm please ' + shopNow);


set<integer> s = new set<integer>{1,1,5,4,84,54,87,654,7,5};
s.add(999);
system.debug('set integer ' + s);
