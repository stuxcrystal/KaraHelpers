-- This Function converts a iterator into an array.
function toarray(...) local result = {}; local i = 1; for item in ... do result[i] = item; i=i+1; end; return result; end;

-- Load Standart Lua Environment
function loadEnvironment() for key, value in pairs(tenv._G) do if tenv[key] == nil then tenv[key] = value; end; end; end;

-- Sets a value
function setValue(name, value, obj) if obj==nil then obj = tenv; end; obj[name] = value; return ""; end;
