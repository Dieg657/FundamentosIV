function RungeKutta4Ordem(x, y, xFinal, h, funcao)
  iteracoes = (xFinal - x)/h;
    for i = 1:iteracoes
         y = RungeKutta(x, y, h, funcao);
         x = x + h;
         fprintf('X%d: %.5f, Y%d: %.5f\n',i, x, i, y);
    end
end

function res = kInicial(x, y, funcao)

res = funcao(x, y);

end

function res = interK(x, y, k, h, funcao)

x2 = x + (h/2);
y2 = y + (k * (h/2));

res = funcao(x2, y2);

end

function res = kFinal(x, y, k, h, funcao)

res = funcao(x + h, y + (k * h));

end

function res = RungeKutta(x, y, h, funcao)

k1 = kInicial(x, y, funcao);
k2 = interK(x, y, k1, h, funcao);
k3 = interK(x, y, k2, h, funcao);
k4 = kFinal(x, y, k3, h, funcao);

res = y + ((1/6) * (k1 + (2 * k2) + (2 * k3) + k4));


end
