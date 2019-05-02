function res = trapezio(interInicial, interFinal, janela, funcao)
digits(6);
% h = b - a
%     -----
%       N
h = ((interFinal - interInicial)/ janela);
h2 = vpa(h); %aumenta a precisão do resultado

% calcula em quantas foram as subdivisões
tamanho = (interFinal-interInicial)/h2;
disp('Valor de tamanho:'); disp(tamanho);
%inicializa o array com as linhas x e f(x), com as colunas no número das
%subdivisões feitas!
array = zeros(2, int16(tamanho+1)); 

disp('Valor de h:'); disp(h2);
disp('########################');

%Necessário o tamanho+1, para calcular o f(n-1), ou seja o final do intervalo
    for j = 1:2 %
        x = interInicial;
        if(j == 1) % Seta os valores de X, no array
            for i = 1:tamanho+1
            %fprintf('Valor de x: %.6f\n', x);
            array(j,i) = x;
            x = x + h2;
            end
        end
        if(j == 2) % Seta os valores de f(X), no array
            for i = 1:tamanho+1
            array(j,i) = funcao(array(1,i)); %aplicando os valores de X na função passada por parametro
            %fprintf('Valor de f(x): %.6f\n', array(j,i));
            end
        end
        
    end
    disp(vpa(array));
    res = calculaTrapezio(array, h2, int16(tamanho));
    %res = vpa(array);
end

%Exemplo de uma tabela x, f(x):
%#####################Valores de X######################## 
%[          1.0,           2.0,             3.0]
%####################Valores de f(x)######################
%[ 0.3678794412, 0.01831563889, 0.0001234098041]
%#########################################################
%
% Para utilizar os valores f(x), utilizar o índice 2 no array, ex:
% array(2, 1) = f(x1), array(2, 2) = f(x2), e assim por diante!
function ret = calculaTrapezio(array, valorH, numeroDivisoes)

    digits(6);
    x = 0.000000;
    fprintf("Numero de divisões: %.6f\n", numeroDivisoes);
    fprintf("Valor de valorH: %.6f\n", valorH);

    for i = 1:numeroDivisoes
        % formula ( h ) x [(f(x1) + f(x2)]  
        %         (/2 ) 
        x = x + (vpa(valorH/2) * (array(2,i) + array(2,(i+1))));
        fprintf("O valor de Ix%d: %.6f\n", i, (vpa(valorH/2) * (array(2,i) + array(2,(i+1)))));
        %fprintf("O valor de x: %.10f, valor de f(x): %.10f\n", array(1,i), array(2,i));
    end
    ret = vpa(x);
end