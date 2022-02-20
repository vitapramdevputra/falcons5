public class ListDemo {
    public static string candidatesList(integer i) {
        //1. creating empty list of string
        List<string> listCandidates = new list<string>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        system.debug(listCandidates);
        string returnString = '';
        if (i < listCandidates.size()) {
            returnString = listCandidates[i];
        } else {
            returnString = 'No Value Found. Stay in limits.';
        }
        return returnString;
    }
    public static void randomIntegerList() {
        List<integer> listInteger = new list<integer>();
        integer i = 15;
        listInteger.add(10);
        listInteger.add(i);
        listInteger.add(21);
        listInteger.add(i);
        listInteger.add(i);

        integer index3Value = listInteger.get(3);
        //OR
        integer index3value2 = listInteger[3];

        system.debug('index 3 value is ' + index3Value);
        system.debug('list of integers ' + listInteger);
    }
    public static void iterateIntegerList() {
        List<integer> listInteger = new list<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(88);
        for (integer eachInteger : listInteger) {
            system.debug(eachInteger);
        }
        system.debug(listInteger);
        //system.debug(eachInteger);
    }

    public static void allCats() {
        cat falconsCat = new cat('fluffykins', 'white');
        cat cat2 = new cat('Simba', 'brown');
        cat cat3 = new cat('Smokey', 'Gray');

        List<cat> cats = new list<cat>();
        cats.add(falconsCat);
        cats.add(cat2);
        cats.add(cat3);
        cats.add(cat2);
        cats.add(cat2);
        system.debug(cats);
    }
}
