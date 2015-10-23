function dy = duff( t, y )

    global delta F omega

    eq1 = y(2);
    eq2 = F*cos(omega*t) - (delta*y(2) - y(1) + y(1)^3);

    dy = [eq1; eq2];
end

