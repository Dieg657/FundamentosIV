% Wanderson Santos
% Diego dos Santos Soares - 2014.2.0028.0195-8
clear all
clc
z = RungeKutta4Ordem(-10000, 5, 6.4, 0.2, @funcaoRunge);

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
    %
    
    ret = x;
end
%}


    


%{
function res = calculaErroRelativo(real, medido)
    digits(6);
    x = vpa(abs(real - medido))/vpa(real);
    res = vpa(x * 100);
end
%}


%%w = calcular(1, 3, 4, 0.139383);
