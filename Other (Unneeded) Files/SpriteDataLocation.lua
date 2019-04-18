-- OamSizeTable = {};
-- for i = 1, 4 do
    -- OamSizeTable[i] = {};

    -- for j = 1, 5 do
        -- OamSizeTable[i][j] = {0,0};
    -- end
-- end
-- OamSizeTable[1][1] = {8,8};
-- OamSizeTable[1][2] = {16,8};
-- OamSizeTable[1][3] = {8,16};
-- OamSizeTable[2][1] = {16,16};
-- OamSizeTable[2][2] = {32,8};
-- OamSizeTable[2][3] = {8,32};
-- OamSizeTable[3][1] = {32,32};
-- OamSizeTable[3][2] = {32,16};
-- OamSizeTable[3][3] = {16,32};
-- OamSizeTable[4][1] = {64,64};
-- OamSizeTable[4][2] = {64,32};
-- OamSizeTable[4][3] = {32,64};

function ClearData()
	local cleardataoffset = 0x02021000;
	local clearentrycount = memory.readdword(cleardataoffset);
	memory.writedword(cleardataoffset,0);
	dataoffset = cleardataoffset + 4;
	for i=0,clearentrycount-1,1 do
		memory.writedword(cleardataoffset,0);
		cleardataoffset = cleardataoffset + 4;
	end
end
function DisplayData()
	local dataoffset = 0x02021000;
	local entrycount = memory.readdword(dataoffset);
	dataoffset = dataoffset + 4;
	for i=0,entrycount-1,1 do

		-- local top = 256;
		-- local bottom = -256;
		-- local right = -256;
		-- local left = 256;
		-- local frameoffset = memory.readdword(memory.readdword(dataoffset));
		-- local oamcount = memory.readword(frameoffset);
		-- local oamoffset = frameoffset + 2;
		-- for ii=0,oamcount-1,1 do
			-- local oamy = memory.readbytesigned(oamoffset);
			-- local oamx = memory.readbytesigned(oamoffset+2);
			-- oamy = oamy + 130/2;
			-- oamx = oamx + 240/2;

			-- local oamsize = AND(SHIFT(memory.readshort(oamoffset+2),14),3)+1;
			-- local oamshape = AND(SHIFT(memory.readshort(oamoffset),14),3)+1; 

			-- local oamwidth = OAMSizeTable[oamsize+1][oamshape+1][1]; 
			-- local oamheight = OAMSizeTable[oamsize+1][oamshape+1][2];
			-- local oamwidth = 8;
			-- local oamheight = 8;
			-- if(top > oamy) then
				-- top = oamy;
			-- end
			-- if( bottom < oamy + oamheight) then
				-- bottom = oamy + oamheight;
			-- end
			-- if(left > oamx) then
				-- left = oamx;
			-- end
			-- if(right < oamx + oamwidth) then
				-- right = oamx + oamwidth;
			-- end


			-- oamoffset = oamoffset + 6;
		-- end
		-- gui.box(left,top,right,bottom);
		local entry = string.format("%X: %X",i,memory.readdword(dataoffset));
		gui.text(0,i*8,entry);
		dataoffset =dataoffset + 4;
	end

end

while(true) do
	local ButtonsPressed = input.get();
	if(ButtonsPressed["backspace"]) then
		ClearData();
	end
	DisplayData();
	vba.frameadvance();
end