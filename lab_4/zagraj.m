clear variables;
clc;
ile=0;
%for i=1:1000
G = Gra;
G=losuj_nagrode(G)
G=G.wybor_bramki;
G=G.otworz();
G=G.zmien_bramke(false);
 if G.czy_wygrana
    % ile = ile +1;
     disp('Wygrana');
 else
     disp('Przegrana');
 end
 disp(G);

%end

%disp(ile);