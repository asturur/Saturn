package SCSP_PKG;

	//Slot control registers, offset 100000+n*20
	typedef struct packed		//RW,00
	{
		bit [ 2: 0] UNUSED;
		bit         KX;
		bit         KB;
		bit [ 1: 0] SBCTL;
		bit [ 1: 0] SSCTL;
		bit [ 1: 0] LPCTL;
		bit         PCM8B;
		bit [ 3: 0] SAH;
	} SCR0_t;
	parameter bit [15:0] SCR0_MASK = 16'h1FFF;
	
	typedef bit [15:0] SA_t;	//RW,02
	parameter bit [15:0] SA_MASK = 16'hFFFF;
	
	typedef bit [15:0] LSA_t;	//RW,04
	parameter bit [15:0] LSA_MASK = 16'hFFFF;
	
	typedef bit [15:0] LEA_t;	//RW,06
	parameter bit [15:0] LEA_MASK = 16'hFFFF;
	
	typedef struct packed		//RW,08
	{
		bit         UNUSED;
		bit         LPSLNK;
		bit [ 3: 0] KRS;
		bit [ 4: 0] DL;
		bit [ 4: 0] RR;
	} SCR1_t;
	parameter bit [15:0] SCR1_MASK = 16'h7FFF;
	
	typedef struct packed		//RW,0A
	{
		bit [ 4: 0] D2R;
		bit [ 4: 0] D1R;
		bit         EGHOLD;
		bit [ 4: 0] AR;
	} SCR2_t;
	parameter bit [15:0] SCR2_MASK = 16'hFFFF;
	
	typedef struct packed		//RW,0C
	{
		bit [ 5: 0] UNUSED;
		bit         STWINH;
		bit         SDIR;
		bit [ 7: 0] TL;
	} SCR3_t;
	parameter bit [15:0] SCR3_MASK = 16'h03FF;
	
	typedef struct packed		//RW,0E
	{
		bit [ 3: 0] MDL;
		bit [ 5: 0] MDXSL;
		bit [ 5: 0] MDYSL;
	} SCR4_t;
	parameter bit [15:0] SCR4_MASK = 16'hFFFF;
	
	typedef struct packed		//RW,10
	{
		bit         UNUSED;
		bit [ 3: 0] OCT;
		bit         UNUSED2;
		bit [ 9: 0] FNS;
	} SCR5_t;
	parameter bit [15:0] SCR5_MASK = 16'h7BFF;
	
	typedef struct packed		//RW,12
	{
		bit         LFORE;
		bit [ 4: 0] LFOF;
		bit [ 1: 0] PLFOWS;
		bit [ 2: 0] PLFOS;
		bit [ 1: 0] ALFOWS;
		bit [ 2: 0] ALFOS;
	} SCR6_t;
	parameter bit [15:0] SCR6_MASK = 16'hFFFF;
	
	typedef struct packed		//RW,14
	{
		bit [ 8: 0] UNUSED;
		bit [ 3: 0] ISEL;
		bit [ 2: 0] IMXL;
	} SCR7_t;
	parameter bit [15:0] SCR7_MASK = 16'h007F;
	
	typedef struct packed		//RW,16
	{
		bit [ 2: 0] DISDL;
		bit [ 4: 0] DIPAN;
		bit [ 2: 0] EFSDL;
		bit [ 4: 0] EFPAN;
	} SCR8_t;
	parameter bit [15:0] SCR8_MASK = 16'hFFFF;
	
	//Control registers
	typedef struct packed		//RW,100400
	{
		bit [ 5: 0] UNUSED;
		bit         M4;
		bit         DB;
		bit [ 3: 0] UNUSED2;
		bit [ 3: 0] MVOL;
	} CR0_t;
	parameter bit [15:0] CR0_MASK = 16'h030F;
	
	typedef struct packed		//RW,100402
	{
		bit [ 6: 0] UNUSED;
		bit [ 1: 0] RBL;
		bit [ 6: 0] RBP;
	} CR1_t;
	parameter bit [15:0] CR1_MASK = 16'h01FF;
	
	typedef struct packed		//RW,100404
	{
		bit [ 2: 0] UNUSED;
		bit         OF;
		bit         OE;
		bit         IO;
		bit         IF;
		bit         IE;
		bit [ 7: 0] MIBUF;
	} CR2_t;
	parameter bit [15:0] CR2_MASK = 16'h1FFF;
	
	typedef struct packed		//RW,100406
	{
		bit [ 7: 0] UNUSED;
		bit [ 7: 0] MOBUF;
	} CR3_t;
	parameter bit [15:0] CR3_MASK = 16'h00FF;
	
	typedef struct packed		//RW,100408
	{
		bit [ 4: 0] MSLC;		//RW
		bit [ 3: 0] CA;		//R
		bit [ 1: 0] SGC;		//R
		bit [ 4: 0] EG;		//R
	} CR4_t;
	parameter bit [15:0] CR4_MASK = 16'hFFFF;
	
	typedef struct packed		//RW,100412
	{
		bit [14: 0] DMEAL;
		bit         UNUSED;
	} CR5_t;
	parameter bit [15:0] CR5_MASK = 16'hFFFE;
	
	typedef struct packed		//RW,100414
	{
		bit [ 3: 0] DMEAH;
		bit [10: 0] DRGA;
		bit         UNUSED;
	} CR6_t;
	parameter bit [15:0] CR6_MASK = 16'hFFFE;
	
	typedef struct packed		//RW,100416
	{
		bit         UNUSED;
		bit         DGATE;
		bit         DDIR;
		bit         DEXE;
		bit [10: 0] DTLG;
		bit         UNUSED2;
	} CR7_t;
	parameter bit [15:0] CR7_MASK = 16'h7FFE;
	
	typedef struct packed		//RW,100418
	{
		bit [ 4: 0] UNUSED;
		bit [ 2: 0] TACTL;
		bit [ 7: 0] TIMA;
	} CR8_t;
	parameter bit [15:0] CR8_MASK = 16'h07FF;
	
	typedef struct packed		//RW,10041A
	{
		bit [ 4: 0] UNUSED;
		bit [ 2: 0] TBCTL;
		bit [ 7: 0] TIMB;
	} CR9_t;
	parameter bit [15:0] CR9_MASK = 16'h07FF;
	
	typedef struct packed		//RW,10041C
	{
		bit [ 4: 0] UNUSED;
		bit [ 2: 0] TCCTL;
		bit [ 7: 0] TIMC;
	} CR10_t;
	parameter bit [15:0] CR10_MASK = 16'h07FF;
	
	typedef struct packed		//RW,10041E
	{
		bit [ 4: 0] UNUSED;
		bit [10: 0] SCIEB;
	} CR11_t;
	parameter bit [15:0] CR11_MASK = 16'h07FF;
	
	typedef struct packed		//RW,100420
	{
		bit [ 4: 0] UNUSED;
		bit [10: 0] SCIPD;
	} CR12_t;
	parameter bit [15:0] CR12_MASK = 16'h07FF;
	
	typedef struct packed		//RW,100422
	{
		bit [ 4: 0] UNUSED;
		bit [10: 0] SCIRE;
	} CR13_t;
	parameter bit [15:0] CR13_MASK = 16'h07FF;
	
	typedef struct packed		//RW,100424
	{
		bit [ 7: 0] UNUSED;
		bit [ 7: 0] SCILV0;
	} CR14_t;
	parameter bit [15:0] CR14_MASK = 16'h00FF;
	
	typedef struct packed		//RW,100426
	{
		bit [ 7: 0] UNUSED;
		bit [ 7: 0] SCILV1;
	} CR15_t;
	parameter bit [15:0] CR15_MASK = 16'h00FF;
	
	typedef struct packed		//RW,100428
	{
		bit [ 7: 0] UNUSED;
		bit [ 7: 0] SCILV2;
	} CR16_t;
	parameter bit [15:0] CR16_MASK = 16'h00FF;
	
	typedef struct packed		//RW,10042A
	{
		bit [ 4: 0] UNUSED;
		bit [10: 0] MCIEB;
	} CR17_t;
	parameter bit [15:0] CR17_MASK = 16'h07FF;
	
	typedef struct packed		//RW,10042C
	{
		bit [ 4: 0] UNUSED;
		bit [10: 0] MCIPD;
	} CR18_t;
	parameter bit [15:0] CR18_MASK = 16'h07FF;
	
	typedef struct packed		//RW,10042E
	{
		bit [ 4: 0] UNUSED;
		bit [10: 0] MCIRE;
	} CR19_t;
	parameter bit [15:0] CR19_MASK = 16'h07FF;
	
	typedef bit [15:0] SOUS_t;		//RW,100600-10067F
	parameter bit [15:0] SOUS_MASK = 16'hFFFF;
	
	typedef struct packed
	{
		SCR0_t      SCR0;
		SA_t        SA;
		LSA_t       LSA;
		LEA_t       LEA;
		SCR1_t      SCR1;
		SCR2_t      SCR2;
		SCR3_t      SCR3;
		SCR4_t      SCR4;
		SCR5_t      SCR5;
		SCR6_t      SCR6;
		SCR7_t      SCR7;
		SCR8_t      SCR8;
	} SCR_t;
	
//	typedef SOUS_t STACK_t[32];
	
	typedef struct packed		//RW,100700-10077F
	{
		bit [12: 0] COEF;
		bit [ 2: 0] UNUSED;
	} COEF_t;
	parameter bit [15:0] COEF_MASK = 16'hFFF8;
	
	typedef bit [16:1] MADRS_t;		//RW,100780-1007BF
	parameter bit [16:1] MADRS_MASK = 16'hFFFF;
	
	typedef struct packed		//RW,100800-100BFF
	{
		bit         UNUSED;
		bit [ 6: 0] TRA;
		bit         TWT;
		bit [ 6: 0] TWA;
		bit         XSEL;
		bit [ 1: 0] YSEL;
		bit         UNUSED2;
		bit [ 5: 0] IRA;
		bit         IWT;
		bit [ 4: 0] IWA;
		bit         TABLE;
		bit         MWT;
		bit         MRD;
		bit         EWT;
		bit [ 3: 0] EWA;
		bit         ADRL;
		bit         FRCL;
		bit [ 1: 0] SHFT;
		bit         YRL;
		bit         NEGB;
		bit         ZERO;
		bit         BSEL;
		bit         NOFL;
		bit [ 5: 0] COEF;
		bit [ 1: 0] UNUSED3;
		bit [ 4: 0] MASA;
		bit         ADREB;
		bit         NXADR;
	} MPRO_t;
	parameter bit [63:0] MPRO_MASK = 64'h7FFFEFFFFFFFFE7F;
	
	typedef bit [23:0] TEMP_t;		//RW,100C00-100DFF
	parameter bit [31:0] TEMP_MASK = 32'h00FFFFFF;
	
	typedef bit [23:0] MEMS_t;		//RW,100E00-100E7F
	parameter bit [31:0] MEMS_MASK = 32'h00FFFFFF;
	
	typedef bit [19:0] MIXS_t;		//RW,100E80-100EBF
	parameter bit [31:0] MIXS_MASK = 32'h000FFFFF;
	
	typedef bit [15:0] EFREG_t;	//RW,100EC0-100EDF
	parameter bit [15:0] EFREG_MASK = 16'hFFFF;
	
	typedef MIXS_t MIXSS_t[16];
	typedef EFREG_t EFREGS_t[16];
	
	
	typedef enum bit [1:0] {
		EGS_ATTACK  = 2'b00, 
		EGS_DECAY1  = 2'b01,
		EGS_DECAY2  = 2'b10,
		EGS_RELEASE = 2'b11
	} EGState_t;
	
	typedef struct packed
	{
		bit [14: 0] PHASE;
	} OP1State_t;
	
	typedef struct packed
	{
		bit [15: 0] MD;	//Modulation data
		bit [18: 1] ADP;	//Address pointer
	} OP2State_t;
	
	typedef struct packed
	{
		bit [ 9: 0] EVOL;	//Envelope volume
		EGState_t   ST;	//Envelope generator state
	} OP4State_t;
	
	typedef struct packed
	{
		bit [ 4: 0] SLOT;	//
		bit         KON;	//
		bit         KOFF;	//
	} OPPipe_t;
	parameter OPPipe_t OP_PIPE_RESET = '{'0,0,0};
	
	function bit signed [15:0] SignedShiftRight(bit signed [15:0] V, bit [3:0] A);
		return $signed(V)>>>A;;
	endfunction
	
	function bit [15:0] SoundSel(input bit signed [15:0] WAVE, input bit signed [15:0] NOISE, SCR0_t SCR0);
		bit signed [15:0] SD;
		bit signed [15:0] temp;
		
		case (SCR0.SSCTL)
			2'b00: temp = WAVE;
			2'b01: temp = NOISE;
			default: temp = 16'sh0000;
		endcase
		SD = {temp[15] ^ SCR0.SBCTL[1], temp[14:0] ^ {15{SCR0.SBCTL[0]}}}; 
	
		return SD;
	endfunction

//	function bit signed [15:0] MDCalc(input STACK_t STACK, SCR4_t SCR4);
//		bit signed [15:0] MD;
//		bit signed [15:0] X,Y;
//		bit signed [15:0] TEMP;
//		
//		X = $signed(STACK[SCR4.MDXSL]);
//		Y = $signed(STACK[SCR4.MDYSL]);
//		TEMP = $signed({X[15],X[15:1]})+ $signed({Y[15],Y[15:1]}); 
//		MD = $signed($signed(TEMP)>>>(26-SCR4.MDL));
//		
//		return SCR4.MDL ? MD : '0;
//	endfunction

	function bit signed [15:0] MDCalc2(bit signed [15:0] X, bit signed [15:0] Y, bit [3:0] MDL);
		bit signed [15:0] MD;
		bit signed [15:0] TEMP;
		
		TEMP = {X[15],X[15:1]} + {Y[15],Y[15:1]}; 
		MD = $signed($signed(TEMP)>>>(~MDL));
		
		return MDL ? MD : '0;
	endfunction
	
	function bit [25:0] PhaseCalc(SCR5_t SCR5);
		bit [25:0] P;
		bit [4:0] S;
		
		S = {SCR5.OCT[3],4'b0111} - {1'b0,SCR5.OCT};
		P = {9'b000000001,SCR5.FNS,7'b0000000}>>S[3:0];
		
		return P;
	endfunction
	
	function bit [5:0] RateCalc(bit [4:0] R, bit [3:0] KRS, SCR5_t SCR5);
		bit [5:0] RATE;
		bit [7:0] TEMP;
		
		if (KRS == 4'hF) 
			TEMP = {1'b0,R,1'b0};
		else
			TEMP = {3'b000,KRS,SCR5.FNS[9]} + {2'b00,R,1'b0} + {3'b000,SCR5.OCT^4'h8} - 8'h08;
		
		if (TEMP[7])
			RATE = 5'h00;
		else if (TEMP >= 8'h3C)
			RATE = 8'h3C;
		else
			RATE = TEMP[5:0];
			
		return RATE;
	endfunction
	
	function bit [9:0] EnvVolCalc(bit [9:0] ENV, bit [7:0] TL);
		bit [9:0] RES;
		bit [9:0] D2,D4,D8,D16,D32,D64,D128,D256;
		D2 = ENV>>1;	//ENV / 2 
		D4 = ENV>>2;	//ENV / 4 
		D8 = ENV>>3;	//ENV / 8 
		D16 = ENV>>4;	//ENV / 16 
		D32 = ENV>>5;	//ENV / 32 
		D64 = ENV>>6;	//ENV / 64
		D128 = ENV>>7;	//ENV / 128 
		D256 = ENV>>8;	//ENV / 256 
		
		RES = ENV - ((TL[7] ?                           D256 : 10'd0) + 
		             (TL[6] ?          D16                   : 10'd0) + 
						 (TL[5] ?    D4                          : 10'd0) + 
						 (TL[4] ? D2                             : 10'd0) + 
		             (TL[3] ? D2+   D8+D16+    D64           : 10'd0) + 
						 (TL[2] ? D2+D4+   D16+    D64+D128+D256 : 10'd0) + 
						 (TL[1] ? D2+D4+D8+    D32+    D128+D256 : 10'd0) + 
						 (TL[0] ? D2+D4+D8+D16+    D64+     D256 : 10'd0));
		
		return RES;
	endfunction
	
	function bit signed [15:0] VolCalc(bit signed [15:0] ENV, bit [7:0] TL);
		return $signed($signed(ENV)>>>TL[7:4]);
	endfunction
	
	function bit signed [15:0] LevelCalc(bit signed [15:0] WAVE, bit [2:0] SDL);
		return SDL ? $signed(WAVE>>>(~SDL)) : 16'sh0000;
	endfunction
	
	function bit signed [15:0] PanLCalc(bit signed [15:0] WAVE, bit [4:0] PAN);
		return !PAN[4] ? $signed($signed(WAVE)>>>PAN[3:0]) : WAVE;
	endfunction
	
	function bit signed [15:0] PanRCalc(bit signed [15:0] WAVE, bit [4:0] PAN);
		return  PAN[4] ? $signed($signed(WAVE)>>>PAN[3:0]) : WAVE;
	endfunction
	
	function bit signed [15:0] MVolCalc(bit signed [15:0] WAVE, bit [3:0] MVOL);
		return $signed($signed(WAVE)>>>(~MVOL));
	endfunction
	
	function bit [7:0] LFOWave(bit [7:0] POS, bit [7:0] NOISE, bit [1:0] LFOWS);
		bit [7:0] WAVE;
		
		case (LFOWS)
			2'b00: WAVE = POS;
			2'b01: WAVE = {8{POS[7]}};
			2'b10: WAVE = {POS[6:0],1'b0} ^ {8{POS[7]}};
			2'b11: WAVE = NOISE;
		endcase
		return WAVE;
	endfunction
	
	function bit [25:0] DSPMulti(bit [23:0] X, bit [12:0] Y);
		bit [37:0] M;
		
		M = {X,1'b0} * {Y,1'b0};
		return M[37:12];
	endfunction
	
	function bit [23:0] DSPShifter(bit [25:0] A, bit [1:0] SHFT);
		bit [23:0] S;
		
		case (SHFT)
			2'b00: S = !A[25] && A[24:23] != 2'b00 ? 24'h7FFFFF : A[25] && A[24:23] != 2'b11 ? 24'h800000 : A[23:0];
			2'b01: S = !A[25] && A[24:23] != 2'b00 ? 24'h7FFFFF : A[25] && A[24:23] != 2'b11 ? 24'h800000 : {A[22:0],1'b0};
			2'b10: S = A[23:0];
			2'b11: S = {A[22:0],1'b0};
		endcase
		return S;
	endfunction
	
endpackage
