classdef Gra
    properties
        nagroda;
        wybor;
        otwarta;
    end
    methods
        function G=losuj_nagrode(G)
            G.nagroda=randi(3);
        end
        function G=wybor_bramki(G)
            %G.wybor=input('Wybierz bramke: ');
            G.wybor=randi(3);
        end
        function G=otworz(G)
            if G.wybor~=G.nagroda
                G.otwarta = 6-G.wybor-G.nagroda;
            else
                G.otwarta = randi(3);
                while G.otwarta==G.nagroda
                    G.otwarta=randi(3);
                end
            end
          %  disp(['Otwarta bramka: ', num2str(G.otwarta)])
        end
        function czy=czy_wygrana(G)
            czy=G.wybor==G.nagroda;
        end
        function disp(G)
            disp(['Twoj wybor: ', num2str(G.wybor)]);
            disp(['Nagroda w: ', num2str(G.nagroda)]);
        end
        function G=zmien_bramke(G,czy)
            if czy
                G.wybor = 6-G.wybor-G.otwarta;
            end
        end
    end
end