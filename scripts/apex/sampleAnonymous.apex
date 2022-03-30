//set value to static variable
//classname.variablename
SampleClass.SampleStaticString = 'This is a static variable. Enjoy.';
system.debug(SampleClass.SampleStaticString);

//className.methodName()
SampleClass.SampleStaticMethod();

//clasname.nonstaticvariable??? NOOOOOO
//SampleClass.SampleString = 'try this.'; 

SampleClass s = new SampleClass();
s.SampleString = 'This is non-staic variable. Still Enjoy.';
system.debug(s.SampleString);

system.debug(SampleClass.SampleStaticString);

s.SampleMethod();



/////something new
SampleClass.SampleStaticString = 'static string. again.';
SampleClass.SampleStaticMethod();

SampleClass s1 = new SampleClass();
s1.SampleString = 's1';
s1.SampleMethod();

SampleClass.SampleStaticMethod();

SampleClass s2 = new SampleClass();
s2.SampleString = 's2';
s2.SampleMethod();

SampleClass.SampleStaticMethod();