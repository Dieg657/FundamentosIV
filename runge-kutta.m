function res = kInicial(x, y, funcao)

res = funcao(x, y);

end

function res = interK(x, y, k, h, funcao)

x2 = x + h/2;
y2 = y + k/2;

res = funcao(x2, y2);

end

function res = kFinal(x, y, k, h, funcao)

res = funcao(x, y);

end