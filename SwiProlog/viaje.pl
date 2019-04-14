% destinos y precio de pasaje.
transporte(roma,20000).
transporte(londres,25000).
transporte(tunez,15000).

% gastos de alojamiento.
alojamiento(hotel,roma,25000).
alojamiento(hotel,londres,15000).
alojamiento(hotel,tunez,10000).
alojamiento(hostal,roma,15000).
alojamiento(hostal,londres,10000).
alojamiento(hostal,tunez,8000).
alojamiento(camping,roma,10000).
alojamiento(camping,londres,5000).
alojamiento(camping,tunez,5000).

% (Lugar, dias, alojamiento, precio total)
viaje(W,X,Y,Z) :- transporte(W,A), alojamiento(Y,W,C), B is C*X, Z is A+B.
