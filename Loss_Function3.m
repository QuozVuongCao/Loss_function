function L = Loss_Function3(x)
Whh = reshape(x(1:9),3,3);
Wxh = reshape(x(10:21),3,4);
bh = reshape(x(22:24),3,1);
Why = reshape(x(25:36),4,3);
by = reshape(x(37:40),4,1);
    
    x1 = [0 0 1 0]'; %s
    x2 = [0 0 0 1]'; %t
    x3 = [1 0 0 0]'; %a
    x4 = [0 1 0 0]'; %r
    
    h0 = [0 0 0]';

    h1 = tanh(Whh*h0 + Wxh*x1 + bh);
    h2 = tanh(Whh*h1 + Wxh*x2 + bh);
    h3 = tanh(Whh*h2 + Wxh*x3 + bh);
    h4 = tanh(Whh*h3 + Wxh*x4 + bh);

    y1 = softmax(Why*h1 + by);
    y2 = softmax(Why*h2 + by);
    y3 = softmax(Why*h3 + by);
    y4 = softmax(Why*h4 + by);

    L1 = crossentropy(y1,x2);
    L2 = crossentropy(y2,x3);
    L3 = crossentropy(y3,x4);
    L4 = crossentropy(y4,x2);

    L = L1 + L2 + L3 + L4;
    
    y1 = softmax(Why*h1 + by)'
    y2 = softmax(Why*h2 + by)'
    y3 = softmax(Why*h3 + by)'
    y4 = softmax(Why*h4 + by)'