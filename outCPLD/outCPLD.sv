module	outCPLD	(
	input	pclk_50M,
	input	[1:8]	outP,
	input	[1:28]	out,
	output	logic	[1:8]	eoutP	=	8'b0,
	output	logic	[1:28]	eout	=	28'b0);
	

logic	[0:26]	cnt1;	
logic	[0:26]	cnt2;
logic	[0:26]	cnt3;
logic	[0:26]	cnt4;
logic	[0:26]	cnt5;
logic	[0:26]	cnt6;
logic	[0:26]	cnt7;
logic	[0:26]	cnt8;
const	logic	[0:26] delay		=	5000000;


logic	[6:0]	g1	=	7'b0000000;
logic	[6:0]	g2	=	7'b0000000;
logic	[6:0]	g3	=	7'b0000000;
logic	[6:0]	g4	=	7'b0000000;
logic	[6:0]	g5	=	7'b0000000;
logic	[6:0]	g6	=	7'b0000000;
logic	[6:0]	g7	=	7'b0000000;
logic	[6:0]	g8	=	7'b0000000;
	


always_ff	@(posedge	pclk_50M)	begin
	if	(outP	>=	0)
	begin	

	g1	=	{outP[8]	&	out[22],	outP[7]	&	out[16],	outP[6]	&	out[11],	outP[5]	&	out[7],		outP[4]	&	out[4],		outP[3]	&	out[2],		outP[2]	&	out[1]};
	g2	=	{outP[8]	&	out[23],	outP[7]	&	out[17],	outP[6]	&	out[12],	outP[5]	&	out[8],		outP[4]	&	out[5],		outP[3]	&	out[3],		outP[1]	&	out[1]};
	g3	=	{outP[8]	&	out[24],	outP[7]	&	out[18],	outP[6]	&	out[13],	outP[5]	&	out[9],		outP[4]	&	out[6],		outP[2]	&	out[3],		outP[1]	&	out[2]};
	g4	=	{outP[8]	&	out[25],	outP[7]	&	out[19],	outP[6]	&	out[14],	outP[5]	&	out[10],	outP[3]	&	out[6],		outP[2]	&	out[5],		outP[1]	&	out[4]};
	g5	=	{outP[8]	&	out[26],	outP[7]	&	out[20],	outP[6]	&	out[15],	outP[4]	&	out[10],	outP[3]	&	out[9],		outP[2]	&	out[8],		outP[1]	&	out[7]};
	g6	=	{outP[8]	&	out[27],	outP[7]	&	out[21],	outP[5]	&	out[15],	outP[4]	&	out[14],	outP[3]	&	out[13],	outP[2]	&	out[12],	outP[1]	&	out[11]};
	g7	=	{outP[8]	&	out[28],	outP[6]	&	out[21],	outP[5]	&	out[20],	outP[4]	&	out[19],	outP[3]	&	out[18],	outP[2]	&	out[17],	outP[1]	&	out[16]};
	g8	=	{outP[7]	&	out[28],	outP[6]	&	out[27],	outP[5]	&	out[26],	outP[4]	&	out[25],	outP[3]	&	out[24],	outP[2]	&	out[23],	outP[1]	&	out[22]};

	end
	

	begin
	
	if	(outP[1]	==	1'b0) eoutP[1]	<=	(outP[1]	&	1'b1);
	if	(outP[2]	==	1'b0) eoutP[2]	<=	(outP[2]	&	1'b1);
	if	(outP[3]	==	1'b0)	eoutP[3]	<=	(outP[3]	&	1'b1);
	if	(outP[4]	==	1'b0)	eoutP[4]	<=	(outP[4]	&	1'b1);
	if	(outP[5]	==	1'b0)	eoutP[5]	<=	(outP[5]	&	1'b1);
	if	(outP[6]	==	1'b0)	eoutP[6]	<=	(outP[6]	&	1'b1);
	if	(outP[7]	==	1'b0)	eoutP[7]	<=	(outP[7]	&	1'b1);
	if	(outP[8]	==	1'b0)	eoutP[8]	<=	(outP[8]	&	1'b1);
	
	if	(out[1]	==	1'b0)	eout[1]	<=	(out[1]	&	1'b1);
	if	(out[2]	==	1'b0)	eout[2]	<=	(out[2]	&	1'b1);
	if	(out[3]	==	1'b0)	eout[3]	<=	(out[3]	&	1'b1);
	if	(out[4]	==	1'b0)	eout[4]	<=	(out[4]	&	1'b1);
	if	(out[5]	==	1'b0)	eout[5]	<=	(out[5]	&	1'b1);
	if	(out[6]	==	1'b0)	eout[6]	<=	(out[6]	&	1'b1);
	if	(out[7]	==	1'b0)	eout[7]	<=	(out[7]	&	1'b1);
	if	(out[8]	==	1'b0)	eout[8]	<=	(out[8]	&	1'b1);
	if	(out[9]	==	1'b0)	eout[9]	<=	(out[9]	&	1'b1);
	if	(out[10]	==	1'b0)	eout[10]	<=	(out[10]	&	1'b1);
	if	(out[11]	==	1'b0)	eout[11]	<=	(out[11]	&	1'b1);
	if	(out[12]	==	1'b0)	eout[12]	<=	(out[12]	&	1'b1);
	if	(out[13]	==	1'b0)	eout[13]	<=	(out[13]	&	1'b1);
	if	(out[14]	==	1'b0)	eout[14]	<=	(out[14]	&	1'b1);
	if	(out[15]	==	1'b0)	eout[15]	<=	(out[15]	&	1'b1);
	if	(out[16]	==	1'b0)	eout[16]	<=	(out[16]	&	1'b1);
	if	(out[17]	==	1'b0)	eout[17]	<=	(out[17]	&	1'b1);
	if	(out[18]	==	1'b0)	eout[18]	<=	(out[18]	&	1'b1);
	if	(out[19]	==	1'b0)	eout[19]	<=	(out[19]	&	1'b1);
	if	(out[20]	==	1'b0)	eout[20]	<=	(out[20]	&	1'b1);
	if	(out[21]	==	1'b0)	eout[21]	<=	(out[21]	&	1'b1);
	if	(out[22]	==	1'b0)	eout[22]	<=	(out[22]	&	1'b1);
	if	(out[23]	==	1'b0)	eout[23]	<=	(out[23]	&	1'b1);
	if	(out[24]	==	1'b0)	eout[24]	<=	(out[24]	&	1'b1);
	if	(out[25]	==	1'b0)	eout[25]	<=	(out[25]	&	1'b1);
	if	(out[26]	==	1'b0)	eout[26]	<=	(out[26]	&	1'b1);
	if	(out[27]	==	1'b0)	eout[27]	<=	(out[27]	&	1'b1);
	if	(out[28]	==	1'b0)	eout[28]	<=	(out[28]	&	1'b1);
	
	if	(~(outP[1]	^	outP[2]))	eout[1]	<=	out[1]	&	1'b0;	
	if	(~(outP[1]	^	outP[3]))	eout[2]	<=	out[2]	&	1'b0;	
	if	(~(outP[2]	^	outP[3]))	eout[3]	<=	out[3]	&	1'b0;	
	if	(~(outP[1]	^	outP[4]))	eout[4]	<=	out[4]	&	1'b0;	
	if	(~(outP[2]	^	outP[4]))	eout[5]	<=	out[5]	&	1'b0;
	if	(~(outP[3]	^	outP[4]))	eout[6]	<=	out[6]	&	1'b0;	
	if	(~(outP[1]	^	outP[5]))	eout[7]	<=	out[7]	&	1'b0;	
	if	(~(outP[2]	^	outP[5]))	eout[8]	<=	out[8]	&	1'b0;	
	if	(~(outP[3]	^	outP[5]))	eout[9]	<=	out[9]	&	1'b0;	
	if	(~(outP[4]	^	outP[5]))	eout[10]	<=	out[10]	&	1'b0;	
	if	(~(outP[1]	^	outP[6]))	eout[11]	<=	out[11]	&	1'b0;	
	if	(~(outP[2]	^	outP[6]))	eout[12]	<=	out[12]	&	1'b0;	
	if	(~(outP[3]	^	outP[6]))	eout[13]	<=	out[13]	&	1'b0;	
	if	(~(outP[4]	^	outP[6]))	eout[14]	<=	out[14]	&	1'b0;	
	if	(~(outP[5]	^	outP[6]))	eout[15]	<=	out[15]	&	1'b0;	
	if	(~(outP[1]	^	outP[7]))	eout[16]	<=	out[16]	&	1'b0;	
	if	(~(outP[2]	^	outP[7]))	eout[17]	<=	out[17]	&	1'b0;	
	if	(~(outP[3]	^	outP[7]))	eout[18]	<=	out[18]	&	1'b0;	
	if	(~(outP[4]	^	outP[7]))	eout[19]	<=	out[19]	&	1'b0;	
	if	(~(outP[5]	^	outP[7]))	eout[20]	<=	out[20]	&	1'b0;	
	if	(~(outP[6]	^	outP[7]))	eout[21]	<=	out[21]	&	1'b0;	
	if	(~(outP[1]	^	outP[8]))	eout[22]	<=	out[22]	&	1'b0;	
	if	(~(outP[2]	^	outP[8]))	eout[23]	<=	out[23]	&	1'b0;	
	if	(~(outP[3]	^	outP[8]))	eout[24]	<=	out[24]	&	1'b0;	
	if	(~(outP[4]	^	outP[8]))	eout[25]	<=	out[25]	&	1'b0;	
	if	(~(outP[5]	^	outP[8]))	eout[26]	<=	out[26]	&	1'b0;	
	if	(~(outP[6]	^	outP[8]))	eout[27]	<=	out[27]	&	1'b0;	
	if	(~(outP[7]	^	outP[8]))	eout[28]	<=	out[28]	&	1'b0;	

	//	P1
	if	(outP[1]	==	1'b0)	
	if	((g1	&	7'b0000001)	==	7'b0000001)	begin
	eout[1]	<=	out[1]	&	1'b1;
	if	(outP[3]	==	1'b1)	eout[2]		<=	out[2]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[4]		<=	out[4]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[7]		<=	out[7]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[11]	<=	out[11]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[16]	<=	out[16]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[22]	<=	out[22]	&	1'b0;
	end	else
	if	((g1	&	7'b0000011)	==	7'b0000010)	begin
	if	(outP[2]	==	1'b1)	eout[1]		<=	out[1]	&	1'b0;	
	eout[2]	<=	out[2]	&	1'b1;
	if	(outP[4]	==	1'b1)	eout[4]		<=	out[4]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[7]		<=	out[7]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[11]	<=	out[11]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[16]	<=	out[16]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[22]	<=	out[22]	&	1'b0;
	end	else
	if	((g1	&	7'b0000111)	==	7'b0000100)	begin
	if	(outP[2]	==	1'b1)	eout[1]		<=	out[1]	&	1'b0;	
	if	(outP[3]	==	1'b1)	eout[2]		<=	out[2]	&	1'b0;	
	eout[4]	<=	out[4]	&	1'b1;
	if	(outP[5]	==	1'b1)	eout[7]		<=	out[7]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[11]	<=	out[11]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[16]	<=	out[16]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[22]	<=	out[22]	&	1'b0;
	end	else
	if	((g1	&	7'b0001111)	==	7'b0001000)	begin
	if	(outP[2]	==	1'b1)	eout[1]		<=	out[1]	&	1'b0;	
	if	(outP[3]	==	1'b1)	eout[2]		<=	out[2]	&	1'b0;	
	if	(outP[4]	==	1'b1)	eout[4]		<=	out[4]	&	1'b0;
	eout[7]	<=	out[7]	&	1'b1;
	if	(outP[6]	==	1'b1)	eout[11]	<=	out[11]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[16]	<=	out[16]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[22]	<=	out[22]	&	1'b0;
	end	else
	if	((g1	&	7'b0011111)	==	7'b0010000)	begin
	if	(outP[2]	==	1'b1)	eout[1]		<=	out[1]	&	1'b0;	
	if	(outP[3]	==	1'b1)	eout[2]		<=	out[2]	&	1'b0;	
	if	(outP[4]	==	1'b1)	eout[4]		<=	out[4]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[7]		<=	out[7]	&	1'b0;
	eout[11]	<=	out[11]	&	1'b1;
	if	(outP[7]	==	1'b1)	eout[16]	<=	out[16]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[22]	<=	out[22]	&	1'b0;
	end	else
	if	((g1	&	7'b0111111)	==	7'b0100000)	begin
	if	(outP[2]	==	1'b1)	eout[1]		<=	out[1]	&	1'b0;	
	if	(outP[3]	==	1'b1)	eout[2]		<=	out[2]	&	1'b0;	
	if	(outP[4]	==	1'b1)	eout[4]		<=	out[4]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[7]		<=	out[7]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[11]	<=	out[11]	&	1'b0;
	eout[16]	<=	out[16]	&	1'b1;
	if	(outP[8]	==	1'b1)	eout[22]	<=	out[22]	&	1'b0;
	end	else
	if	((g1	&	7'b1111111)	==	7'b1000000)	begin
	if	(outP[2]	==	1'b1)	eout[1]		<=	out[1]	&	1'b0;	
	if	(outP[3]	==	1'b1)	eout[2]		<=	out[2]	&	1'b0;	
	if	(outP[4]	==	1'b1)	eout[4]		<=	out[4]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[7]		<=	out[7]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[11]	<=	out[11]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[16]	<=	out[16]	&	1'b0;
	eout[22]	<=	out[22]	&	1'b1;
	end

	//P2
	if	(outP[2]	==	1'b0)	
	if	((g2	&	7'b0000001)	==	7'b0000001)	begin
	eout[1]	<=	out[1]	&	1'b1;
	if	(outP[3]	==	1'b1)	eout[3]		<=	out[3]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[5]		<=	out[5]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[8]		<=	out[8]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[12]	<=	out[12]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[17]	<=	out[17]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[23]	<=	out[23]	&	1'b0;
	end	else
	if	((g2	&	7'b0000011)	==	7'b0000010)	begin
	if	(outP[1]	==	1'b1)	eout[1]		<=	out[1]	&	1'b0;
	eout[3]	<=	out[3]	&	1'b1;
	if	(outP[4]	==	1'b1)	eout[5]		<=	out[5]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[8]		<=	out[8]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[12]	<=	out[12]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[17]	<=	out[17]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[23]	<=	out[23]	&	1'b0;
	end	else
	if	((g2	&	7'b0000111)	==	7'b0000100)	begin
	if	(outP[1]	==	1'b1)	eout[1]		<=	out[1]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[3]		<=	out[3]	&	1'b0;
	eout[5]	<=	out[5]	&	1'b1;
	if	(outP[5]	==	1'b1)	eout[8]		<=	out[8]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[12]	<=	out[12]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[17]	<=	out[17]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[23]	<=	out[23]	&	1'b0;
	end	else
	if	((g2	&	7'b0001111)	==	7'b0001000)	begin
	if	(outP[1]	==	1'b1)	eout[1]		<=	out[1]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[3]		<=	out[3]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[5]		<=	out[5]	&	1'b0;
	eout[8]	<=	out[8]	&	1'b1;
	if	(outP[6]	==	1'b1)	eout[12]	<=	out[12]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[17]	<=	out[17]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[23]	<=	out[23]	&	1'b0;
	end	else
	if	((g2	&	7'b0011111)	==	7'b0010000)	begin
	if	(outP[1]	==	1'b1)	eout[1]		<=	out[1]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[3]		<=	out[3]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[5]		<=	out[5]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[8]		<=	out[8]	&	1'b0;
	eout[12]	<=	out[12]	&	1'b1;
	if	(outP[7]	==	1'b1)	eout[17]	<=	out[17]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[23]	<=	out[23]	&	1'b0;
	end	else
	if	((g2	&	7'b0111111)	==	7'b0100000)	begin
	if	(outP[1]	==	1'b1)	eout[1]		<=	out[1]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[3]		<=	out[3]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[5]		<=	out[5]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[8]		<=	out[8]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[12]	<=	out[12]	&	1'b0;
	eout[17]	<=	out[17]	&	1'b1;
	if	(outP[8]	==	1'b1)	eout[23]	<=	out[23]	&	1'b0;
	end	else
	if	((g2	&	7'b1111111)	==	7'b1000000)	begin
	if	(outP[1]	==	1'b1)	eout[1]		<=	out[1]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[3]		<=	out[3]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[5]		<=	out[5]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[8]		<=	out[8]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[12]	<=	out[12]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[17]	<=	out[17]	&	1'b0;
	eout[23]	<=	out[23]	&	1'b1;
	end


	//P3
	if	(outP[3]	==	1'b0)	
	if	((g3	&	7'b0000001)	==	7'b0000001)	begin
	eout[2]	<=	out[2]	&	1'b1;
	if	(outP[2]	==	1'b1)	eout[3]		<=	out[3]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[6]		<=	out[6]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[9]		<=	out[9]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[13]	<=	out[13]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[18]	<=	out[18]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[24]	<=	out[24]	&	1'b0;
	end	else
	if	((g3	&	7'b0000011)	==	7'b0000010)	begin
	if	(outP[1]	==	1'b1)	eout[2]		<=	out[2]	&	1'b0;
	eout[3]	<=	out[3]	&	1'b1;
	if	(outP[4]	==	1'b1)	eout[6]		<=	out[6]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[9]		<=	out[9]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[13]	<=	out[13]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[18]	<=	out[18]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[24]	<=	out[24]	&	1'b0;
	end	else
	if	((g3	&	7'b0000111)	==	7'b0000100)	begin
	if	(outP[1]	==	1'b1)	eout[2]		<=	out[2]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[3]		<=	out[3]	&	1'b0;
	eout[6]	<=	out[6]	&	1'b1;
	if	(outP[5]	==	1'b1)	eout[9]		<=	out[9]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[13]	<=	out[13]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[18]	<=	out[18]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[24]	<=	out[24]	&	1'b0;
	end	else
	if	((g3	&	7'b0001111)	==	7'b0001000)	begin
	if	(outP[1]	==	1'b1)	eout[2]		<=	out[2]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[3]		<=	out[3]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[6]		<=	out[6]	&	1'b0;
	eout[9]	<=	out[9]	&	1'b1;
	if	(outP[6]	==	1'b1)	eout[13]	<=	out[13]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[18]	<=	out[18]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[24]	<=	out[24]	&	1'b0;
	end	else
	if	((g3	&	7'b0011111)	==	7'b0010000)	begin
	if	(outP[1]	==	1'b1)	eout[2]		<=	out[2]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[3]		<=	out[3]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[6]		<=	out[6]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[9]		<=	out[9]	&	1'b0;
	eout[13]	<=	out[13]	&	1'b1;
	if	(outP[7]	==	1'b1)	eout[18]	<=	out[18]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[24]	<=	out[24]	&	1'b0;
	end	else
	if	((g3	&	7'b0111111)	==	7'b0100000)	begin
	if	(outP[1]	==	1'b1)	eout[2]		<=	out[2]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[3]		<=	out[3]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[6]		<=	out[6]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[9]		<=	out[9]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[13]	<=	out[13]	&	1'b0;
	eout[18]	<=	out[18]	&	1'b1;
	if	(outP[8]	==	1'b1)	eout[24]	<=	out[24]	&	1'b0;
	end	else
	if	((g3	&	7'b1111111)	==	7'b1000000)	begin
	if	(outP[1]	==	1'b1)	eout[2]		<=	out[2]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[3]		<=	out[3]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[6]		<=	out[6]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[9]		<=	out[9]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[13]	<=	out[13]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[18]	<=	out[18]	&	1'b0;
	eout[24]	<=	out[24]	&	1'b1;
	end

	//P4
	if	(outP[4]	==	1'b0)	
	if	((g4	&	7'b0000001)	==	7'b0000001)	begin
	eout[4]	<=	out[4]	&	1'b1;
	if	(outP[2]	==	1'b1)	eout[5]		<=	out[5]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[6]		<=	out[6]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[10]	<=	out[10]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[14]	<=	out[14]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[19]	<=	out[19]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[25]	<=	out[25]	&	1'b0;
	end	else
	if	((g4	&	7'b0000011)	==	7'b0000010)	begin
	if	(outP[1]	==	1'b1)	eout[4]		<=	out[4]	&	1'b0;
	eout[5]	<=	out[5]	&	1'b1;
	if	(outP[3]	==	1'b1)	eout[6]		<=	out[6]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[10]	<=	out[10]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[14]	<=	out[14]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[19]	<=	out[19]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[25]	<=	out[25]	&	1'b0;
	end	else
	if	((g4	&	7'b0000111)	==	7'b0000100)	begin
	if	(outP[1]	==	1'b1)	eout[4]		<=	out[4]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[5]		<=	out[5]	&	1'b0;
	eout[6]	<=	out[6]	&	1'b1;
	if	(outP[5]	==	1'b1)	eout[10]	<=	out[10]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[14]	<=	out[14]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[19]	<=	out[19]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[25]	<=	out[25]	&	1'b0;
	end	else
	if	((g4	&	7'b0001111)	==	7'b0001000)	begin
	if	(outP[1]	==	1'b1)	eout[4]		<=	out[4]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[5]		<=	out[5]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[6]		<=	out[6]	&	1'b0;
	eout[10]	<=	out[10]	&	1'b1;
	if	(outP[6]	==	1'b1)	eout[14]	<=	out[14]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[19]	<=	out[19]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[25]	<=	out[25]	&	1'b0;
	end	else
	if	((g4	&	7'b0011111)	==	7'b0010000)	begin
	if	(outP[1]	==	1'b1)	eout[4]		<=	out[4]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[5]		<=	out[5]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[6]		<=	out[6]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[10]	<=	out[10]	&	1'b0;
	eout[14]	<=	out[14]	&	1'b1;
	if	(outP[7]	==	1'b1)	eout[19]	<=	out[19]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[25]	<=	out[25]	&	1'b0;
	end	else
	if	((g4	&	7'b0111111)	==	7'b0100000)	begin
	if	(outP[1]	==	1'b1)	eout[4]		<=	out[4]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[5]		<=	out[5]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[6]		<=	out[6]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[10]	<=	out[10]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[14]	<=	out[14]	&	1'b0;
	eout[19]	<=	out[19]	&	1'b1;
	if	(outP[8]	==	1'b1)	eout[25]	<=	out[25]	&	1'b0;
	end	else
	if	((g4	&	7'b1111111)	==	7'b1000000)	begin
	if	(outP[1]	==	1'b1)	eout[4]		<=	out[4]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[5]		<=	out[5]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[6]		<=	out[6]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[10]	<=	out[10]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[14]	<=	out[14]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[19]	<=	out[19]	&	1'b0;
	eout[25]	<=	out[25]	&	1'b1;
	end

	//P5
	if	(outP[5]	==	1'b0)	
	if	((g5	&	7'b0000001)	==	7'b0000001)	begin
	eout[7]	<=	out[7]	&	1'b1;
	if	(outP[2]	==	1'b1)	eout[8]		<=	out[8]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[9]		<=	out[9]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[10]	<=	out[10]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[15]	<=	out[15]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[20]	<=	out[20]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[26]	<=	out[26]	&	1'b0;
	end	else
	if	((g5	&	7'b0000011)	==	7'b0000010)	begin
	if	(outP[1]	==	1'b1)	eout[7]		<=	out[7]	&	1'b0;
	eout[8]	<=	out[8]	&	1'b1;
	if	(outP[3]	==	1'b1)	eout[9]		<=	out[9]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[10]	<=	out[10]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[15]	<=	out[15]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[20]	<=	out[20]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[26]	<=	out[26]	&	1'b0;
	end	else
	if	((g5	&	7'b0000111)	==	7'b0000100)	begin
	if	(outP[1]	==	1'b1)	eout[7]		<=	out[7]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[8]		<=	out[8]	&	1'b0;
	eout[9]	<=	out[9]	&	1'b1;
	if	(outP[4]	==	1'b1)	eout[10]	<=	out[10]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[15]	<=	out[15]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[20]	<=	out[20]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[26]	<=	out[26]	&	1'b0;
	end	else
	if	((g5	&	7'b0001111)	==	7'b0001000)	begin
	if	(outP[1]	==	1'b1)	eout[7]		<=	out[7]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[8]		<=	out[8]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[9]		<=	out[9]	&	1'b0;
	eout[10]	<=	out[10]	&	1'b1;
	if	(outP[6]	==	1'b1)	eout[15]	<=	out[15]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[20]	<=	out[20]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[26]	<=	out[26]	&	1'b0;
	end	else
	if	((g5	&	7'b0011111)	==	7'b0010000)	begin
	if	(outP[1]	==	1'b1)	eout[7]		<=	out[7]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[8]		<=	out[8]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[9]		<=	out[9]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[10]	<=	out[10]	&	1'b0;
	eout[15]	<=	out[15]	&	1'b1;
	if	(outP[7]	==	1'b1)	eout[20]	<=	out[20]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[26]	<=	out[26]	&	1'b0;
	end	else
	if	((g5	&	7'b0111111)	==	7'b0100000)	begin
	if	(outP[1]	==	1'b1)	eout[7]		<=	out[7]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[8]		<=	out[8]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[9]		<=	out[9]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[10]	<=	out[10]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[15]	<=	out[15]	&	1'b0;
	eout[20]	<=	out[20]	&	1'b1;
	if	(outP[8]	==	1'b1)	eout[26]	<=	out[26]	&	1'b0;
	end	else
	if	((g5	&	7'b1111111)	==	7'b1000000)	begin
	if	(outP[1]	==	1'b1)	eout[7]		<=	out[7]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[8]		<=	out[8]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[9]		<=	out[9]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[10]	<=	out[10]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[15]	<=	out[15]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[20]	<=	out[20]	&	1'b0;
	eout[26]	<=	out[26]	&	1'b1;
	end

	//P6
	if	(outP[6]	==	1'b0)	
	if	((g6	&	7'b0000001)	==	7'b0000001)	begin
	eout[11]	<=	out[11]	&	1'b1;
	if	(outP[2]	==	1'b1)	eout[12]	<=	out[12]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[13]	<=	out[13]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[14]	<=	out[14]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[15]	<=	out[15]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[21]	<=	out[21]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[27]	<=	out[27]	&	1'b0;
	end	else
	if	((g6	&	7'b0000011)	==	7'b0000010)	begin
	if	(outP[1]	==	1'b1)	eout[11]	<=	out[11]	&	1'b0;
	eout[12]	<=	out[12]	&	1'b1;
	if	(outP[3]	==	1'b1)	eout[13]	<=	out[13]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[14]	<=	out[14]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[15]	<=	out[15]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[21]	<=	out[21]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[27]	<=	out[27]	&	1'b0;
	end	else
	if	((g6	&	7'b0000111)	==	7'b0000100)	begin
	if	(outP[1]	==	1'b1)	eout[11]	<=	out[11]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[12]	<=	out[12]	&	1'b0;
	eout[13]	<=	out[13]	&	1'b1;
	if	(outP[4]	==	1'b1)	eout[14]	<=	out[14]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[15]	<=	out[15]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[21]	<=	out[21]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[27]	<=	out[27]	&	1'b0;
	end	else
	if	((g6	&	7'b0001111)	==	7'b0001000)	begin
	if	(outP[1]	==	1'b1)	eout[11]	<=	out[11]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[12]	<=	out[12]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[13]	<=	out[13]	&	1'b0;
	eout[14]	<=	out[14]	&	1'b1;
	if	(outP[5]	==	1'b1)	eout[15]	<=	out[15]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[21]	<=	out[21]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[27]	<=	out[27]	&	1'b0;
	end	else
	if	((g6	&	7'b0011111)	==	7'b0010000)	begin
	if	(outP[1]	==	1'b1)	eout[11]	<=	out[11]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[12]	<=	out[12]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[13]	<=	out[13]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[14]	<=	out[14]	&	1'b0;
	eout[15]	<=	out[15]	&	1'b1;
	if	(outP[7]	==	1'b1)	eout[21]	<=	out[21]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[27]	<=	out[27]	&	1'b0;
	end	else
	if	((g6	&	7'b0111111)	==	7'b0100000)	begin
	if	(outP[1]	==	1'b1)	eout[11]	<=	out[11]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[12]	<=	out[12]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[13]	<=	out[13]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[14]	<=	out[14]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[15]	<=	out[15]	&	1'b0;
	eout[21]	<=	out[21]	&	1'b1;
	if	(outP[8]	==	1'b1)	eout[27]	<=	out[27]	&	1'b0;
	end	else
	if	((g6	&	7'b1111111)	==	7'b1000000)	begin
	if	(outP[1]	==	1'b1)	eout[11]	<=	out[11]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[12]	<=	out[12]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[13]	<=	out[13]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[14]	<=	out[14]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[15]	<=	out[15]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[21]	<=	out[21]	&	1'b0;
	eout[27]	<=	out[27]	&	1'b1;
	end

	//P7
	if	(outP[7]	==	1'b0)	
	if	((g7	&	7'b0000001)	==	7'b0000001)	begin
	eout[16]	<=	out[16]	&	1'b1;
	if	(outP[2]	==	1'b1)	eout[17]	<=	out[17]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[18]	<=	out[18]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[19]	<=	out[19]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[20]	<=	out[20]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[21]	<=	out[21]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[28]	<=	out[28]	&	1'b0;
	end	else
	if	((g7	&	7'b0000011)	==	7'b0000010)	begin
	if	(outP[1]	==	1'b1)	eout[16]	<=	out[16]	&	1'b0;
	eout[17]	<=	out[17]	&	1'b1;
	if	(outP[3]	==	1'b1)	eout[18]	<=	out[18]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[19]	<=	out[19]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[20]	<=	out[20]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[21]	<=	out[21]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[28]	<=	out[28]	&	1'b0;
	end	else
	if	((g7	&	7'b0000111)	==	7'b0000100)	begin
	if	(outP[1]	==	1'b1)	eout[16]	<=	out[16]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[17]	<=	out[17]	&	1'b0;
	eout[18]	<=	out[18]	&	1'b1;
	if	(outP[4]	==	1'b1)	eout[19]	<=	out[19]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[20]	<=	out[20]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[21]	<=	out[21]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[28]	<=	out[28]	&	1'b0;
	end	else
	if	((g7	&	7'b0001111)	==	7'b0001000)	begin
	if	(outP[1]	==	1'b1)	eout[16]	<=	out[16]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[17]	<=	out[17]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[18]	<=	out[18]	&	1'b0;
	eout[19]	<=	out[19]	&	1'b1;
	if	(outP[5]	==	1'b1)	eout[20]	<=	out[20]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[21]	<=	out[21]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[28]	<=	out[28]	&	1'b0;
	end	else
	if	((g7	&	7'b0011111)	==	7'b0010000)	begin
	if	(outP[1]	==	1'b1)	eout[16]	<=	out[16]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[17]	<=	out[17]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[18]	<=	out[18]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[19]	<=	out[19]	&	1'b0;
	eout[20]	<=	out[20]	&	1'b1;
	if	(outP[6]	==	1'b1)	eout[21]	<=	out[21]	&	1'b0;
	if	(outP[8]	==	1'b1)	eout[28]	<=	out[28]	&	1'b0;
	end	else
	if	((g7	&	7'b0111111)	==	7'b0100000)	begin
	if	(outP[1]	==	1'b1)	eout[16]	<=	out[16]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[17]	<=	out[17]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[18]	<=	out[18]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[19]	<=	out[19]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[20]	<=	out[20]	&	1'b0;
	eout[21]	<=	out[21]	&	1'b1;
	if	(outP[8]	==	1'b1)	eout[28]	<=	out[28]	&	1'b0;
	end	else
	if	((g7	&	7'b1111111)	==	7'b1000000)	begin
	if	(outP[1]	==	1'b1)	eout[16]	<=	out[16]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[17]	<=	out[17]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[18]	<=	out[18]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[19]	<=	out[19]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[20]	<=	out[20]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[21]	<=	out[21]	&	1'b0;
	eout[28]	<=	out[28]	&	1'b1;
	end

	//P8
	if	(outP[8]	==	1'b0)	
	if	((g8	&	7'b0000001)	==	7'b0000001)	begin
	eout[22]	<=	out[22]	&	1'b1;
	if	(outP[2]	==	1'b1)	eout[23]	<=	out[23]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[24]	<=	out[24]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[25]	<=	out[25]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[26]	<=	out[26]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[27]	<=	out[27]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[28]	<=	out[28]	&	1'b0;
	end	else
	if	((g8	&	7'b0000011)	==	7'b0000010)	begin
	if	(outP[1]	==	1'b1)	eout[22]	<=	out[22]	&	1'b0;
	eout[23]	<=	out[23]	&	1'b1;
	if	(outP[3]	==	1'b1)	eout[24]	<=	out[24]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[25]	<=	out[25]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[26]	<=	out[26]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[27]	<=	out[27]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[28]	<=	out[28]	&	1'b0;
	end	else
	if	((g8	&	7'b0000111)	==	7'b0000100)	begin
	if	(outP[1]	==	1'b1)	eout[22]	<=	out[22]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[23]	<=	out[23]	&	1'b0;
	eout[24]	<=	out[24]	&	1'b1;
	if	(outP[4]	==	1'b1)	eout[25]	<=	out[25]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[26]	<=	out[26]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[27]	<=	out[27]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[28]	<=	out[28]	&	1'b0;
	end	else
	if	((g8	&	7'b0001111)	==	7'b0001000)	begin
	if	(outP[1]	==	1'b1)	eout[22]	<=	out[22]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[23]	<=	out[23]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[24]	<=	out[24]	&	1'b0;
	eout[25]	<=	out[25]	&	1'b1;
	if	(outP[5]	==	1'b1)	eout[26]	<=	out[26]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[27]	<=	out[27]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[28]	<=	out[28]	&	1'b0;
	end	else
	if	((g8	&	7'b0011111)	==	7'b0010000)	begin
	if	(outP[1]	==	1'b1)	eout[22]	<=	out[22]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[23]	<=	out[23]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[24]	<=	out[24]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[25]	<=	out[25]	&	1'b0;
	eout[26]	<=	out[26]	&	1'b1;
	if	(outP[6]	==	1'b1)	eout[27]	<=	out[27]	&	1'b0;
	if	(outP[7]	==	1'b1)	eout[28]	<=	out[28]	&	1'b0;
	end	else
	if	((g8	&	7'b0111111)	==	7'b0100000)	begin
	if	(outP[1]	==	1'b1)	eout[22]	<=	out[22]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[23]	<=	out[23]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[24]	<=	out[24]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[25]	<=	out[25]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[26]	<=	out[26]	&	1'b0;
	eout[27]	<=	out[27]	&	1'b1;
	if	(outP[7]	==	1'b1)	eout[28]	<=	out[28]	&	1'b0;
	end	else
	if	((g8	&	7'b1111111)	==	7'b1000000)	begin
	if	(outP[1]	==	1'b1)	eout[22]	<=	out[22]	&	1'b0;
	if	(outP[2]	==	1'b1)	eout[23]	<=	out[23]	&	1'b0;
	if	(outP[3]	==	1'b1)	eout[24]	<=	out[24]	&	1'b0;
	if	(outP[4]	==	1'b1)	eout[25]	<=	out[25]	&	1'b0;
	if	(outP[5]	==	1'b1)	eout[26]	<=	out[26]	&	1'b0;
	if	(outP[6]	==	1'b1)	eout[27]	<=	out[27]	&	1'b0;
	eout[28]	<=	out[28]	&	1'b1;
	end

	end
	
	begin
	
	
	if(cnt1<delay) cnt1	<=	cnt1	+	1'b1;
	else if(outP[1]	==	1'b1)	eoutP[1]	<=	(outP[1]	&	1'b1);

	
	if(cnt2<delay) cnt2	<=	cnt2	+	1'b1;
	else if(outP[2]	==	1'b1)	eoutP[2]	<=	(outP[2]	&	1'b1);

	
	if(cnt3<delay) cnt3	<=	cnt3	+	1'b1;
	else if(outP[3]	==	1'b1)	eoutP[3]	<=	(outP[3]	&	1'b1);

	
	if(cnt4<delay) cnt4	<=	cnt4	+	1'b1;
	else if(outP[4]	==	1'b1)	eoutP[4]	<=	(outP[4]	&	1'b1);

	if(cnt5<delay) cnt5	<=	cnt5	+	1'b1;
	else if(outP[5]	==	1'b1)	eoutP[5]	<=	(outP[5]	&	1'b1);

	
	if(cnt6<delay) cnt6	<=	cnt6	+	1'b1;
	else if(outP[6]	==	1'b1)	eoutP[6]	<=	(outP[6]	&	1'b1);

	
	if(cnt7<delay) cnt7	<=	cnt7	+	1'b1;
	else if(outP[7]	==	1'b1)	eoutP[7]	<=	(outP[7]	&	1'b1);

	
	if(cnt8<delay) cnt8	<=	cnt8	+	1'b1;
	else if(outP[8]	==	1'b1)	eoutP[8]	<=	(outP[8]	&	1'b1);

	
	end
	
	begin
	if(outP[1]	==	1'b0)  cnt1	<= 0;
	if(outP[2]	==	1'b0)  cnt2	<= 0;
	if(outP[3]	==	1'b0)  cnt3	<= 0;
	if(outP[4]	==	1'b0)  cnt4	<= 0;
	if(outP[5]	==	1'b0)  cnt5	<= 0;
	if(outP[6]	==	1'b0)  cnt6	<= 0;
	if(outP[7]	==	1'b0)  cnt7	<= 0;
	if(outP[8]	==	1'b0)  cnt8	<= 0;
	
	end


end
	
endmodule


