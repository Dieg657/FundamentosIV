function descidaGradiente(funcao, x, alfa, erro, numeroIteracoes)
% funcao, é a função derivada onde iremos aplicar o x atual, o y devolvido
% será multiplicado com o alfa!
% xEncontrado antes do laço é o valor por onde começamos a nossa procura!
% alfa, é o tamanho do nosso passo.
% erro, é a tolerância de aproximação.
% numeroIteracoes a quantidade de iterações que desejamos executar
% Critério de Parada: Se o valor de x encontrado subtraído do x atual for
% menor que o erro, a busca é encerrada, do contrário continua até que
% atinja a quantidade máxima de iterações!

i = 1;
xAtual = 0;
passo = 0;
xEncontrado = x; % inicializa a variável com o x por onde queremos começar a busca!
    while(i~=numeroIteracoes)
        xAtual = xEncontrado;
        xEncontrado = xAtual - (alfa * funcao(xAtual));
        errAbsoluto = xEncontrado - xAtual; %Calcula o erro absoluto
        if (abs(errAbsoluto) <= erro) % Verifica se o erro está dentro da tolerância 
            break;
        end
        i = i + 1; % incrementa a iteração
    end
fprintf('O valor mínimo foi encontrado em X: %.8f\nCom %d iterações!\n', xEncontrado, i);
end