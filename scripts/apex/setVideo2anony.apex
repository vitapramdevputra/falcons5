set<integer> s; //s is null here.
system.debug(s);
if(s == null){
    s = new set<integer>();
}
boolean isSEmpty = s.isEmpty();
system.debug('is s empty = ' + isSEmpty);
integer sSize = s.size();
system.debug('size = ' + sSize);


set<string> myfruits = new set<string>();
myfruits.add('apple');
myfruits.add('grapes');
myfruits.add('grapes');

set<string> xfruits = new set<string>();
xfruits.add('pineaple');
xfruits.add('apple');
xfruits.add('grapes');
xfruits.add('grapes');
xfruits.add('orange');

boolean checkFruits = xfruits.containsAll(myfruits);
system.debug('fruit check - ' + checkFruits);

myfruits.clear();
xfruits.clear();

system.debug('check fruit now ' + myfruits + ' x check ' + xfruits);




