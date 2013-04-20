-- Breaks the loop execution to jump to the next line
-- Only use it, if you use inifite loops.
function breakloop() tenv.maxloop(tenv.j - 1); return ""; end;

-- Makes an inifite loop out of the loop line. Make sure to make a break-point.
function inifiteloop() tenv.maxloop(tenv.j + 2); return ""; end;
