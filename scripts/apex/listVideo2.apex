List<string> l = new list<string>();
l.add('vitap');
l.add('thor');
l.add('rock');
list<string> l2 = GeneralList.toCaps(l);
system.debug(l2);


list<date> birthDateList = new list<date>();
date dt1 = date.newInstance(1990, 10, 9);
birthDateList.add(dt1);
date dt2 = date.newInstance(1960, 7, 23);
birthDateList.add(dt2);
birthDateList.add(date.newInstance(1991, 5, 20));
GeneralList.printAge(birthDateList);