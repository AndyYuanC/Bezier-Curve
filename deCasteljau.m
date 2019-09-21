function point = deCasteljau(cPoly,t)

% Init Ps
nrCPs = size(cPoly,1);

%P = ...
x = cPoly(:,1)

y = cPoly(:,2)
for i = nrCPs-1:-1:1
    for ii = 1:i
        x(ii) = t * x(ii) + (1-t)*x(ii+1)
        y(ii) = t * y(ii) + (1-t)*y(ii+1)
    end
end
point = [x(1),y(1)]
% Iterate over cps and levels

end

