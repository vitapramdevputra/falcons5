Candidates.CompanyName = 'softinnovas';
Candidates.printCandidateInfo2();
Candidates.CompanyName += ' Inc.';
Candidates.printCandidateInfo2();


Candidates c1 = new Candidates();
c1.Name = 'Jerry';
c1.Gender = 'Male';

Candidates c2 = new Candidates();
c2.Name = 'Elaine';
c2.Gender = 'Female';
c2.printCandidateInfo();

Candidates.CompanyName += ' Inc.';
Candidates c3 = new Candidates();
c3.Name = 'George';
c3.Gender = 'Male';
c3.printCandidateInfo();

c2.printCandidateInfo();
c1.printCandidateInfo();