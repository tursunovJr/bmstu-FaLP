predicates
	family(symbol Child, symbol Father, symbol Mother).
	grand(symbol Child, symbol F_f, symbol M_f, symbol F_m, symbol M_m).
clauses
	family(alexey, vladimir, elena).
	family(inna, egor, kseniya).
	family(vladimir, alexey, inna).

	family(oleg, kirill, nadezhda).
	family(olga, andrey, anna).
	family(ivan, oleg, olga).

	grand(Child, F_f, M_f, F_m, M_m) :- family(Child, Father, Mother),
	family(Father, F_f, M_f), family(Mother, F_m, M_m). 
goal
	% grand(ivan, _, M_f, _, M_m). %task_1
	% grand(ivan, F_f, _, F_m, _). %task_2
	% grand(ivan, F_f, M_f, F_m, M_m). %task_3
	% grand(ivan, _, _, _, M_m). %task_4
	% grand(ivan, _, _, F_m, M_m). %task_5
