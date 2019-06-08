clear all
clc

fprintf('##########################   Jacobi   ###############################\n');
metodoJacobi();

fprintf('########################## Gauss-Seidel #############################\n');
gaussSeidel();

fprintf('########################## Diferenciação Numérica ###################\n');
diferenciacaoNumerica(0.1, 1.5, @funcaoDiferenciacaoNumerica, @calculaErroRelativo, -0.3161976736856);

calcularTrapeziosESimpson(1, 3, 4, 0.139383, @calculaErroRelativo);

fprintf('########################## Romberg ##################################\n');
metodoRomberg();

fprintf('###################### Descida de Gradiente #########################\n');
descidaGradiente(@funcaoYDescidaGradiente, 6, 0.01, 0.00001, 10000);

fprintf('########################## Runge-Kutta 4 Ordem ######################\n');
RungeKutta4Ordem(1.0, 9, 1.1, 0.01, @funcaoRunge);

function calcularTrapeziosESimpson(inicial, final, janela, valorFuncao, funcao)
    fprintf('########################## Trapézio #########################\n');
    medido = trapezio(inicial, final, janela, @funcaoExponencial);
    fprintf('f(xU): %.6f\n', medido);
    x = funcao(valorFuncao, medido);
    fprintf('O erro é de: %.6f', abs(x)); disp('%');
    
    
    fprintf('########################## Simpson 3/8 #########################\n');
    medido = simpsonTresOitavos(inicial, final, janela, @funcaoExponencial);
    fprintf('f(xU): %.6f\n', medido);
    x = funcao(valorFuncao, medido);
    fprintf('O erro é de: %.6f', abs(x)); disp('%');
    
    fprintf('########################## Simpson 1/3 #########################\n');
    medido = simpsonUmTerco(inicial, final, janela, @funcaoExponencial);
    fprintf('f(xU): %.6f\n', medido);
    x = funcao(valorFuncao, medido);
    fprintf('O erro é de: %.6f', abs(x)); disp('%');
end






