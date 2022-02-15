public class Dogs {
   public string Name;
   public string Breed;
   public integer Age;

   public void Description(){
       string description = 'Age of ' + Name;
       system.debug('Age of ' + Name + ' is ' + Age + ', its breed is ' + Breed);
   }
}
