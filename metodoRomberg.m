function res = metodoRomberg(xInicial, xFinal, ordem, baseN, funcao)
i = 0;
j = 0;
matrizR = zeros(ordem, ordem);
    for i = 1:ordem
        matrizR(i+1, 1) = trapezio(xInicial, xFinal, baseN*i, funcao);
        fprintf('%d Ordem: %.6f\n', baseN*i, matrizR(i+1, 1));
    end
    res = matrizR;
end

% 2^1 = 2 Ordem 
% 2^2 = 4 Ordem 
% 2^3 = 8 Ordem
% 2^4 = 16 Ordem
function res = trapezio(xInicial, xFinal, numeroJanelas, funcao)
Xi = 0;
h = (xFinal - xInicial)/numeroJanelas;
    %
    %   Trap�zio = (h/2)*(f(X0)+f(X1))
    %
    for x = xInicial:h:(xFinal-h)
        Xi = Xi + (1/2) *(funcao(x) + funcao(x+h)) * h;
    end
    
    res = Xi;
end