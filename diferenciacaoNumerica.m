%          h                h = 0.1         h = 0.01        h = 0.001
%Diferen�as progressivas    ?0.2809448      ?0.3125246      ?0.3158289
%Diferen�as regressivas     ?0.3545920      ?0.3199024      ?0.3165667
%Valor da Derivada no ponto f'(1.5) = -0.3161976736856;

function diferenciacaoNumerica(janelaH, pontoDeInteresse, funcao, funcErro, valorFuncao)
    %Calcular diferenciação Progressiva
    fprintf('########################## Diferencia��o Progressiva ###################\n');
    medido = diferenciacaoProgressiva(janelaH, pontoDeInteresse, funcao);
    fprintf('f(xU): %.6f\n', medido);
    x = funcErro(valorFuncao, medido);
    fprintf('O erro � de: %.6f', abs(x)); disp('%');
    %Calcular diferenciação Regressiva
    fprintf('########################## Diferencia��o Regressiva ###################\n');
    medido = diferenciacaoRegressiva(janelaH, pontoDeInteresse, funcao);
    fprintf('f(xU): %.6f\n', medido);
    x = funcErro(valorFuncao, medido);
    fprintf('O erro � de: %.6f', abs(x)); disp('%');
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