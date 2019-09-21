function cPoly = reposition(cPoly)
    % Select point
    [x,y] = ginput(1);
    
    [~,i] = min(vecnorm(cPoly - [x,y],2,2))
    plot(cPoly(i,1),cPoly(i,2),'gs','MarkerFaceColor','g')
    % Select new pos
    [x,y] = ginput(1);
    cPoly(i,:) = [x,y]
    
end

%spline(,array of point,) add first value in the end to close the curve