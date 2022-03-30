string sch = '0 30 13 * * ?';
AccountSchedulable accs = new AccountSchedulable();
system.schedule(
    'schedule account batch', sch, new AccountSchedulable()
);