function matrizR = metodoRomberg()

xInicial = 0;
xFinal = 4;
ordemN = 7;
valorFuncao = 5216.926477;
erro = 0.0001;
i = 0;
j = 0;

matrizR = zeros(ordemN, ordemN);
    for i = 1:ordemN+1
        matrizR(i, 1) = trapezio(xInicial, xFinal, 2.^(i-1), @funcaoY);
        %fprintf('%d Ordem: %.6f\n', 2.^(i-1), matrizR(i, 1));
        k = i;
        for j = 2:k
            R = matrizR(k,j-1) - matrizR(k-1,j-1);
            RDem = 4.^(j-1);
            matrizR(k,j) = matrizR(k,j-1) + (R/(RDem-1));
        end
        aux = abs((valorFuncao - matrizR(k,j))/valorFuncao);
        %fprintf('Ordem: %.6f, Aux: %.6f\n', matrizR(k, j), aux);
        if aux < erro
            break;
        end
    end
    disp(matrizR);
end

function res = trapezio(xInicial, xFinal, numeroJanelas, funcao)

Xi = 0.0;
h = (xFinal - xInicial)/numeroJanelas;
    %
    %   Trapézio = (h/2)*(f(X0)+f(X1))
    %
    for x = xInicial:h:(xFinal-h)
        Xi = Xi + vpa((1/2) *(funcao(x) + funcao(x+h)) * h);
    end
    res = Xi;
end