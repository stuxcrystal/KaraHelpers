-- Syllable X Position (for use like in NyuFX.)
-- If you want to have the exact syllable position without vertical kana lines, use
-- the function getSylXOrig()
--
-- Currently untested.
function getSylX() if tenv["syl"] == nil then error("This function must be executed in a syllable template."); end; if line.halign == "center" then return line.left + syl[line.halign]; else return line[halign]; end; end;

-- Syllable Y Position (for use like in NyuFX.)
-- If you want to have the exact syllable position without vertical kana-lines, use
-- the function getSylYOrig()
--
-- Currently untested.
function getSylY() if tenv["syl"] == nil then error("This function must be executed in a syllable template."); end; if line.halign == "center" then return line[line.valign]; else if line.valign == "middle" then return line[line.valign] + (line.height * (syl.i - (#line.kara / 2.0))); else return line[line.valign] + ((line.valign == "right" and -1 or 1) * line.height * syl.i); end; end; end;

-- Returns the X Coordinate of the syllable.
function getSylXOrig() if tenv["syl"] == nil then error("This function must be executed in a syllable template."); end; return line.left + syl[line.halign]; end;

-- Returns the Y Coordinate of the syllable.
function getSylYOrig() return line[line.valign]; end;
