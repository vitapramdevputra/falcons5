try{
    account ac = new account();
    insert ac;
} 
catch(DmlException dex){
    system.debug('DML went wrong buddy.');
}
catch(Exception ex){
    system.debug('something went wrong buddy');
    system.debug(ex);
    system.debug('exception message' + ex.getMessage());
}
finally{
    system.debug('this will always run');
}



system.debug('apex is simple');