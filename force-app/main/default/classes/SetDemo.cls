public class SetDemo {
    public static void citySet() {
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        system.debug('set of cities: ' + cities);
    }

    public static void randomIntegerSet() {
        Set<Integer> s = new Set<Integer>();
        s.add(10);
        s.add(15);
        s.add(21);
        s.add(15);
        s.add(15);
        s.add(15);
        s.add(15);
        system.debug('set of random integers ' + s);
    }

    public static set<integer> setFromList(list<integer> iL) {
        Set<Integer> s = new Set<Integer>();
        s.addAll(iL);
        return s;
    }
}
