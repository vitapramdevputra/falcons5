list<case> updateCases = [select id, subject, status from case where status='New'];
for (case eachCase : updateCases) {
    eachCase.status = 'Working';
}
update updateCases;



List<case> newCases = new list<case>();
for (Integer i = 0; i < 205; i++) {
    case c = new case();
    c.subject = 'There is a bug';
    c.description = 'Resolve it';
    c.status = 'New';
    c.Origin = 'Web';
    newCases.add(c);
}
insert newCases;