public class StringDemoClass {
    public void stringMethod1(){
        string sessionDescription = 'learning string methods in apex language is FUN.';

        integer lengthOfStr = sessionDescription.length();
        system.debug('length of string is = ' + lengthOfStr);

        string sessionDescriptionInCaps = sessionDescription.toUpperCase();
        system.debug('session desc in caps =' + sessionDescriptionInCaps);

        boolean containsApex = sessionDescription.contains('apex');
        system.debug('has apex? ' + containsApex);

        boolean containsApex2 = sessionDescriptionInCaps.containsIgnoreCase('apex');
        system.debug('has apex 2? ' + containsApex2);
    }

    
}
