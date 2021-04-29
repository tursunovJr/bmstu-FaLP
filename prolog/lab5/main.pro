domains
	address = address(symbol City, symbol Street, integer House_num, integer Flat_num).
 
	property = auto_own(symbol Brand, symbol Color, integer Cost);
	building_own(symbol Type, integer Floors, integer Cost);
	land_own(symbol Type, integer Plottage, integer Cost);
	water_transport_own(symbol Type, integer Cost).
 
predicates
	phone_book(symbol Surname, symbol Phone_num, address)
	auto(symbol Surname, symbol Brand, symbol Color, integer Cost)
	deposit(symbol Surname, symbol Bank, integer Bill, integer Sum)
 
	owner(symbol Surname, property Property)
 
	rule_1_2(symbol Surname, symbol Own_name, integer Cost)	
clauses
	phone_book(ivanov, "32-17-77", address(moscow, ilmenskiy, 14, 1018)).
	phone_book(petrov, "37-87-70", address(pyatigosk, lenina, 73, 527)).
	phone_book(sidorov, "98-36-83", address(moscow, tverskaya, 103, 17)).
	phone_book(vasilev, "59-60-55", address(samara, lesnaya, 10, 7)).
 
	auto(ivanov, bmw, white, 7800000).
	auto(petrov, volvo, red, 1300000).
	auto(sidorov, audi, green ,1600000).
 
	deposit(ivanov, vtb, 00232973, 300000).
	deposit(petrov, sberbank, 00101023, 36000).
	deposit(sidorov, alfabank, 00014584, 200000).

 	owner(Surname, auto_own(Brand, Color, Cost)):- auto(Surname, Brand, Color, Cost).
	owner(ivanov, building_own(supermarket, 1, 20000000)).
	owner(petrov, building_own(townhouse, 3, 15000000)).
	owner(petrov, land_own(field, 40, 4000000)).
	owner(petrov, water_transport_own(hydrocycle, 200000)).
	owner(vasiliev, water_transport_own(boat, 100000)).
 
	rule_1_2(Surname, Brand, Cost):-owner(Surname, auto_own(Brand, _, Cost)).
	rule_1_2(Surname, Type, Cost):-owner(Surname, building_own(Type, _, Cost)).
	rule_1_2(Surname, Type, Cost):-owner(Surname, land_own(Type, _, Cost)).
	rule_1_2(Surname, Type, Cost):-owner(Surname, water_transport_own(Type, Cost)).
goal
	%rule_1_2(ivanov, Own_name, _).
	%rule_1_2(petrov, Own_name, Cost).
