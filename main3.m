% Максимизируем L = 2*x1 + 1*x2 + 3*x3
% Ограничения: x1+x2+x3 <= 3000, x1>=1000, x2>=300, x3>=200

c = [2; 1; 3];

A = [1, 1, 1]; % x1 + x2 + x3 <= 3000
b = [3000];

lb = [1000; 300; 200];
ub = [];

ctype = "U";
vartype = "CCC";
sense = -1; % Знак: -1 для максимизации

[x_opt, L_max, errnum, extra] = glpk(c, A, b, lb, ub, ctype, vartype, sense);


fprintf('Оптимальное распределение бюджета:\n');
fprintf(' Еда: %.2f руб.\n', x_opt(1));
fprintf(' Транспорт: %.2f руб.\n', x_opt(2));
fprintf(' Развлечения: %.2f руб.\n', x_opt(3));
fprintf('Максимальное удовольствие: %.2f\n', L_max);
fprintf('errnum = %d (o = ошибок нет)\n', errnum);
fprintf('status = %d (5 = оптимум найден)\n', extra.status);
