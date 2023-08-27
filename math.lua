function aget(x1,y1,x2,y2) return atan2(-(x1-x2), -(y1-y2)) end

function dst(x0,y0,x1,y1)
    local dx=(x0-x1)/64
    local dy=(y0-y1)/64
    local dsq=dx*dx+dy*dy
    if(dsq<0) return 32767.99999
    return sqrt(dsq)*64
end

function sqr(x) return x*x end

function randib(a,b)
    return flr(rnd(b-a+1))+a
end
