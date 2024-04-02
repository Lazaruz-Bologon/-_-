I_M = [0 50 100 150 200 250 300 350 400 500 600 700 800 900 1000];
U_CD = [0.5818 0.5912 0.6201 0.6645 0.7211 0.7848 0.8515 0.9086 0.9503 1.0065 1.0524 1.0936 1.1324 1.1720 1.2106];
R = 1000 * U_CD / 1.5;
R_ratio = (R - R(1)) / R(1);
K = -23.3946;
B = 0.0019871 * I_M + 0.002963;
correlation_coefficient_R = corrcoef(B, R);
correlation_coefficient_Rratio = corrcoef(B, R_ratio);
figure;
ax1 = gca;
ax2 = gca;
yyaxis left
plot(ax1, B, R, 'o-', 'LineWidth', 2, 'MarkerSize', 6);
title('R 和 R_ratio 关于 B 的变化曲线');
xlabel('B (单位: mT)');
ylabel('R (单位: Ω)');
yyaxis right
plot(ax2, B, R_ratio, 's-', 'LineWidth', 2, 'MarkerSize', 6);
ylabel('R_ratio (无单位)');
legend('R vs B', 'R_ratio vs B', 'Location', 'best');

