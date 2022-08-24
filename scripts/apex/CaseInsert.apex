List<Case> caseList = new List<Case>();
for (Integer i = 0; i < 299; i++) {
    case c = new case();
    c.Subject = 'There is not a bug';
    c.Description = 'Leave it';
    c.Origin = 'Web';
    c.Status = 'New';
    caseList.add(c);
}
insert caseList;


List<Case> listCase = [Select id, subject From Case];
for (Case c : listCase) {
    c.Subject +='2';
}
update listCase;


List<Account> acc = [Select name from Account where name like '%Updated'];
for (Account eachAcc : acc) {
    eachAcc.Name.remove('Updated');
}
update acc;

