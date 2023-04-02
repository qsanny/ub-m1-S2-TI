function histogramme(I)
    [m, n, can] = size(I); % m=nb lignes, n=nb colonnes, can=nb canaux
    m
    n
    if(can > 1)
        I = rgb2gray(I); % si l’image est en couleur, la transformer en NG
    end
    his = zeros (255, 1); % image résultante (de même taille que I) :
    for i = 1:m
        for j =1:n
            ng = I(i, j);
            his(ng+1) = his(ng+1)+1;
        end
    end

    figure
    x = 1:255;
    bar(his)
    figure
    histogram(I)

end
