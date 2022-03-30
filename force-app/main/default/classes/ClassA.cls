public class ClassA {
    public ClassA() {
        if(GeneralSetting.printFlag != 'off'){
            system.debug('class A constructor.');
        }
    }
    public ClassA(string p) {
        if(GeneralSetting.printFlag != 'off'){
            system.debug('class A param constructor. p = ' + p);
            GeneralSetting.printFlag = 'off';
        }
    }
    public static void classAmethod1(){
        if(GeneralSetting.printFlag != 'off'){
            system.debug('class A method 1 print statement.');
        }
    }
}
