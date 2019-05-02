function ret = simpsonTresOitavos(interInicial, interFinal, janela, funcao)
digits(6); % Define a precis�o em 6 digitos ap�s a virgula!
% h = b - a
%     -----
%     3 * N

h = ((interFinal - interInicial)/ (3 * janela));
h2 = vpa(h); % Aumenta a precis�o do resultado

% Calcula em quantas foram as subdivis�es

tamanho = (interFinal-interInicial)/h2;
%disp('Valor de tamanho:'); disp(tamanho);

% Inicializa o array com as linhas x e f(x), com as colunas no n�mero das
% subdivis�es feitas!
array = zeros(2, int16(tamanho+1)); 

%disp('Valor de h:'); disp(h2);
disp('########################');
%Necess�rio o tamanho+1, para calcular o f(n-1), ou seja o final do intervalo
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
            array(j,i) = funcao(array(1,i)); %aplicando os valores de X na fun��o passada por parametro
            %fprintf('Valor de f(x): %.6f\n', array(j,i));
            end
        end
        
    end
disp(vpa(array));
disp('########################');
ret = calculaSimpsonTresOitavos(array, h2, int16(tamanho));
end

%Exemplo de uma tabela x, f(x):
%#####################Valores de X######################## 
%[          1.0,           2.0,             3.0]
%####################Valores de f(x)######################
%[ 0.3678794412, 0.01831563889, 0.0001234098041]
%#########################################################
%
% Para utilizar os valores f(x), utilizar o �ndice 2 no array, ex:
% array(2, 1) = f(x1), array(2, 2) = f(x2), e assim por diante!
function ret = calculaSimpsonTresOitavos(array, valorH, numeroDivisoes)
    digits(6);
    x = 0.000000;
    fprintf("Numero de divis�es: %.6f\n", numeroDivisoes);
    fprintf("Valor de valorH: %.6f\n", valorH);

    for i = 1:3:numeroDivisoes
        % formula ( 3*h ) x [(f(x1) + 3*f(x2) + 3*f(x3) + f(x4)]  
        %         ( /8 )
        x = x + (vpa(valorH/3) * (array(2,i) + (3 * array(2,(i+1))) + (3 * array(2,(i+2))) + array(2,(i+3))));
        %fprintf("O valor de Ix%d: %.6f\n", i, (vpa(valorH/3) * (array(2,i) + (4 * array(2,(i+1))) + array(2,(i+2)))));
        fprintf("h: %.6f ", vpa((3*valorH)/8)); 
        fprintf("f(x%d): %.6f, 3*f(x%d): %.6f, 3*f(x%d): %.6f, f(x%d): %.6f\n", i, array(2,i), i+1, (3*array(2,(i+1))), i+2, (4*array(2,(i+2))), i+3, array(2,(i+3)));
    end
    ret = vpa(x);
end