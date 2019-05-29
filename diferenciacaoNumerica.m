% Diferenciação Progressiva %
function differenciacaoNumerica(janelaH, pontoDeInteresse, funcao)
    %Calcular diferenciação Progressiva
    %Calcular diferenciação Regressiva
    %Calcular o erro de ambos
end

function res = diferenciacaoProgressiva(janelaH, pontoDeInteresse, funcao)
digits(6);

z = 0.000000;
x = [pontoDeInteresse, pontoDeInteresse+janelaH];
y = [funcao(x(1)), funcao(x(2))];

z = (y(2) - y(1))/janelaH;

res = z;
end

function res = diferenciacaoRegressiva(janelaH, pontoDeInteresse, funcao)
digits(6);

z = 0.000000;
x = [pontoDeInteresse-janelaH, pontoDeInteresse];
y = [funcao(x(1)), funcao(x(2))];

z = (y(2) - y(1))/janelaH;

res = z;
end