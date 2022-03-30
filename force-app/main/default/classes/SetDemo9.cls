public class SetDemo9 {
    public static void checkOdd(set<integer> sInt) {
        for (integer i : sInt) {
            if(math.mod(i,2) == 0){
                system.debug( i + ' NOT ODD');
            } else {
                system.debug( i + ' IS ODD');
            }
        }
    }
}
