function descidaGradiente(funcao, x, alfa, erro, numeroIteracoes)
% funcao, � a fun��o derivada onde iremos aplicar o x atual, o y devolvido
% ser� multiplicado com o alfa!
% xEncontrado antes do la�o � o valor por onde come�amos a nossa procura!
% alfa, � o tamanho do nosso passo.
% erro, � a toler�ncia de aproxima��o.
% numeroIteracoes a quantidade de itera��es que desejamos executar
% Crit�rio de Parada: Se o valor de x encontrado subtra�do do x atual for
% menor que o erro, a busca � encerrada, do contr�rio continua at� que
% atinja a quantidade m�xima de itera��es!

i = 1;
xAtual = 0;
passo = 0;
xEncontrado = x; % inicializa a vari�vel com o x por onde queremos come�ar a busca!
    while(i~=numeroIteracoes)
        xAtual = xEncontrado;
        xEncontrado = xAtual - (alfa * funcao(xAtual));
        errAbsoluto = xEncontrado - xAtual; %Calcula o erro absoluto
        if (abs(errAbsoluto) <= erro) % Verifica se o erro est� dentro da toler�ncia 
            break;
        end
        i = i + 1; % incrementa a itera��o
    end
fprintf('O valor m�nimo foi encontrado em X: %.8f\nCom %d itera��es!\n', xEncontrado, i);
end