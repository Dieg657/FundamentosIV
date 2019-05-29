% Diferenciação Progressiva %
function differenciacaoNumericaTresPontos(janelaH, pontoDeInteresse, funcao)
    %Calcular diferenciação Progressiva Três Pontos
    %Calcular diferenciação Regressiva Três Pontos
    %Calcular diferenciação Central Três Ṕontos
    %Calcular o erro de ambos
end

function res = diferenciacaoProgressivaTresPontos(janelaH, pontoDeInteresse, funcao)
digits(6);

z = 0.000000;

res = z;
end

function res = diferenciacaoRegressivaTresPontos(janelaH, pontoDeInteresse, funcao)
digits(6);

z = 0.000000;

res = z;
end

function res = diferenciacaoCentralTresPontos(janelaH, pontoDeInteresse, funcao)
digits(6);

z = 0.000000;
x = [pontoDeInteresse-janelaH, pontoDeInteresse+janelaH];
y = [funcao(x(1)), funcao(x(2))];

z = (y(2) - y(1))/(2*janelaH);

res = z;
end
