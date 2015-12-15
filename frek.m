function [f]=frek(n,o) %frekans hesaplamas� yapar
N={'Do','C#','Re','Eb','Mi','Fa','F#','Sol','G#','La','Bb','Si'}; %string bir yap� olu�turuldu
a=strcmp(N,n); %string yap�da g�nderilen nota arat�l�p de�er 1 olarak d�nd�ren bir int dizi olu�turuldu
m=find(a,1);% olu�turulan int dizide 1 olan de�erin indeksi d�nd�r�ld�
f=floor(16.35*(2^o)*(2^((m-1)/12))); % diziler 1 den ba�lat�ld��� i�in m-1 hesaplmas� yap�ld� ve yuvalarma yap�larak frekans hesapland�