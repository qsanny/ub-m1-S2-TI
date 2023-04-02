

function res = inversion (I) % fonction qui prend en paramètre une image I
% et retourne une image res (négatif)
[m, n, can] = size(I); % m=nb lignes, n=nb colonnes, can=nb canaux
res = zeros (m, n); % image résultante (de même taille que I) :
% initialisée à 0 partout
if(can > 1)
I = rgb2gray(I); % si l’image est en couleur, la transformer en NG
end
res = 255 - I; % l’inversion
figure
%divise la fenêtre en 1 ligne et 2 colonnes : pour afficher 2 images l'une
%à côté de l'autre
subplot(1, 2, 1) %sélectionne le premier cadran de la fenêtre
colormap(gray(256))
imagesc(I); %affichage de l'image originale
subplot(1, 2, 2) %sélectionne le deuxième cadran de la fenêtre
colormap(gray(256))
imagesc(res); %affichage du résultat
title(strcat(['Image de taille ', num2str(m), 'x', num2str(n)]));
end