crime(moghu,rape).
age(moghu,5).
intent(moghu,harm).
intoxicated(moghu,willingly).
abetment(moghu).

innocent76A(P) :- crime(P,X), boundByLaw(X).
innocent76B(P) :- crime(P,X), intent(P,noCriminalIntent), lawMisinterpret(P).

innocent77(P) :- crime(P,X), judge(P), intent(P,noCriminalIntent), actingJudicially(P).

innocent78(P) :- crime(P,X), intent(P,noCriminalIntent), orderOfCourt(X). 

innocent79(P) :- crime(P,X), intent(P,noCriminalIntent), lawMisinterpret(P).

innocent80(P) :- crime(P,X), accident(X), intent(P,noCriminalIntent), cautious(P). 

innocent81(P) :- crime(P,X), intent(P,noCriminalIntent), likelyToCauseHarm(X) , preventOtherHarm(P). 

innocent82(P) :- crime(P,X), age(P,A), A<7.

innocent83(P) :- crime(P,X), age(P,A), A>7, A<12, immature(P).

innocent84(P) :- crime(P,X), insane(P).

innocent85(P) :- crime(P,X), intoxicated(P,againstWill), \+causeDeath(X).

%innocent86(P) :- crime(P,X), 

innocent87(P) :- crime(P,X), consent(P,V), \+likelyToCauseHarm(X), age(V,A), A>18, ( causeInjury(X); causeDeath(X) ).

innocent88(P) :- crime(P,X), intent(P,noCriminalIntent), \+causeDeath(X), consent(P,V), benefit(P,V).

%define child
innocent89(P) :- crime(P,X), intent(P,noCriminalIntent), benefit(P,V), ( child(V);insane(V) ) , \+( causeInjury(X); causeDeath(X) ) , \+abetment(P,X) , guardian(V), consent(P,V).  

%90
consent(P,V) :- (\+child(V)); (\+insane(V)).

%innocent91(P) :- redundant  

innocent92(P) :- crime(P,X), intent(P,noCriminalIntent), benefit(P,V), ( child(V);insane(V) ) , \+( causeInjury(X); causeDeath(X) ) , \+abetment(P,X).

innocent93(P) :- crime(P,X), communication(X), intent(P,noCriminalIntent),( causeInjury(X); causeDeath(X) ).

innocent94(P) :- crime(P,X),\+causeDeath(X),\+punishableByDeath(X), underThreat(P) 

innocent95(P) :- crime(P,X), causeSlightHarm(X).

%innocent96(P) :- redundant(97) 

innocent97(P) :- crime(P,X), ( selfDefense(P,body); selfDefense(P,property) ) , \+causeDeath(X). 

%innocent98(P) :- crime(P,X), 

%innocent99(P) :- crime(P,X), 

innocent100(P) :- crime(P,X), ( selfDefense(P,body); selfDefense(P,property) ), causeDeath(X), assualt(P,A), ( causeDeath(A);rape(A);kidnapping(A);gratifyingUnnaturalLust(A);acidAttack(A) ).

%innocent101(P) :- redundant

innocent102(P) :- crime(P,X), 

innocent103(P) :- crime(P,X), 

innocent104(P) :- crime(P,X), 

innocent105(P) :- crime(P,X), 

innocent106(P) :- crime(P,X), 









innocent(P) :- innocent76(P);innocent77(P);
		format('~w is innocent',[P]).

~innocent(P) :- format('~w is guilty',[P]).
