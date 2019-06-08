function res = calculaErroRelativo(real, medido)
    digits(6);
    x = vpa(abs(real - medido))/vpa(real);
    res = vpa(x * 100);
end