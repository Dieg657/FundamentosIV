function RungeKutta4Ordem(x, y, h, iteracoes, funcao)

    for i = 1:iteracoes
         y = RungeKutta(x, y, k, h, funcao);
         x = x + h;
         fprintf('AAAAA');
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

yObjetivo = y + ((1/6) * (k1 + (2 * k2) + (2 * k3) + k4));

res = yObjetivo;
end
