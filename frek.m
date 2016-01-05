function[frek] = frek(nota,oktav)
    

    if nargin < 2  % oktav belirtilmemisse,
        oktav = 4; % 4.oktav kabul ediliyor.
    end
    
    notalar = {'do','dod','re','mib','mi','fa','fad','sol','sold','la','sib','si','sus'};
    
    frek = 0; %Sus geldigi zaman geri dönmesi için yazildi
    
    index = find(ismember(notalar,nota)); %%istenilen notanin dizideki yeri bulunuyor
    
    if index~=13 %%Sus geldiyse hesaplanmayacak
        base = 440; %%La notasinin 4. oktavdaki degeri
        frek=base*2^((index-10)/12 + (oktav-4));
    end
end
    