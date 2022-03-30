public class GeneralClass {
    public void createStudents(){
        Student s1 = new Student();
        s1.Name = 'SRK';
        s1.BirthDate = date.newInstance(1970,11,3);
        s1.SchoolName = 'New Delhi Public School';
        system.debug(s1);

        Student s2 = new Student();
        s2.Name = 'MSD';
        s2.BirthDate = date.newInstance(1982,7,3);
        s2.SchoolName = 'New Delhi Public School';
        system.debug(s2);
    }
    public void justPrintAnything(){
        integer i = 5+5+5+5+9;
        system.debug(i);
    }
}
