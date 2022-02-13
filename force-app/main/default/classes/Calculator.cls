public class Calculator {
   public void welcomeMessage(){
       system.debug('welcome to apex calc.');
   }
   public void printNewMessage(string msg){
       system.debug(msg);
       //from where will we get value of msg?
       //from wherever we call this method.
   }
   public integer add(integer a, integer b){
       system.debug('a = ' + a);
       system.debug('b = ' + b);
       integer sum = a + b;
       return sum;
   }
   
   public integer add(integer int1, integer int2, integer int3){
        return int1 + int2 + int3;
   }

}
