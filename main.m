% Wanderson Santos
% Diego dos Santos Soares - 2014.2.0028.0195-8
clear all
clc
% z = RungeKutta4Ordem(1.1, 5, 6.4, 0.001, @funcaoRunge);
%w = calcular(1, 3, 4, 0.139383);
%disp(w);
gaussSeidel();


%{
function ret = calcular(inicial, final, janela, erro)
    medido = trapezio(inicial, final, janela, @funcaoExponencial);
    fprintf('f(xU): %.6f\n', medido);
    x = calculaErroRelativo(erro, medido);
    fprintf('O erro � de: %.6f', x); disp('%');
    
    
    medido = simpsonTresOitavos(inicial, final, janela, @funcaoExponencial);
    fprintf('f(xU): %.6f\n', medido);
    x = calculaErroRelativo(erro, medido);
    fprintf('O erro � de: %.6f', x); disp('%');

    
    medido = simpsonUmTerco(inicial, final, janela, @funcaoExponencial);
    fprintf('f(xU): %.6f\n', medido);
    x = calculaErroRelativo(erro, medido);
    fprintf('O erro � de: %.6f', x); disp('%');
    
    disp('Romberg:');
    x = metodoRomberg(0, 4, 7, @funcaoY, 5216.926477, 0.0004);
    
    ret = x;
end
%}


function res = calculaErroRelativo(real, medido)
    digits(6);
    x = vpa(abs(real - medido))/vpa(real);
    res = vpa(x * 100);
end




