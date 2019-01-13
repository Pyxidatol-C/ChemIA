k1 = 1e3;     % 1/(Ms)
k_1 = 1;      % 1/s
k2 = 0.05;    % 1/s
E0 = 0.5e-3;  % M
options = [];

[t, y] = ode23('mmfunc', [0 180], [1e-3 0 0], options, k1, k_1, k2, E0);

S = y(:, 1);
ES = y(:, 2);
E = E0 - ES;
P = y(:, 3);
plot(t, S, 'r', t, E, 'b', t, ES, 'g', t, P, 'c');
legend('S', 'E', 'ES', 'P');
