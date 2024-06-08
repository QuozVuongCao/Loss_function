clc;

h = [1 0 0 0];
g = [0 1 0 0];
s = [0 0 1 0];

if isequal(matrix, h)
    x = ga(@Loss_Function1,40);
elseif isequal(matrix, g)
    x = ga(@Loss_Function2,40);
elseif isequal(matrix, s)
    x = ga(@Loss_Function3,40);
end
    