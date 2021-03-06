%..plot optima..
prob_name = 'modified_rastrigin'
n_var = 2
data = load('optima.txt');
figure()
if n_var == 2
    x = data(:,2);
    y = data(:,3);
    z = data(:,1);
    scatter3(x,y,-z,'filled','ro');
    hold on
elseif n_var == 1
    x_d = data(:,2);
    y_d = data(:,1);
    plot(x_d,-y_d,'*');
    hold on
end
if strcmp(prob_name,'himmelblau')
    syms x y
    f = 200 - (x*x + y - 11)^2 - (x + y*y - 7)^2;
    fsurf(f, [-6 6 -6 6])
    title('Himmelblau')
end

if strcmp(prob_name,'six_hump_camel')
    syms x y
    f = -((4 - 2.1*x*x + (x^4)/3)*x*x + x*y + (4*y*y - 4)*y*y);
    fsurf(f, [-1.9 1.9 -1.1 1.1])
    title('Six Hump Camel Back')
end

if strcmp(prob_name,'modified_rastrigin')
    syms x y
    f = -(10 + 9*cos(2*pi*3*x)) - (10 + 9*cos(2*pi*4*y));
    fsurf(f, [0 1 0 1])
    title('Modified Rastrigin')
    xlabel('x')
    ylabel('y')
end


if strcmp(prob_name,'equal_maxima')
    x = 0:0.01:1;
    func = sin(5*pi*x).^6;
    plot(x,func);
    hold off
end
