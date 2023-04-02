% charger l'ensemble es images du dossier img
rep = 'img';
ext = '*.jpg';
chemin = fullfile(rep,ext);
list = dir(chemin);

for n = 1:numel(list)
  	nomImage=fullfile(rep, list(n).name);
	Image = imread(nomImage); % chargement de chaque image l'une après l'autre
    
    descripteur = descripteurCouleur(Image,3); % calcul du descripteur

    
    disp(['L''imgage ' nomImage ' a pour descripteur :    '  num2str(descripteur)])
end
clear
