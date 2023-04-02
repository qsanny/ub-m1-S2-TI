J = imnoise(I,'gaussian',0.2);
    subplot(5,2,5)
    imshow(J)
    title("gaussian")
    subplot(5,2,6)
    histogram(J)

    J = imnoise(I,'poisson');
    subplot(5,2,7)
    imshow(J)
    title("poisson")
    subplot(5,2,8)
    histogram(J)

    J = imnoise(I,'speckle');
    subplot(5,2,9)
    imshow(J)
    title("speckle")
    subplot(5,2,10)
    histogram(J)