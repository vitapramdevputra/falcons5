map<string, country_code__c> cc = country_code__c.getAll();
system.debug('country codes are ' + cc);
for (string eachCC : cc.keySet()) {
    system.debug('key : ' + eachCC);
    system.debug('country code ? ' + cc.get(eachCC).country_code__c );
    system.debug('value : ' + cc.get(eachCC) );
}