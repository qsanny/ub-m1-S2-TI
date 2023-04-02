function lut(I)
    r = zeros(255, 1);
    g = zeros(255, 1);
    b = zeros(255, 1);

    r(30) = 1;
    r(92) = 1;
    r(256) = 0;
    g(92) = 1;
    g(227) = 1;
    g(256) = 0;
    b(151) = 1;
    b(256) = 0;
    map4C =[r g b]; %création de la LUT qui convertit les pixels à 1 et 4 en noir (0,0,0),
    % à 2 en blanc (1,1,1), à 3 en rouge (1,0,0) et à 5 en vert (0,1,0).
    figure
    image(I);
    colormap(map4C) % indique la palette de couleurs indexées considérée
  % map4C : intensités entre 0 et 1 pour les canaux R, G et B



