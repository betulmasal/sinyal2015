function[x,t]=note(f,dur) % sin�s sinyali olu�turur
t=0:1/100:dur;
x=sin(2*pi*f*t);