% Wanderson Santos
% Diego dos Santos Soares - 2014.2.0028.0195-8

digits(6);
z = calcular(1, 3, 600, 0.139383);

function ret = calcular(inicial, final, janela, erro)
    %medido = trapezio(inicial, final, janela, @funcaoExponencial);
    %fprintf('f(xU): %.6f\n', medido);
    %x = calculaErroRelativo(erro, medido);
    %fprintf('O erro é de: %.6f', x); disp('%');
    
    
    %medido = simpsonTresOitavos(inicial, final, janela, @funcaoExponencial);
    %fprintf('f(xU): %.6f\n', medido);
    %x = calculaErroRelativo(erro, medido);
    %fprintf('O erro é de: %.6f', x); disp('%');
    
    medido = simpsonUmTerco(inicial, final, janela, @funcaoExponencial);
    fprintf('f(xU): %.6f\n', medido);
    x = calculaErroRelativo(erro, medido);
    fprintf('O erro é de: %.6f', x); disp('%');
    
    ret = x;
end

function res = calculaErroRelativo(real, medido)
    digits(6);
    x = vpa(abs(real - medido))/vpa(real);
    res = vpa(x * 100);
end