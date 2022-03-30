public class SampleClass {
    //static string
    public static string SampleStaticString;
    //non-static string
    public string SampleString;

    //static method
    public static void SampleStaticMethod(){
        system.debug('xxx' + SampleStaticString); // allowed. Static variable inside static method.
        //system.debug(SampleString);//nope. non-static variable, in static method. NOT allowed.
        system.debug('staic method called. Of cource Enjoy');
    }
    //classic non-staic method. No params, no returns.
    public void SampleMethod(){
        system.debug(SampleStaticString); // allowed. Static variable inside non-static method.
        system.debug(SampleString);//allowed. non-static variable, in non-static method. allowed.
        system.debug('non static method called from instance. cool.');
    }
}
