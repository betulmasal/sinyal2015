clear;
fid = fopen('notalar.txt','r');

[B] = textscan(fid, '%s%s%s',...
    'Delimiter',',','EmptyValue',-Inf);

fclose(fid);

%Örnekleme frekansi
fs = 11025;
%Duraklamalar
duraklama = zeros(1,round(fs*0.01));

%oktav degerleri
oktavDegeri = 0;

nota = B{1};
oktav = zeros(length(nota),1);
vurus = zeros(length(nota),1);

notalar = [];

for i=1:length(nota)
    %Dosyada okunan degerler sayiya donusturuluyor
    oktav(i) = str2num(B{2}{i});
    vurus(i) = str2num(B{3}{i});
   
    oktav(i) = oktav(i)+oktavDegeri;
    %disp(nota(i));
    frekans = frek(nota(i),oktav(i));
   
    [xx,tt] = note(frekans,vurus(i));
    
    notalar = [notalar xx duraklama];
   
end

%echo gecikmesi 
gecikme = round(fs*0.1);

for z=1:length(notalar(1,end))
    
    notalar(1,z+gecikme) = notalar(1,z+gecikme) + 0.3*notalar(1,z);
end

%normalizasyon islemi
%notalardaki en yuksek degerler
M = max(notalar);

notalar = notalar / M;

plot(notalar)

sound(notalar,fs)