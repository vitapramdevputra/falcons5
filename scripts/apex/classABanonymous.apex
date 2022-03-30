ClassA a = new classA('a');
ClassA.ClassAmethod1();


ClassA a1 = new classA('a1');
ClassA a2 = new classA('a2');
ClassA.ClassAmethod1();

GeneralSetting.printFlag = 'on';
ClassA a11 = new classA('a11');
ClassA a22 = new classA('a22');
ClassA.ClassAmethod1();

ClassB b11 = new classB('b11');
GeneralSetting.printFlag = 'off';
ClassB b22 = new classB('b22');
ClassB.ClassBmethod1();

