function binarisation_auto(I)
     histogramme(I)
     seuil = graythresh(I) * 255
    [m, n, can] = size(I); % m=nb lignes, n=nb colonnes, can=nb canaux
    if(can > 1)
        I = rgb2gray(I); % si l’image est en couleur, la transformer en NG
    end
    bin_img = I > seuil;
    
    figure
    subplot(1, 2, 1) %sélectionne le premier cadran de la fenêtre
    colormap(gray(256))
    imagesc(I); %affichage de l'image originale
    subplot(1, 2, 2) %sélectionne le deuxième cadran de la fenêtre
    colormap(gray(256))
    imagesc(bin_img); %affichage du résultat

end
