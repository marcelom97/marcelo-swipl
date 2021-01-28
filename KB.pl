:- dynamic rule/3.

rule(1, values([yes, no, yes, yes, yes, yes, Temp, no, no, no]), Answer):-
  number(Temp),
  Temp >= 5,
  Temp =< 35,
	Answer = 'You can drive your motorcycle with safety.'.

rule(2, values([no, Tyres, Fuel, Helmet, Jacket, Trousers, Temp, Rain, WetRoad, Ice]), Answer):-
	  Answer = 'Not appropriate for riding, your brakes needs service.'.

rule(2, values([maybe, Tyres, Fuel, Helmet, Jacket, Trousers, Temp, Rain, WetRoad, Ice]), Answer):-
	  Answer = 'Please check your brakes and fill the whole form.'.

rule(3, values([Brakes, yes, Fuel, Helmet, Jacket, Trousers, Temp, Rain, WetRoad, Ice]), Answer):-
	Answer = 'Not appropriate for riding, you need to change your tyres.'.

rule(3, values([Brakes, maybe, Fuel, Helmet, Jacket, Trousers, Temp, Rain, WetRoad, Ice]), Answer):-
	Answer = 'Please check your tyres and fill the whole form.'.

rule(4, values([Brakes, Tyres, no, Helmet, Jacket, Trousers, Temp, Rain, WetRoad, Ice]), Answer):-
	Answer = 'Not appropriate for riding, please refill your fuel deposit.'.

rule(4, values([Brakes, Tyres, maybe, Helmet, Jacket, Trousers, Temp, Rain, WetRoad, Ice]), Answer):-
	Answer = 'Please check your fuel deposit and fill the whole form.'.

rule(5, values([Brakes, Tyres, Fuel, no, Jacket, Trousers, Temp, Rain, WetRoad, Ice]), Answer):-
	Answer = 'Not appropriate for riding, always wear a helmet when you ride a motorcycle.'.

rule(5, values([Brakes, Tyres, Fuel, maybe, Jacket, Trousers, Temp, Rain, WetRoad, Ice]), Answer):-
	Answer = 'Please check for your helmet and fill the whole form.'.

rule(6, values([Brakes, Tyres, Fuel, Helmet, no, Trousers, Temp, Rain, WetRoad, Ice]), Answer):-
	Answer = 'Not appropriate for riding, always wear protection jacket when you ride a motorcycle.'.

rule(6, values([Brakes, Tyres, Fuel, Helmet, maybe, Trousers, Temp, Rain, WetRoad, Ice]), Answer):-
	Answer = 'Please check your wardrobe for protection jacket and fill the whole form.'.

rule(7, values([Brakes, Tyres, Fuel, Helmet, Jacket, no, Temp, Rain, WetRoad, Ice]), Answer):-
	Answer = 'Not appropriate for riding, always wear protection trousers when you ride a motorcycle.'.

rule(7, values([Brakes, Tyres, Fuel, Helmet, Jacket, maybe, Temp, Rain, WetRoad, Ice]), Answer):-
	Answer = 'Please check your wardrobe for protection trousers fill the whole form.'.

rule(8, values([Brakes, Tyres, Fuel, Helmet, Jacket, Trousers, Temp, yes, WetRoad, Ice]), Answer):-
	Answer = 'Not appropriate for riding, riding on rain can be very dangerous.'.

rule(8, values([Brakes, Tyres, Fuel, Helmet, Jacket, Trousers, Temp, maybe, WetRoad, Ice]), Answer):-
	Answer = 'Please check the weather and fill the whole form.'.

rule(9, values([Brakes, Tyres, Fuel, Helmet, Jacket, Trousers, Temp, Rain, yes, Ice]), Answer):-
	Answer = 'Not appropriate for riding, riding on wet road can be very dangerous.'.

rule(9, values([Brakes, Tyres, Fuel, Helmet, Jacket, Trousers, Temp, Rain, maybe, Ice]), Answer):-
	Answer = 'Please check the road and fill the whole form.'.

rule(10, values([Brakes, Tyres, Fuel, Helmet, Jacket, Trousers, Temp, Rain, WetRoad, yes]), Answer):-
	Answer = 'Not appropriate for riding, road with ice can be very dangerous.'.

rule(10, values([Brakes, Tyres, Fuel, Helmet, Jacket, Trousers, Temp, Rain, WetRoad, maybe]), Answer):-
	Answer = 'Please check the road and fill the whole form.'.

rule(11, values([Brakes, Tyres, Fuel, Helmet, Jacket, Trousers, Temp, Rain, WetRoad, Ice]), Answer):-
  number(Temp),
  Temp >= 5,
  Temp =< 35,
  Answer = 'Check the weather and your motorcycle and fill the form properly.'.
  
rule(12, values([Brakes, Tyres, Fuel, Helmet, Jacket, Trousers, Temp, Rain, WetRoad, Ice]), Answer):-
  number(Temp),
  Temp < 5,
	Answer = 'Not appropriate for riding, low temperature can be very dangerous.'.

rule(13, values([Brakes, Tyres, Fuel, Helmet, Jacket, Trousers, Temp, Rain, WetRoad, Ice]), Answer):-
  number(Temp),
  Temp > 35,
	Answer = 'Not appropriate for riding, high temperature can be very dangerous.'.