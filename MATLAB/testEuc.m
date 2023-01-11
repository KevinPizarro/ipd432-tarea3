% A = [123 21 158 12 123];
% B = [2 21 40 132 12];

A = [187 221];
B = [137 241];

% A = [10 5 2 1];
% B = [5 2 40 13];

Sum = A+B;
Avg = floor(Sum/2);
Man = sum(abs(A-B));
Euc = floor(sqrt(sum((A-B).^2)));