function [f]=frek(n,o) %frekans hesaplamasý yapar
N={'Do','C#','Re','Eb','Mi','Fa','F#','Sol','G#','La','Bb','Si'}; %string bir yapý oluþturuldu
a=strcmp(N,n); %string yapýda gönderilen nota aratýlýp deðer 1 olarak döndüren bir int dizi oluþturuldu
m=find(a,1);% oluþturulan int dizide 1 olan deðerin indeksi döndürüldü
f=floor(16.35*(2^o)*(2^((m-1)/12))); % diziler 1 den baþlatýldýðý için m-1 hesaplmasý yapýldý ve yuvalarma yapýlarak frekans hesaplandý