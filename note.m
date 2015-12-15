function[x,t]=note(f,dur) % sinüs sinyali oluþturur
t=0:1/100:dur;
x=sin(2*pi*f*t);