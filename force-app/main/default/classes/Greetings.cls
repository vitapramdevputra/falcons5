public  class Greetings {
   public string language = '';

   public string GreetingHello(){
       String greet = '';
        if(language == 'Hindi'){
            greet = 'Namaste';
        } else if(language == 'Turkish'){
            greet = 'Merhaba';
        } else if(language == 'Russian') {
             greet = 'Privet';
        } else {
            greet = 'Helloooo';
        }
       return greet;
   }

   public string GreetingHello2(){
       string greet = '';
        switch on language {
            when 'Hindi' {
                greet = 'Namaste Namaste';
            }
            when 'Turkish'{
                greet = 'Merhaba Merhaba';
            }
            when 'Russian'{
                greet = 'Privet Privet';
            }
            when else {
                greet = 'Hello Hello';
            }
        }
       return greet;
   }
}
