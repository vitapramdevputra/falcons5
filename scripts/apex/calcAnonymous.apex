Calculator calc = new Calculator();
//NOOO.


calc.welcomeMessage();
calc.printNewMessage('this is new age calc.');
integer one = 5;
integer two = 10;
integer sum = calc.add(one, two);
system.debug('sum = ' + sum);

integer one1 = 15;
integer two1 = 110;
integer sum1 = calc.add(one1, two1);
system.debug('sum1 = ' + sum1);

integer sum2 = calc.add(78, 54);
system.debug('sum2 = ' + sum2);

integer sum3 = calc.add(78, one);
system.debug('sum3 = ' + sum3);

integer sum4 = calc.add(10,15,25);
system.debug('sum 4 = ' + sum4);