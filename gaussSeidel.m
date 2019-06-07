function gaussSeidel()

N = input('Entre com o numero de linhas para as matrizes:');
A = input('Entre com a matriz A (Entre colchetes []): ');
%A=[5 -2 3; -3 9 1; 2 -1 -7];
b = input('Entre com a matriz B (Entre colchetes []): ');
b = b'; %Efetua a transposta de b
xAtual = input('Entre com a matriz de chute (Entre colchetes []): ');
xAtual = xAtual'; %Efetua a transposta de x
erro = input('Entre com a margem de erro: ');
valorX = Inf; %Seta com valor infinito
iteracoes=0;

while valorX > erro % Verifica se o valor de x é maior que o erro definido!
    xAnterior = xAtual; % Define o vetor atual como vetor antigo!
    for i=1:N
        
        S=0;
        
        %Na equação analisa os X'ses anteriores ao X, pelo valor
        %do vetor chute!
        %Começa a funcionar apenas quando o X2 está isolado!
        for j=1:i-1
                S = S + (A(i,j) * xAtual(j));
                %fprintf('Linha 17, Iteracao: %d, i: %d, S: %6.f, x: %.6f\n', GaussItr+1, i, S, x(j));
        end
        
        %Na equação substitui os X'ses sucessores ao X isolado, pelo valor
        %do vetor chute!
        for j=i+1:N
                S = S + (A(i,j) * xAnterior(j));
                %fprintf('Linha 25, Iteracao: %d, i: %d, S: %6.f\n', GaussItr+1, i, S);
        end
        
        %Calcula o X isolado com segundo a formula:
        %Xn = (1/A(n,n)) * (b(i) - S);
        xAtual(i) = (1/A(i,i)) * (b(i) - S);
    end
    
    iteracoes=iteracoes+1;
    valorX = norm(xAnterior-xAtual); %Calcula erro absoluto e normaliza o resultado do vetor;
end
fprintf('Solução para o sistema é:\n');
disp(xAtual);
fprintf('com %d iterações de Gauss-Seidel!\n', iteracoes);
end

