Greetings g1 = new Greetings();
g1.language = 'Hindi';
String g1Greet = g1.GreetingHello(10);
system.debug(g1Greet);

Greetings g2 = new Greetings();
g2.language = 'Turkish';
String g2Greet = g2.GreetingHello(15);
system.debug(g2Greet);

Greetings g3 = new Greetings();
g3.language = 'Russian';
String g3Greet = g3.GreetingHello(9);
system.debug(g3Greet);

Greetings g4 = new Greetings();
g4.language = 'Eng';
system.debug(g4.GreetingHello(5));