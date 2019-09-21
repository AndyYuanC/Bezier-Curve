clear all;

% Init control polygon
fig = figure;
axis([0 1 0 1]);
[x, y] = getpts();
cPoly = [x y];

% Plot control polygon
plot(cPoly(:,1), cPoly(:,2),'b-s');
hold on;

% Allocate memory
stepSize = 0.01;
s = size(0:0.01:1)
c = zeros(s(2),2);
si = s(2)

while 1
    
    axis([0 1 0 1]);
    
    for i = 0:si-1
        c(i+1,:) = deCasteljau(cPoly,i*0.01)
    
    end
    plot(c(:,1),c(:,2),'r');
    cPoly = reposition(cPoly)
    clf(fig)
    plot(cPoly(:,1), cPoly(:,2),'b-s');
    hold on;
end

    
 
 
% Plot curve

%plot
