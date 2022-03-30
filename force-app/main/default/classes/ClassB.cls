public class ClassB {
    public ClassB() {
        if(GeneralSetting.printFlag != 'off'){
            system.debug('class B constructor.');
        }
    }

    public ClassB(string p) {
        if(GeneralSetting.printFlag != 'off'){
            system.debug('class B param constructor. p = ' + p);
        }
    }
    public static void classBmethod1(){
        if(GeneralSetting.printFlag != 'off'){
            system.debug('class B method 1 print statement.');
        }
    }
}
