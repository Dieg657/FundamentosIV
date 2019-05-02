function y = funcaoExponencial(x)
% função descrita e^(-x^2)
    digits(6);
    xValue = -x.^2;
    z = exp(xValue);
    y = vpa(z);
end