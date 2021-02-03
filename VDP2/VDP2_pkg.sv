package VDP2_PKG;

	typedef struct packed	//RW,180000
	{
		bit         DISP;
		bit [ 5: 0] UNUSED;
		bit         BDCLMD;
		bit [ 1: 0] LSMD;
		bit [ 1: 0] VRESO;
		bit         UNUSED2;
		bit [ 2: 0] HRESO;
	} TVMD_t;
	parameter bit [15:0] TVMD_MASK = 16'h81F7;
	
	typedef struct packed	//RW,180002
	{
		bit [ 5: 0] UNUSED;
		bit         EXLTEN;
		bit         EXSYEN;
		bit [ 5: 0] UNUSED2;
		bit         DASEL;
		bit         EXBGEN;
	} EXTEN_t;
	parameter bit [15:0] EXTEN_MASK = 16'h0303;

	typedef struct packed	//RO,180004
	{
		bit [ 5: 0] UNUSED;
		bit         EXLTFG;
		bit         EXSYFG;
		bit [ 3: 0] UNUSED2;
		bit         VBLANK;
		bit         HBLANK;
		bit         ODD;
		bit         PAL;
	} TVSTAT_t;
	parameter bit [15:0] TVSTAT_MASK = 16'h030F;
	
	typedef struct packed	//RW,180006
	{
		bit         VRAMSZ;	//RW
		bit [10: 0] UNUSED;
		bit [ 3: 0] VER;		//RO
	} VRSIZE_t;
	parameter bit [15:0] VRSIZE_MASK = 16'h8000;
	
	typedef struct packed	//RO,180008
	{
		bit [ 5: 0] UNUSED;
		bit [ 9: 0] HCT;
	} HCNT_t;
	parameter bit [15:0] HCNT_MASK = 16'h03FF;
	
	typedef struct packed	//RO,18000A
	{
		bit [ 5: 0] UNUSED;
		bit [ 9: 0] VCT;
	} VCNT_t;
	parameter bit [15:0] VCNT_MASK = 16'h03FF;
	
	typedef struct packed	//RW,18000E
	{
		bit         CRKTE;
		bit         UNUSED;
		bit [ 1: 0] CRMD;
		bit [ 1: 0] UNUSED2;
		bit         VRBMD;
		bit         VRAMD;
		bit [ 1: 0] RDBSB1;
		bit [ 1: 0] RDBSB0;
		bit [ 1: 0] RDBSA1;
		bit [ 1: 0] RDBSA0;
	} RAMCTL_t;
	parameter bit [15:0] RAMCTL_MASK = 16'h33FF;
	
	typedef struct packed	//RW,180010,180018
	{
		bit [ 3: 0] VCP0x0;
		bit [ 3: 0] VCP1x0;
		bit [ 3: 0] VCP2x0;
		bit [ 3: 0] VCP3x0;
	} CYCx0L_t;
	parameter bit [15:0] CYCx0L_MASK = 16'hFFFF;
	
	typedef struct packed	//RW,180012,18001A
	{
		bit [ 3: 0] VCP4x0;
		bit [ 3: 0] VCP5x0;
		bit [ 3: 0] VCP6x0;
		bit [ 3: 0] VCP7x0;
	} CYCx0U_t;
	parameter bit [15:0] CYCx0U_MASK = 16'hFFFF;
	
	typedef struct packed	//RW,180014,18001C
	{
		bit [ 3: 0] VCP0x1;
		bit [ 3: 0] VCP1x1;
		bit [ 3: 0] VCP2x1;
		bit [ 3: 0] VCP3x1;
	} CYCx1L_t;
	parameter bit [15:0] CYCx1L_MASK = 16'hFFFF;
	
	typedef struct packed	//RW,180016,18001E
	{
		bit [ 3: 0] VCP4x1;
		bit [ 3: 0] VCP5x1;
		bit [ 3: 0] VCP6x1;
		bit [ 3: 0] VCP7x1;
	} CYCx1U_t;
	parameter bit [15:0] CYCx1U_MASK = 16'hFFFF;
	
	typedef struct packed	//RW,180020
	{
		bit [ 2: 0] UNUSED;
		bit         R0TPON;
		bit         N3TPON;
		bit         N2TPON;
		bit         N1TPON;
		bit         N0TPON;
		bit [ 1: 0] UNUSED2;
		bit         R1ON;
		bit         R0ON;
		bit         N3ON;
		bit         N2ON;
		bit         N1ON;
		bit         N0ON;
	} BGON_t;
	parameter bit [15:0] BGON_MASK = 16'h1F3F;
	
	typedef struct packed	//RW,180022
	{
		bit [ 3: 0] MZSZV;
		bit [ 3: 0] MZSZH;
		bit [ 2: 0] UNUSED;
		bit         R0MZE;
		bit         N3MZE;
		bit         N2MZE;
		bit         N1MZE;
		bit         N0MZE;
	} MZCTL_t;
	parameter bit [15:0] MZCTL_MASK = 16'hFF1F;
	
	typedef struct packed	//RW,180024
	{
		bit [10: 0] UNUSED;
		bit         R0SFCS;
		bit         N3SFCS;
		bit         N2SFCS;
		bit         N1SFCS;
		bit         N0SFCS;
	} SFSEL_t;
	parameter bit [15:0] SFSEL_MASK = 16'h001F;
	
	typedef struct packed	//RW,180026
	{
		bit [ 7: 0] SFCDB;
		bit [ 7: 0] SFCDA;
	} SFCODE_t;
	parameter bit [15:0] SFCODE_MASK = 16'hFFFF;
	
	typedef struct packed	//RW,180028
	{
		bit [ 1: 0] UNUSED;
		bit [ 1: 0] N1CHCN;
		bit [ 1: 0] N1BMSZ;
		bit         N1BMEN;
		bit         N1CHSZ;
		bit         UNUSED2;
		bit [ 2: 0] N0CHCN;
		bit [ 1: 0] N0BMSZ;
		bit         N0BMEN;
		bit         N0CHSZ;
	} CHCTLA_t;
	parameter bit [15:0] CHCTLA_MASK = 16'h3F7F;
	
	typedef struct packed	//RW,18002A
	{
		bit         UNUSED;
		bit [ 2: 0] R0CHCN;
		bit         UNUSED2;
		bit         R0BMSZ;
		bit         R0BMEN;
		bit         R0CHSZ;
		bit [ 1: 0] UNUSED3;
		bit         N3CHCN;
		bit         N3CHSZ;
		bit [ 1: 0] UNUSED4;
		bit         N2CHCN;
		bit         N2CHSZ;
	} CHCTLB_t;
	parameter bit [15:0] CHCTLB_MASK = 16'h7733;
	
	typedef struct packed	//RW,18002C
	{
		bit [ 1: 0] UNUSED;
		bit         N1BMPR;
		bit         N1BMCC;
		bit         UNUSED2;
		bit [ 6: 4] N1BMP;
		bit [ 1: 0] UNUSED3;
		bit         N0BMPR;
		bit         N0BMCC;
		bit         UNUSED4;
		bit [ 6: 4] N0BMP;
	} BMPNA_t;
	parameter bit [15:0] BMPNA_MASK = 16'h3737;
	
	typedef struct packed	//RW,18002E
	{
		bit [ 9: 0] UNUSED;
		bit         R0BMPR;
		bit         R0BMCC;
		bit         UNUSED2;
		bit [ 6: 4] R0BMP;
	} BMPNB_t;
	parameter bit [15:0] BMPNB_MASK = 16'h0037;
	
	typedef struct packed	//RW,180030,180032,180034,180036
	{
		bit         NxPNB;
		bit         NxCNSM;
		bit [ 3: 0] UNUSED;
		bit         NxSPR;
		bit         NxSCC;
		bit [ 6: 4] NxSPLT;
		bit [ 4: 0] NxSCN;
	} PNCNx_t;
	parameter bit [15:0] PNCNx_MASK = 16'hC3FF;
	
	typedef struct packed	//RW,180038
	{
		bit         R0PNB;
		bit         R0CNSM;
		bit [ 3: 0] UNUSED;
		bit         R0SPR;
		bit         R0SCC;
		bit [ 6: 4] R0SPLT;
		bit [ 4: 0] R0SCN;
	} PNCR_t;
	parameter bit [15:0] PNCR_MASK = 16'hC3FF;
	
	typedef struct packed	//RW,18003A
	{
		bit [ 1: 0] RBOVR;
		bit [ 1: 0] RBPLSZ;
		bit [ 1: 0] RAOVR;
		bit [ 1: 0] RAPLSZ;
		bit [ 1: 0] N3PLSZ;
		bit [ 1: 0] N2PLSZ;
		bit [ 1: 0] N1PLSZ;
		bit [ 1: 0] N0PLSZ;
	} PLSZ_t;
	parameter bit [15:0] PLSZ_MASK = 16'hFFFF;
	
	typedef struct packed	//RW,18003C
	{
		bit         UNUSED;
		bit [ 8: 6] N3MP;
		bit         UNUSED2;
		bit [ 8: 6] N2MP;
		bit         UNUSED3;
		bit [ 8: 6] N1MP;
		bit         UNUSED4;
		bit [ 8: 6] N0MP;
	} MPOFN_t;
	parameter bit [15:0] MPOFN_MASK = 16'h7777;
	
	typedef struct packed	//RW,18003E
	{
		bit [ 8: 0] UNUSED;
		bit [ 8: 6] RBMP;
		bit         UNUSED2;
		bit [ 8: 6] RAMP;
	} MPOFR_t;
	parameter bit [15:0] MPOFR_MASK = 16'h0077;
	
	typedef struct packed	//RW,180040,180044,180048,18004C
	{
		bit [ 1: 0] UNUSED;
		bit [ 5: 0] NxMPB;
		bit [ 1: 0] UNUSED2;
		bit [ 5: 0] NxMPA;
	} MPABNx_t;
	parameter bit [15:0] MPABNx_MASK = 16'h3F3F;
	
	typedef struct packed	//RW,180042,180046,18004A,18004E
	{
		bit [ 1: 0] UNUSED;
		bit [ 5: 0] NxMPD;
		bit [ 1: 0] UNUSED2;
		bit [ 5: 0] NxMPC;
	} MPCDNx_t;
	parameter bit [15:0] MPCDNx_MASK = 16'h3F3F;
	
	typedef struct packed	//RW,180050,180060
	{
		bit [ 1: 0] UNUSED;
		bit [ 5: 0] RxMPB;
		bit [ 1: 0] UNUSED2;
		bit [ 5: 0] RxMPA;
	} MPABRx_t;
	parameter bit [15:0] MPABRx_MASK = 16'h3F3F;
	
	typedef struct packed	//RW,180052,180062
	{
		bit [ 1: 0] UNUSED;
		bit [ 5: 0] RxMPD;
		bit [ 1: 0] UNUSED2;
		bit [ 5: 0] RxMPC;
	} MPCDRx_t;
	parameter bit [15:0] MPCDRx_MASK = 16'h3F3F;
	
	typedef struct packed	//RW,180054,180064
	{
		bit [ 1: 0] UNUSED;
		bit [ 5: 0] RxMPF;
		bit [ 1: 0] UNUSED2;
		bit [ 5: 0] RxMPE;
	} MPEFRx_t;
	parameter bit [15:0] MPEFRx_MASK = 16'h3F3F;
	
	typedef struct packed	//RW,180056,180066
	{
		bit [ 1: 0] UNUSED;
		bit [ 5: 0] RxMPH;
		bit [ 1: 0] UNUSED2;
		bit [ 5: 0] RxMPG;
	} MPGHRx_t;
	parameter bit [15:0] MPGHRx_MASK = 16'h3F3F;
	
	typedef struct packed	//RW,180058,180068
	{
		bit [ 1: 0] UNUSED;
		bit [ 5: 0] RxMPJ;
		bit [ 1: 0] UNUSED2;
		bit [ 5: 0] RxMPI;
	} MPIJRx_t;
	parameter bit [15:0] MPIJRx_MASK = 16'h3F3F;
	
	typedef struct packed	//RW,18005A,18006A
	{
		bit [ 1: 0] UNUSED;
		bit [ 5: 0] RxMPL;
		bit [ 1: 0] UNUSED2;
		bit [ 5: 0] RxMPK;
	} MPKLRx_t;
	parameter bit [15:0] MPKLRx_MASK = 16'h3F3F;
	
	typedef struct packed	//RW,18005C,18006C
	{
		bit  [1:0] UNUSED;
		bit  [5:0] RxMPN;
		bit  [1:0] UNUSED2;
		bit  [5:0] RxMPM;
	} MPMNRx_t;
	parameter bit [15:0] MPMNRx_MASK = 16'h3F3F;
	
	typedef struct packed	//RW,18005E,18006E
	{
		bit [ 1: 0] UNUSED;
		bit [ 5: 0] RxMPP;
		bit [ 1: 0] UNUSED2;
		bit [ 5: 0] RxMPO;
	} MPOPRx_t;
	parameter bit [15:0] MPOPRx_MASK = 16'h3F3F;
	
	typedef struct packed	//RW,180070,180080
	{
		bit [ 4: 0] UNUSED;
		bit [10: 0] NxSCXI;
	} SCXINx_t;
	parameter bit [15:0] SCXINx_MASK = 16'h07FF;
	
	typedef struct packed	//RW,180072,180082
	{
		bit [ 7: 0] NxSCXD;
		bit [ 7: 0] UNUSED;
	} SCXDNx_t;
	parameter bit [15:0] SCXDNx_MASK = 16'hFF00;
	
	typedef struct packed	//RW,180074,180084
	{
		bit [ 4: 0] UNUSED;
		bit [10: 0] NxSCYI;
	} SCYINx_t;
	parameter bit [15:0] SCYINx_MASK = 16'h07FF;
	
	typedef struct packed	//RW,180076,180086
	{
		bit [ 7: 0] NxSCYD;
		bit [ 7: 0] UNUSED;
	} SCYDNx_t;
	parameter bit [15:0] SCYDNx_MASK = 16'hFF00;
	
	typedef struct packed	//RW,180078,180088
	{
		bit [11: 0] UNUSED;
		bit [ 3: 0] NxZMXI;
	} ZMXINx_t;
	parameter bit [15:0] ZMXINx_MASK = 16'h0007;
	
	typedef struct packed	//RW,18007A,18008A
	{
		bit [ 7: 0] NxZMXD;
		bit [ 7: 0] UNUSED;
	} ZMXDNx_t;
	parameter bit [15:0] ZMXDNx_MASK = 16'hFF00;
	
	typedef struct packed	//RW,18007C,18008C
	{
		bit [11: 0] UNUSED;
		bit [ 3: 0] NxZMYI;
	} ZMYINx_t;
	parameter bit [15:0] ZMYINx_MASK = 16'h0007;
	
	typedef struct packed	//RW,18007E,18008E
	{
		bit [ 7: 0] NxZMYD;
		bit [ 7: 0] UNUSED;
	} ZMYDNx_t;
	parameter bit [15:0] ZMYDNx_MASK = 16'hFF00;
	
	typedef struct packed	//RW,180090,180094
	{
		bit [ 4: 0] UNUSED;
		bit [10: 0] NxSCX;
	} SCXNx_t;
	parameter bit [15:0] SCXNx_MASK = 16'h07FF;
	
	typedef struct packed	//RW,180092,180096
	{
		bit [ 4: 0] UNUSED;
		bit [10: 0] NxSCY;
	} SCYNx_t;
	parameter bit [15:0] SCYNx_MASK = 16'h07FF;
	
	typedef struct packed	//RW,180098
	{
		bit [ 5: 0] UNUSED;
		bit         N1ZMQT;
		bit         N1ZMHF;
		bit [ 5: 0] UNUSED2;
		bit         N0ZMQT;
		bit         N0ZMHF;
	} ZMCTL_t;
	parameter bit [15:0] ZMCTL_MASK = 16'h0303;
	
	typedef struct packed	//RW,18009A
	{
		bit [ 1: 0] UNUSED;
		bit [ 1: 0] N1LSS;
		bit         N1LZMX;
		bit         N1LSCY;
		bit         N1LSCX;
		bit         N1VCSC;
		bit [ 1: 0] UNUSED2;
		bit [ 1: 0] N0LSS;
		bit         N0LZMX;
		bit         N0LSCY;
		bit         N0LSCX;
		bit         N0VCSC;
	} SCRCTL_t;
	parameter bit [15:0] SCRCTL_MASK = 16'h3F3F;
	
	typedef struct packed	//RW,18009C
	{
		bit [12: 0] UNUSED;
		bit [18:16] VCSTA;
	} VCSTAU_t;
	parameter bit [15:0] VCSTAU_MASK = 16'h0007;
	
	typedef struct packed	//RW,18009E
	{
		bit [15: 1] VCSTA;
		bit         UNUSED;
	} VCSTAL_t;
	parameter bit [15:0] VCSTAL_MASK = 16'hFFFE;
	
	typedef struct packed	//RW,1800A0,1800A4
	{
		bit [12: 0] UNUSED;
		bit [18:16] LSTA;
	} LSTAxU_t;
	parameter bit [15:0] LSTAxU_MASK = 16'h0007;
	
	typedef struct packed	//RW,1800A2,1800A6
	{
		bit [15: 1] LSTA;
		bit         UNUSED;
	} LSTAxL_t;
	parameter bit [15:0] LSTAxL_MASK = 16'hFFFE;
	
	typedef struct packed	//RW,1800A8
	{
		bit         LCCLMD;
		bit [11: 0] UNUSED;
		bit [18:16] LCTA;
	} LCTAU_t;
	parameter bit [15:0] LCTAU_MASK = 16'h8007;
	
	typedef struct packed	//RW,1800AA
	{
		bit [15: 0] LCTA;
	} LCTAL_t;
	parameter bit [15:0] LCTAL_MASK = 16'hFFFF;
	
	typedef struct packed	//RW,1800AC
	{
		bit         BKCLMD;
		bit [11: 0] UNUSED;
		bit [18:16] BKTA;
	} BKTAU_t;
	parameter bit [15:0] BKTAU_MASK = 16'h8007;
	
	typedef struct packed	//RW,1800AE
	{
		bit [15: 0] BKTA;
	} BKTAL_t;
	parameter bit [15:0] BKTAL_MASK = 16'hFFFF;
	
	typedef struct packed	//RW,1800B0
	{
		bit [13: 0] UNUSED;
		bit [ 1: 0] RPMD;
	} RPMD_t;
	parameter bit [15:0] RPMD_MASK = 16'h0003;
	
	typedef struct packed	//RW,1800B2
	{
		bit [ 4: 0] UNUSED;
		bit         RBKASTRE;
		bit         RBYSTRE;
		bit         RBXSTRE;
		bit [ 4: 0] UNUSED2;
		bit         RAKASTRE;
		bit         RAYSTRE;
		bit         RAXSTRE;
	} RPRCTL_t;
	parameter bit [15:0] RPRCTL_MASK = 16'h0707;
	
	typedef struct packed	//RW,1800B4
	{
		bit [ 2: 0] UNUSED;
		bit         RBKLCE;
		bit [ 1: 0] RBKMD;
		bit         RBKDBS;
		bit         RBKTE;
		bit [ 2: 0] UNUSED2;
		bit         RAKLCE;
		bit [ 1: 0] RAKMD;
		bit         RAKDBS;
		bit         RAKTE;
	} KTCTL_t;
	parameter bit [15:0] KTCTL_MASK = 16'h1F1F;
	
	typedef struct packed	//RW,1800B6
	{
		bit [ 4: 0] UNUSED;
		bit [ 2: 0] RBKTAOS;
		bit [ 4: 0] UNUSED2;
		bit [ 2: 0] RAKTAOS;
	} KTAOF_t;
	parameter bit [15:0] KTAOF_MASK = 16'h0707;
	
	typedef struct packed	//RW,1800B8,1800BA
	{
		bit [15: 0] RxOPN;
	} OVPNRx_t;
	parameter bit [15:0] OVPNRx_MASK = 16'hFFFF;
	
	typedef struct packed	//RW,1800BC
	{
		bit [12: 0] UNUSED;
		bit [18:16] RPTA;
	} RPTAU_t;
	parameter bit [15:0] RPTAU_MASK = 16'h0007;
	
	typedef struct packed	//RW,1800BE
	{
		bit [15: 1] RPTA;
		bit         UNUSED;
	} RPTAL_t;
	parameter bit [15:0] RPTAL_MASK = 16'hFFFE;
	
	typedef struct packed	//RW,1800C0,1800C8
	{
		bit [ 5: 0] UNUSED;
		bit [ 9: 0] WxSX;
	} WPSXx_t;
	parameter bit [15:0] WPSXx_MASK = 16'h03FF;
	
	typedef struct packed	//RW,1800C2,1800CA
	{
		bit [ 6: 0] UNUSED;
		bit [ 8: 0] WxSY;
	} WPSYx_t;
	parameter bit [15:0] WPSYx_MASK = 16'h01FF;
	
	typedef struct packed	//RW,1800C4,1800CC
	{
		bit [ 5: 0] UNUSED;
		bit [ 9: 0] WxEX;
	} WPEXx_t;
	parameter bit [15:0] WPEXx_MASK = 16'h03FF;
	
	typedef struct packed	//RW,1800C6,1800CE
	{
		bit [ 6: 0] UNUSED;
		bit [ 8: 0] WxEY;
	} WPEYx_t;
	parameter bit [15:0] WPEYx_MASK = 16'h01FF;
	
	typedef struct packed	//RW,1800D0
	{
		bit         N1LOG;
		bit         UNUSED;
		bit         N1SWE;
		bit         N1SWA;
		bit         N1W1E;
		bit         N1W1A;
		bit         N1W0E;
		bit         N1W0A;
		bit         N0LOG;
		bit         UNUSED2;
		bit         N0SWE;
		bit         N0SWA;
		bit         N0W1E;
		bit         N0W1A;
		bit         N0W0E;
		bit         N0W0A;
	} WCTLA_t;
	parameter bit [15:0] WCTLA_MASK = 16'hBFBF;
	
	typedef struct packed	//RW,1800D2
	{
		bit         N3LOG;
		bit         UNUSED;
		bit         N3SWE;
		bit         N3SWA;
		bit         N3W1E;
		bit         N3W1A;
		bit         N3W0E;
		bit         N3W0A;
		bit         N2LOG;
		bit         UNUSED2;
		bit         N2SWE;
		bit         N2SWA;
		bit         N2W1E;
		bit         N2W1A;
		bit         N2W0E;
		bit         N2W0A;
	} WCTLB_t;
	parameter bit [15:0] WCTLB_MASK = 16'hBFBF;
	
	typedef struct packed	//RW,1800D4
	{
		bit         SPLOG;
		bit         UNUSED;
		bit         SPSWE;
		bit         SPSWA;
		bit         SPW1E;
		bit         SPW1A;
		bit         SPW0E;
		bit         SPW0A;
		bit         R0LOG;
		bit         UNUSED2;
		bit         R0SWE;
		bit         R0SWA;
		bit         R0W1E;
		bit         R0W1A;
		bit         R0W0E;
		bit         R0W0A;
	} WCTLC_t;
	parameter bit [15:0] WCTLC_MASK = 16'hBFBF;
	
	typedef struct packed	//RW,1800D6
	{
		bit         CCLOG;
		bit         UNUSED;
		bit         CCSWE;
		bit         CCSWA;
		bit         CCW1E;
		bit         CCW1A;
		bit         CCW0E;
		bit         CCW0A;
		bit         RPLOG;
		bit [ 2: 0] UNUSED2;
		bit         RPW1E;
		bit         RPW1A;
		bit         RPW0E;
		bit         RPW0A;
	} WCTLD_t;
	parameter bit [15:0] WCTLD_MASK = 16'hBF8F;
	
	typedef struct packed	//RW,1800D8,1800DC
	{
		bit         WxLWE;
		bit [11: 0] UNUSED;
		bit [18:16] WxLWTA;
	} LWTAxU_t;
	parameter bit [15:0] LWTAxU_MASK = 16'h8007;
	
	typedef struct packed	//RW,1800DA,1800DE
	{
		bit [15: 1] WxLWTA;
		bit         UNUSED;
	} LWTAxL_t;
	parameter bit [15:0] LWTAxL_MASK = 16'hFFFE;
	
	typedef struct packed	//RW,1800E0
	{
		bit [ 1: 0] UNUSED;
		bit [ 1: 0] SPCCCS;
		bit         UNUSED2;
		bit [ 2: 0] SPCCN;
		bit [ 1: 0] UNUSED3;
		bit         SPCLMD;
		bit         SPWINEN;
		bit [ 3: 0] SPTYPE;
	} SPCTL_t;
	parameter bit [15:0] SPCTL_MASK = 16'h373F;
	
	typedef struct packed	//RW,1800E2
	{
		bit [ 6: 0] UNUSED;
		bit         TPSDSL;
		bit [ 1: 0] UNUSED2;
		bit         BKSDEN;
		bit         R0SDEN;
		bit         N3SDEN;
		bit         N2SDEN;
		bit         N1SDEN;
		bit         N0SDEN;
	} SDCTL_t;
	parameter bit [15:0] SDCTL_MASK = 16'h013F;
	
	typedef struct packed	//RW,1800E4
	{
		bit         UNUSED;
		bit [ 2: 0] N3CAOS;
		bit         UNUSED2;
		bit [ 2: 0] N2CAOS;
		bit         UNUSED3;
		bit [ 2: 0] N1CAOS;
		bit         UNUSED4;
		bit [ 2: 0] N0CAOS;
	} CRAOFA_t;
	parameter bit [15:0] CRAOFA_MASK = 16'h7777;
	
	typedef struct packed	//RW,1800E6
	{
		bit [ 8: 0] UNUSED;
		bit [ 2: 0] SPCAOS;
		bit         UNUSED2;
		bit [ 2: 0] R0CAOS;
	} CRAOFB_t;
	parameter bit [15:0] CRAOFB_MASK = 16'h0077;
	
	typedef struct packed	//RW,1800E8
	{
		bit [ 9: 0] UNUSED;
		bit         SPLCEN;
		bit         R0LCEN;
		bit         N3LCEN;
		bit         N2LCEN;
		bit         N1LCEN;
		bit         N0LCEN;
	} LNCLEN_t;
	parameter bit [15:0] LNCLEN_MASK = 16'h03FF;
	
	typedef struct packed	//RW,1800EA
	{
		bit [ 5: 0] UNUSED;
		bit [ 1: 0] R0SPRM;
		bit [ 1: 0] N3SPRM;
		bit [ 1: 0] N2SPRM;
		bit [ 1: 0] N1SPRM;
		bit [ 1: 0] N0SPRM;
	} SFPRMD_t;
	parameter bit [15:0] SFPRMD_MASK = 16'h03FF;
	
	typedef struct packed	//RW,1800EC
	{
		bit         BOKEN;
		bit [ 2: 0] BOKN;
		bit         UNUSED;
		bit         EXCCEN;
		bit         CCRTMD;
		bit         CCMD;
		bit         UNUSED2;
		bit         SPCCEN;
		bit         LCCCEN;
		bit         R0CCEN;
		bit         N3CCEN;
		bit         N2CCEN;
		bit         N1CCEN;
		bit         N0CCEN;
	} CCCTL_t;
	parameter bit [15:0] CCCTL_MASK = 16'hF77F;
	
	typedef struct packed	//RW,1800EE
	{
		bit [ 5: 0] UNUSED;
		bit [ 1: 0] R0SCCM;
		bit [ 1: 0] N3SCCM;
		bit [ 1: 0] N2SCCM;
		bit [ 1: 0] N1SCCM;
		bit [ 1: 0] N0SCCM;
	} SFCCMD_t;
	parameter bit [15:0] SFCCMD_MASK = 16'h03FF;
	
	typedef struct packed	//RW,1800F0
	{
		bit [ 4: 0] UNUSED;
		bit [ 2: 0] S1PRIN;
		bit [ 4: 0] UNUSED2;
		bit [ 2: 0] S0PRIN;
	} PRISA_t;
	parameter bit [15:0] PRISA_MASK = 16'h0707;
	
	typedef struct packed	//RW,1800F2
	{
		bit [ 4: 0] UNUSED;
		bit [ 2: 0] S3PRIN;
		bit [ 4: 0] UNUSED2;
		bit [ 2: 0] S2PRIN;
	} PRISB_t;
	parameter bit [15:0] PRISB_MASK = 16'h0707;
	
	typedef struct packed	//RW,1800F4
	{
		bit [ 4: 0] UNUSED;
		bit [ 2: 0] S5PRIN;
		bit [ 4: 0] UNUSED2;
		bit [ 2: 0] S4PRIN;
	} PRISC_t;
	parameter bit [15:0] PRISC_MASK = 16'h0707;
	
	typedef struct packed	//RW,1800F6
	{
		bit [ 4: 0] UNUSED;
		bit [ 2: 0] S7PRIN;
		bit [ 4: 0] UNUSED2;
		bit [ 2: 0] S6PRIN;
	} PRISD_t;
	parameter bit [15:0] PRISD_MASK = 16'h0707;
	
	typedef struct packed	//RW,1800F8
	{
		bit [ 4: 0] UNUSED;
		bit [ 2: 0] N1PRIN;
		bit [ 4: 0] UNUSED2;
		bit [ 2: 0] N0PRIN;
	} PRINA_t;
	parameter bit [15:0] PRINA_MASK = 16'h0707;
	
	typedef struct packed	//RW,1800FA
	{
		bit [ 4: 0] UNUSED;
		bit [ 2: 0] N3PRIN;
		bit [ 4: 0] UNUSED2;
		bit [ 2: 0] N2PRIN;
	} PRINB_t;
	parameter bit [15:0] PRINB_MASK = 16'h0707;
	
	typedef struct packed	//RW,1800FC
	{
		bit [12: 0] UNUSED;
		bit [ 2: 0] R0PRIN;
	} PRIR_t;
	parameter bit [15:0] PRIR_MASK = 16'h0007;
	
	typedef struct packed	//RW,180100
	{
		bit [ 2: 0] UNUSED;
		bit [ 4: 0] S1CCRT;
		bit [ 2: 0] UNUSED2;
		bit [ 4: 0] S0CCRT;
	} CCRSA_t;
	parameter bit [15:0] CCRSA_MASK = 16'h1F1F;
	
	typedef struct packed	//RW,180102
	{
		bit [ 2: 0] UNUSED;
		bit [ 4: 0] S3CCRT;
		bit [ 2: 0] UNUSED2;
		bit [ 4: 0] S2CCRT;
	} CCRSB_t;
	parameter bit [15:0] CCRSB_MASK = 16'h1F1F;
	
	typedef struct packed	//RW,180104
	{
		bit [ 2: 0] UNUSED;
		bit [ 4: 0] S5CCRT;
		bit [ 2: 0] UNUSED2;
		bit [ 4: 0] S4CCRT;
	} CCRSC_t;
	parameter bit [15:0] CCRSC_MASK = 16'h1F1F;
	
	typedef struct packed	//RW,180106
	{
		bit [ 2: 0] UNUSED;
		bit [ 4: 0] S7CCRT;
		bit [ 2: 0] UNUSED2;
		bit [ 4: 0] S6CCRT;
	} CCRSD_t;
	parameter bit [15:0] CCRSD_MASK = 16'h1F1F;
	
	typedef struct packed	//RW,180108
	{
		bit [ 2: 0] UNUSED;
		bit [ 4: 0] N1CCRT;
		bit [ 2: 0] UNUSED2;
		bit [ 4: 0] N0CCRT;
	} CCRNA_t;
	parameter bit [15:0] CCRNA_MASK = 16'h1F1F;
	
	typedef struct packed	//RW,18010A
	{
		bit [ 2: 0] UNUSED;
		bit [ 4: 0] N3CCRT;
		bit [ 2: 0] UNUSED2;
		bit [ 4: 0] N2CCRT;
	} CCRNB_t;
	parameter bit [15:0] CCRNB_MASK = 16'h1F1F;
	
	typedef struct packed	//RW,18010C
	{
		bit [10: 0] UNUSED;
		bit [ 4: 0] R0CCRT;
	} CCRR_t;
	parameter bit [15:0] CCRR_MASK = 16'h001F;
	
	typedef struct packed	//RW,18010E
	{
		bit [ 2: 0] UNUSED;
		bit [ 4: 0] BKCCRT;
		bit [ 2: 0] UNUSED2;
		bit [ 4: 0] LCCCRT;
	} CCRLB_t;
	parameter bit [15:0] CCRLB_MASK = 16'h1F1F;
	
	typedef struct packed	//RW,180110
	{
		bit [ 8: 0] UNUSED;
		bit         SPCOEN;
		bit         BKCOEN;
		bit         R0COEN;
		bit         N3COEN;
		bit         N2COEN;
		bit         N1COEN;
		bit         N0COEN;
	} CLOFEN_t;
	parameter bit [15:0] CLOFEN_MASK = 16'h007F;
	
	typedef struct packed	//RW,180112
	{
		bit [ 8: 0] UNUSED;
		bit         SPCOSL;
		bit         BKCOSL;
		bit         R0COSL;
		bit         N3COSL;
		bit         N2COSL;
		bit         N1COSL;
		bit         N0COSL;
	} CLOFSL_t;
	parameter bit [15:0] CLOFSL_MASK = 16'h007F;
	
	typedef struct packed	//RW,180114,18011A
	{
		bit [ 6: 0] UNUSED;
		bit [ 8: 0] COxRD;
	} COxR_t;
	parameter bit [15:0] COxR_MASK = 16'h01FF;
	
	typedef struct packed	//RW,180116,18011C
	{
		bit [ 6: 0] UNUSED;
		bit [ 8: 0] COxGR;
	} COxG_t;
	parameter bit [15:0] COxG_MASK = 16'h01FF;
	
	typedef struct packed	//RW,180118,18011E
	{
		bit [ 6: 0] UNUSED;
		bit [ 8: 0] COxBL;
	} COxB_t;
	parameter bit [15:0] COxB_MASK = 16'h01FF;
	
	typedef struct packed	//18000C,1800FE
	{
		bit [15: 0] UNUSED;
	} RSRV_t;
	parameter bit [15:0] RSRV_MASK = 16'h0000;
	
	typedef struct packed
	{
		TVMD_t   TVMD;			//180000
		EXTEN_t  EXTEN;		//180002
		TVSTAT_t TVSTAT;		//180004
		VRSIZE_t VRSIZE;		//180006
		HCNT_t   HCNT;			//180008
		VCNT_t   VCNT;			//18000A
		RSRV_t   RSRV0;		//18000C
		RAMCTL_t RAMCTL;		//18000E
		CYCx0L_t CYCA0L;		//180010
		CYCx0U_t CYCA0U;		//180012
		CYCx1L_t CYCA1L;		//180014
		CYCx1U_t CYCA1U;		//180016
		CYCx0L_t CYCB0L;		//180018
		CYCx0U_t CYCB0U;		//18001A
		CYCx1L_t CYCB1L;		//18001C
		CYCx1U_t CYCB1U;		//18001E
		BGON_t   BGON;			//180020
		MZCTL_t  MZCTL;		//180022
		SFSEL_t  SFSEL;		//180024
		SFCODE_t SFCODE;		//180026
		CHCTLA_t CHCTLA;		//180028
		CHCTLB_t CHCTLB;		//18002A
		BMPNA_t  BMPNA;		//18002C
		BMPNB_t  BMPNB;		//18002E
		PNCNx_t  PNCN0;		//180030
		PNCNx_t  PNCN1;		//180032
		PNCNx_t  PNCN2;		//180034
		PNCNx_t  PNCN3;		//180036
		PNCR_t   PNCR;			//180038
		PLSZ_t   PLSZ;			//18003A
		MPOFN_t  MPOFN;		//18003C
		MPOFR_t  MPOFR;		//18003E
		MPABNx_t MPABN0;		//180040
		MPCDNx_t MPCDN0;		//180042
		MPABNx_t MPABN1;		//180044
		MPCDNx_t MPCDN1;		//180046
		MPABNx_t MPABN2;		//180048
		MPCDNx_t MPCDN2;		//18004A
		MPABNx_t MPABN3;		//18004C
		MPCDNx_t MPCDN3;		//18004E
		MPABRx_t MPABRA;		//180050
		MPCDRx_t MPCDRA;		//180052
		MPEFRx_t MPEFRA;		//180054
		MPGHRx_t MPGHRA;		//180056
		MPIJRx_t MPIJRA;		//180058
		MPKLRx_t MPKLRA;		//18005A
		MPMNRx_t MPMNRA;		//18005C
		MPOPRx_t MPOPRA;		//18005E
		MPABRx_t MPABRB;		//180060
		MPCDRx_t MPCDRB;		//180062
		MPEFRx_t MPEFRB;		//180064
		MPGHRx_t MPGHRB;		//180066
		MPIJRx_t MPIJRB;		//180068
		MPKLRx_t MPKLRB;		//18006A
		MPMNRx_t MPMNRB;		//18006C
		MPOPRx_t MPOPRB;		//18006E
		SCXINx_t SCXIN0;		//180070
		SCXDNx_t SCXDN0;		//180072
		SCYINx_t SCYIN0;		//180074
		SCYDNx_t SCYDN0;		//180076
		ZMXINx_t ZMXIN0;		//180078
		ZMXDNx_t ZMXDN0;		//18007A
		ZMYINx_t ZMYIN0;		//18007C
		ZMYDNx_t ZMYDN0;		//18007E
		SCXINx_t SCXIN1;		//180080
		SCXDNx_t SCXDN1;		//180082
		SCYINx_t SCYIN1;		//180084
		SCYDNx_t SCYDN1;		//180086
		ZMXINx_t ZMXIN1;		//180088
		ZMXDNx_t ZMXDN1;		//18008A
		ZMYINx_t ZMYIN1;		//18008C
		ZMYDNx_t ZMYDN1;		//18008E
		SCXNx_t  SCXN2;		//180090
		SCYNx_t  SCYN2;		//180092
		SCXNx_t  SCXN3;		//180094
		SCYNx_t  SCYN3;		//180096
		ZMCTL_t  ZMCTL;		//180098
		SCRCTL_t SCRCTL;		//18009A
		VCSTAU_t VCSTAU;		//18009C
		VCSTAL_t VCSTAL;		//18009E
		LSTAxU_t LSTA0U;		//1800A0
		LSTAxL_t LSTA0L;		//1800A2
		LSTAxU_t LSTA1U;		//1800A4
		LSTAxL_t LSTA1L;		//1800A6
		LCTAU_t  LCTAU;		//1800A8
		LCTAL_t  LCTAL;		//1800AA
		BKTAU_t  BKTAU;		//1800AC
		BKTAL_t  BKTAL;		//1800AE
		RPMD_t   RPMD;			//1800B0
		RPRCTL_t RPRCTL;		//1800B2
		KTCTL_t  KTCTL;		//1800B4
		KTAOF_t  KTAOF;		//1800B6
		OVPNRx_t OVPNRA;		//1800B8
		OVPNRx_t OVPNRB;		//1800BA
		RPTAU_t  RPTAU;		//1800BC
		RPTAL_t  RPTAL;		//1800BE
		WPSXx_t  WPSX0;		//1800C0
		WPSYx_t  WPSY0;		//1800C2
		WPEXx_t  WPEX0;		//1800C4
		WPEYx_t  WPEY0;		//1800C6
		WPSXx_t  WPSX1;		//1800C8
		WPSYx_t  WPSY1;		//1800CA
		WPEXx_t  WPEX1;		//1800CC
		WPEYx_t  WPEY1;		//1800CE
		WCTLA_t  WCTLA;		//1800D0
		WCTLB_t  WCTLB;		//1800D2
		WCTLC_t  WCTLC;		//1800D4
		WCTLD_t  WCTLD;		//1800D6
		LWTAxU_t LWTA0U;		//1800D8
		LWTAxL_t LWTA0L;		//1800DA
		LWTAxU_t LWTA1U;		//1800DC
		LWTAxL_t LWTA1L;		//1800DE
		SPCTL_t  SPCTL;		//1800E0
		SDCTL_t  SDCTL;		//1800E2
		CRAOFA_t CRAOFA;		//1800E4
		CRAOFB_t CRAOFB;		//1800E6
		LNCLEN_t LNCLEN;		//1800E8
		SFPRMD_t SFPRMD;		//1800EA
		CCCTL_t  CCCTL;		//1800EC
		SFCCMD_t SFCCMD;		//1800EE
		PRISA_t  PRISA;		//1800F0
		PRISB_t  PRISB;		//1800F2
		PRISC_t  PRISC;		//1800F4
		PRISD_t  PRISD;		//1800F6
		PRINA_t  PRINA;		//1800F8
		PRINB_t  PRINB;		//1800FA
		PRIR_t   PRIR;			//1800FC
		RSRV_t   RSRV1;		//1800FE
		CCRSA_t  CCRSA;		//180100
		CCRSB_t  CCRSB;		//180102
		CCRSC_t  CCRSC;		//180104
		CCRSD_t  CCRSD;		//180106
		CCRNA_t  CCRNA;		//180108
		CCRNB_t  CCRNB;		//18010A
		CCRR_t   CCRR;			//18010C
		CCRLB_t  CCRLB;		//18010E
		CLOFEN_t CLOFEN;		//180110
		CLOFSL_t CLOFSL;		//180112
		COxR_t   COAR;			//180114
		COxG_t   COAG;			//180116
		COxB_t   COAB;			//180118
		COxR_t   COBR;			//18011A
		COxG_t   COBG;			//18011C
		COxB_t   COBB;			//18011E
	} VDP2Regs_t;
	
	typedef struct
	{
		bit [ 2: 0] CHCN;
		bit         CHSZ;
		bit [ 1: 0] PLSZ;
		bit [ 1: 0] BMSZ;
		bit         BMEN;
		PNCNx_t     PNC;
		bit [ 8: 6] MP;
		bit [ 5: 0] MPA;
		bit [ 5: 0] MPB;
		bit [ 5: 0] MPC;
		bit [ 5: 0] MPD;
		bit [18: 1] LSTA;
		bit         VCSC;
		bit [18: 1] VCSTA;
		bit         LSCX;
		bit         LSCY;
		bit         TPON;
		bit         ON;
	} VDP2NSRegs_t;
	typedef VDP2NSRegs_t VDP2NSxRegs_t [4];
	
	
	function VDP2NSxRegs_t NSxRegs(input VDP2Regs_t REGS);
		VDP2NSxRegs_t S;

		S[0].CHCN = REGS.CHCTLA.N0CHCN;
		S[1].CHCN = {1'b0,REGS.CHCTLA.N1CHCN};
		S[2].CHCN = {2'b00,REGS.CHCTLB.N2CHCN};
		S[3].CHCN = {2'b00,REGS.CHCTLB.N3CHCN};
		
		S[0].CHSZ = REGS.CHCTLA.N0CHSZ;
		S[1].CHSZ = REGS.CHCTLA.N1CHSZ;
		S[2].CHSZ = REGS.CHCTLB.N2CHSZ;
		S[3].CHSZ = REGS.CHCTLB.N3CHSZ;
		
		S[0].PLSZ = REGS.PLSZ.N0PLSZ;
		S[1].PLSZ = REGS.PLSZ.N1PLSZ;
		S[2].PLSZ = REGS.PLSZ.N2PLSZ;
		S[3].PLSZ = REGS.PLSZ.N3PLSZ;
		
		S[0].BMSZ = REGS.CHCTLA.N0BMSZ;
		S[1].BMSZ = REGS.CHCTLA.N1BMSZ;
		S[2].BMSZ = '0;
		S[3].BMSZ = '0;
		
		S[0].BMEN = REGS.CHCTLA.N0BMEN;
		S[1].BMEN = REGS.CHCTLA.N1BMEN;
		S[2].BMEN = 0;
		S[3].BMEN = 0;
		
		S[0].PNC = REGS.PNCN0;
		S[1].PNC = REGS.PNCN1;
		S[2].PNC = REGS.PNCN2;
		S[3].PNC = REGS.PNCN3;
		
		S[0].MP = REGS.MPOFN.N0MP;
		S[1].MP = REGS.MPOFN.N1MP;
		S[2].MP = REGS.MPOFN.N2MP;
		S[3].MP = REGS.MPOFN.N3MP;
		
		S[0].MPA = REGS.MPABN0.NxMPA;
		S[1].MPA = REGS.MPABN1.NxMPA;
		S[2].MPA = REGS.MPABN2.NxMPA;
		S[3].MPA = REGS.MPABN3.NxMPA;
		S[0].MPB = REGS.MPABN0.NxMPB;
		S[1].MPB = REGS.MPABN1.NxMPB;
		S[2].MPB = REGS.MPABN2.NxMPB;
		S[3].MPB = REGS.MPABN3.NxMPB;
		S[0].MPC = REGS.MPCDN0.NxMPC;
		S[1].MPC = REGS.MPCDN1.NxMPC;
		S[2].MPC = REGS.MPCDN2.NxMPC;
		S[3].MPC = REGS.MPCDN3.NxMPC;
		S[0].MPD = REGS.MPCDN0.NxMPD;
		S[1].MPD = REGS.MPCDN1.NxMPD;
		S[2].MPD = REGS.MPCDN2.NxMPD;
		S[3].MPD = REGS.MPCDN3.NxMPD;
		
		S[0].LSTA = {REGS.LSTA0U.LSTA,REGS.LSTA0L.LSTA};
		S[1].LSTA = {REGS.LSTA1U.LSTA,REGS.LSTA1L.LSTA};
		S[2].LSTA = '0;
		S[3].LSTA = '0;
		
		S[0].VCSC = REGS.SCRCTL.N0VCSC;
		S[1].VCSC = REGS.SCRCTL.N1VCSC;
		S[2].VCSC = 0;
		S[3].VCSC = 0;
		
		S[0].VCSTA = {REGS.VCSTAU.VCSTA,REGS.VCSTAL.VCSTA};
		S[1].VCSTA = {REGS.VCSTAU.VCSTA,REGS.VCSTAL.VCSTA};
		S[2].VCSTA = '0;
		S[3].VCSTA = '0;
		
		S[0].LSCX = REGS.SCRCTL.N0LSCX;
		S[1].LSCX = REGS.SCRCTL.N1LSCX;
		S[2].LSCX = '0;
		S[3].LSCX = '0;
		
		S[0].LSCY = REGS.SCRCTL.N0LSCY;
		S[1].LSCY = REGS.SCRCTL.N1LSCY;
		S[2].LSCY = '0;
		S[3].LSCY = '0;
		
		S[0].TPON = REGS.BGON.N0TPON;
		S[1].TPON = REGS.BGON.N1TPON;
		S[2].TPON = REGS.BGON.N2TPON;
		S[3].TPON = REGS.BGON.N3TPON;
	
		S[0].ON = REGS.BGON.N0ON;
		S[1].ON = REGS.BGON.N1ON;
		S[2].ON = REGS.BGON.N2ON;
		S[3].ON = REGS.BGON.N3ON;
		
		return S;
	endfunction

	//VRAM access command value
//	typedef enum bit [3:0] {
//		N0PN = 4'h0,  	//NBG0 pattern name data read
//		N1PN = 4'h1, 	//NBG1 pattern name data read
//		N2PN = 4'h2,	//NBG2 pattern name data read
//		N3PN = 4'h3,	//NBG3 pattern name data read
//		N0CH = 4'h4,	//NBG0 character data read
//		N1CH = 4'h5,	//NBG1 character data read
//		N2CH = 4'h6,	//NBG2 character data read
//		N3CH = 4'h7,	//NBG3 character data read
//		N0VS = 4'hC,	//NBG0 vertical cell scroll data read
//		N1VS = 4'hD,	//NBG1 vertical cell scroll data read
//		CPU  = 4'hE,	//CPU read/write
//		NA   = 4'hF 	//No access
//	} VCP_t;
	parameter VCP_N0PN 	= 4'h0; 	//NBG0 pattern name data read
	parameter VCP_N1PN 	= 4'h1; 	//NBG1 pattern name data read
	parameter VCP_N2PN 	= 4'h2;	//NBG2 pattern name data read
	parameter VCP_N3PN 	= 4'h3;	//NBG3 pattern name data read
	parameter VCP_N0CH 	= 4'h4;	//NBG0 character data read
	parameter VCP_N1CH 	= 4'h5;	//NBG1 character data read
	parameter VCP_N2CH 	= 4'h6;	//NBG2 character data read
	parameter VCP_N3CH 	= 4'h7;	//NBG3 character data read
	parameter VCP_N0VS 	= 4'hC;	//NBG0 vertical cell scroll data read
	parameter VCP_N1VS 	= 4'hD;	//NBG1 vertical cell scroll data read
	parameter VCP_CPU 	= 4'hE;	//CPU read/write
	parameter VCP_NA 	   = 4'hF;	//No access
	
	//VRAM access timing
	parameter T0 	= 3'd0;
	parameter T1 	= 3'd1;
	parameter T2 	= 3'd2;
	parameter T3 	= 3'd3;
	parameter T4 	= 3'd4;
	parameter T5 	= 3'd5;
	parameter T6 	= 3'd6;
	parameter T7 	= 3'd7;
	
	typedef struct packed
	{
		bit         VF;
		bit         HF;
		bit         PR;
		bit         CC;
		bit [ 4: 0] UNUSED;
		bit [ 6: 0] PALN;
		bit         UNUSED2;
		bit [14: 0] CHRN;
	} PN_t;
	
	typedef struct packed
	{
		bit [16: 1] A;
		bit         PN; 
		bit         CH; 
		bit         VS; 
		bit         LS; 
		bit         CPUA; 
		bit         CPUD; 
		bit [ 1: 0] Nx;
	} VRAMAccess_t;
	typedef bit [ 1: 0] NxPNS_t[4];
	typedef bit [ 1: 0] NxCHS_t[4];
	typedef bit [ 2: 0] NxCHCNT_t[4];
	typedef PN_t        NxPND_t[4];
	typedef bit [31: 0] NxCHD_t[4];
	
	typedef struct
	{
//		bit [ 8: 0] H_CNT; 
//		bit [ 8: 0] V_CNT;
		bit         LS0;
		bit [ 3: 0] NxA0PN;
		bit [ 3: 0] NxA1PN;
		bit [ 3: 0] NxB0PN;
		bit [ 3: 0] NxB1PN;
		bit [ 3: 0] NxA0CH;
		bit [ 3: 0] NxA1CH;
		bit [ 3: 0] NxB0CH;
		bit [ 3: 0] NxB1CH;
		bit [ 1: 0] NxA0VS;
		bit [ 1: 0] NxA1VS;
		bit [ 1: 0] NxB0VS;
		bit [ 1: 0] NxB1VS;
		bit [ 3: 0] NxA0CPU;
		bit [ 3: 0] NxA1CPU;
		bit [ 3: 0] NxB0CPU;
		bit [ 3: 0] NxB1CPU;
		bit [16: 1] VRAMA0_A; 
		bit [16: 1] VRAMA1_A; 
		bit [16: 1] VRAMB0_A; 
		bit [16: 1] VRAMB1_A;
		NxCHCNT_t   NxCH_CNT;
	} VRAMAccessState_t;
	typedef VRAMAccessState_t VRAMAccessPipeline_t [4];
	
	typedef struct
	{
		bit [ 3: 0] NxPN;
		NxPNS_t     NxPNS;
		bit [ 3: 0] NxCH;
		NxCHS_t     NxCHS;
		NxCHCNT_t   NxCH_CNT;
		bit [ 1: 0] NxVS;
		NxPND_t     NxPND;
		NxCHD_t     NxCHD;
	} BGState_t;
	typedef BGState_t BGPipeline_t [4];
	
	typedef struct packed
	{
		bit [10: 0] INT;
		bit [ 7: 0] FRAC;
	} ScrollData_t;
	parameter SCRLD_NULL	= {11'h000,8'h00};
	
	typedef struct packed
	{
		bit [ 2: 0] INT;
		bit [ 7: 0] FRAC;
	} CoordInc_t;
	parameter CRDI_NULL	= {3'h0,8'h00};
	
	typedef struct packed
	{
		bit         P;
		bit         TP;
		bit [23: 0] D;
	} DotData_t;
	parameter DD_NULL = {1'b0,1'b0,24'h000000};
	
	typedef DotData_t CellDotsLine_t [8];
	typedef DotData_t DotsBuffer_t [16];
	
	typedef struct packed
	{
		bit         TP;
		bit [ 7: 0] B;
		bit [ 7: 0] G;
		bit [ 7: 0] R;
	} DotColor_t;
	parameter DC_BLACK = {1'b0,8'h00,8'h00,8'h00};
	
	function bit [19:1] NxPNAddr(input bit [10:0] NxOFFX, input bit [10:0] NxOFFY,
	                             input bit [8:6] NxMP, input bit [5:0] NxMPA, input bit [5:0] NxMPB, input bit [5:0] NxMPC, input bit [5:0] NxMPD, 
										  input bit [1:0] NxPLSZ, input bit NxCHSZ, input bit NxPNB);
		bit [19:1] addr;
		bit  [8:0] mpx;
		bit  [8:0] map_addr;
		
		case ({NxOFFY[10],NxOFFX[10]})
			2'b00: mpx = {NxMP,NxMPA};
			2'b01: mpx = {NxMP,NxMPB};
			2'b10: mpx = {NxMP,NxMPC};
			2'b11: mpx = {NxMP,NxMPD};
		endcase
		case (NxPLSZ)
			2'b00: map_addr = mpx;
			2'b01: map_addr = {mpx[8:1],NxOFFY[9]};
			2'b10,
			2'b11: map_addr = {mpx[8:2],NxOFFY[9],NxOFFX[9]};
		endcase
		case ({NxPNB,NxCHSZ})
			2'b00: addr = {map_addr[5:0],NxOFFY[8:3],NxOFFX[8:3],1'b0};
			2'b01: addr = {map_addr[7:0],NxOFFY[8:4],NxOFFX[8:4],1'b0};
			2'b10: addr = {map_addr[6:0],NxOFFY[8:3],NxOFFX[8:3]};
			2'b11: addr = {map_addr[8:0],NxOFFY[8:4],NxOFFX[8:4]};
		endcase
	
		return addr;
	endfunction
	
	function bit [19:1] NxCHAddr(input PN_t PNx, input bit [2:0] NxCH_CNT, input bit NxOFFX3, input bit [10:0] NxOFFY, input bit [2:0] NxCHCN, input bit NxCHSZ);
		bit   [19:1] addr;
		bit    [4:0] cell_offs;
//		bit    [2:0] cell_dot_x, cell_dot_y;
		
//		cell_dot_x = NxCH_CNT/* ^ {3{PNx.HF}}*/;
//		cell_dot_y = NxOFFY[2:0] ^ {3{PNx.VF}};
		case (NxCHSZ)
			1'b0: cell_offs = { 2'b00,                            NxOFFY[2:0] ^ {3{PNx.VF}} };
			1'b1: cell_offs = { NxOFFY[3]^PNx.VF,NxOFFX3^PNx.HF,NxOFFY[2:0] ^ {3{PNx.VF}} };
		endcase
		case (NxCHCN)
			3'b000: addr = {PNx.CHRN[14:0],4'b0000} + {13'b000000000000,cell_offs[4:0],1'b0};					//4bits/dot, 16 colors
			3'b001: addr = {PNx.CHRN[14:0],4'b0000} + {12'b00000000000, cell_offs[4:0],NxCH_CNT[0],1'b0};	//8bits/dot, 256 colors
			3'b010,
			3'b011: addr = {PNx.CHRN[14:0],4'b0000} + {11'b0000000000,  cell_offs[4:0],NxCH_CNT[1:0],1'b0};	//16bits/dot, 2048/32768 colors
			3'b100: addr = {PNx.CHRN[14:0],4'b0000} + {10'b000000000,   cell_offs[4:0],NxCH_CNT[2:0],1'b0};	//32bits/dot, 16M colors
			default: addr = '0;
		endcase
	
		return addr;
	endfunction
	
	function bit [19:1] NxBMAddr(input bit [10:0] NxOFFX, input bit [10:0] NxOFFY, input bit [2:0] NxMP, input bit [2:0] NxCHCN, input bit [1:0] NxBMSZ);
		bit   [19:1] addr;
		bit    [4:0] cell_offs;

		case (NxCHCN)
			3'b000: addr = {NxMP[2:0],NxOFFY[7:0],NxOFFX[8:3],1'b0};	//4bits/dot, 16 colors
			3'b001: addr = {NxMP[1:0],NxOFFY[7:0],NxOFFX[8:2],1'b0};	//8bits/dot, 256 colors
			3'b010,
			3'b011: addr = {NxMP[0:0],NxOFFY[7:0],NxOFFX[8:1],1'b0};	//16bits/dot, 2048/32768 colors
			3'b100: addr = {          NxOFFY[7:0],NxOFFX[8:0],1'b0};	//32bits/dot, 16M colors
			default: addr = '0;
		endcase
	
		return addr;
	endfunction
	
	function PN_t PNOneWord(input PNCNx_t PNC, input bit CHSZ, input bit [2:0] CHCN, input bit [15:0] DW);
		PN_t res;
		
		res = '0;
		res.VF = DW[11] & ~PNC.NxCNSM; 
		res.HF = DW[10] & ~PNC.NxCNSM; 
		res.PR = PNC.NxSPR; 
		res.CC = PNC.NxSCC;
		case ({CHSZ,|CHCN})
			2'b00: begin 
				res.PALN = {PNC.NxSPLT,DW[15:12]};
				res.CHRN = {PNC.NxSCN[4:2],(PNC.NxSCN[1:0] & {2{~PNC.NxCNSM}}) | (DW[11:10] & {2{PNC.NxCNSM}}),DW[9:0]};
			end
			2'b01: begin 
				res.PALN = {DW[14:12],4'b0000};
				res.CHRN = {PNC.NxSCN[4:2],(PNC.NxSCN[1:0] & {2{~PNC.NxCNSM}}) | (DW[11:10] & {2{PNC.NxCNSM}}),DW[9:0]};
			end
			2'b10: begin 
				res.PALN = {PNC.NxSPLT,DW[15:12]};
				res.CHRN = {PNC.NxSCN[4],(PNC.NxSCN[3:2] & {2{~PNC.NxCNSM}}) | (DW[11:10] & {2{PNC.NxCNSM}}),DW[9:0],PNC.NxSCN[1:0]};
			end
			2'b11: begin 
				res.PALN = {DW[14:12],4'b0000};
				res.CHRN = {PNC.NxSCN[4],(PNC.NxSCN[3:2] & {2{~PNC.NxCNSM}}) | (DW[11:10] & {2{PNC.NxCNSM}}),DW[9:0],PNC.NxSCN[1:0]};
			end
		endcase
	
		return res;
	endfunction

	function DotColor_t Color555ToDC(input bit [15:0] DW);
		DotColor_t DC;

		DC.TP = DW[15]; 
		DC.B = {DW[14:10],3'b000}; 
		DC.G = {DW[9:5],3'b000}; 
		DC.R = {DW[4:0],3'b000}; 
	
		return DC;
	endfunction
	
	function bit [23:0] Color555To888(input bit [15:0] DW);
		return {DW[14:10],3'b000,DW[9:5],3'b000,DW[4:0],3'b000}; 
	endfunction
	
	
	typedef struct packed
	{
		bit [ 2: 0] UNUSED;
		bit [12: 0] INT;
		bit [ 9: 0] FRAC;
		bit [ 5: 0] UNUSED2;
	} ScrnStart_t;
	
	typedef struct packed
	{
		bit [12: 0] UNUSED;
		bit [ 2: 0] INT;
		bit [ 9: 0] FRAC;
		bit [ 5: 0] UNUSED2;
	} ScrnInc_t;
	
	typedef struct packed
	{
		bit [11: 0] UNUSED;
		bit [ 3: 0] INT;
		bit [ 9: 0] FRAC;
		bit [ 5: 0] UNUSED2;
	} MatrParam_t;
	
	typedef struct packed
	{
		bit [ 1: 0] UNUSED;
		bit [13: 0] INT;
	} ScrnCoord_t;
	
	typedef struct packed
	{
		bit [ 7: 0] UNUSED;
		bit [ 7: 0] INT;
		bit [15: 0] FRAC;
	} Scalling_t;

	typedef struct packed
	{
		bit [15: 0] INT;
		bit [ 9: 0] FRAC;
		bit [ 5: 0] UNUSED;
	} TblAddr_t;
	
	typedef struct packed
	{
		bit [ 5: 0] UNUSED;
		bit [ 9: 0] INT;
		bit [ 9: 0] FRAC;
		bit [ 5: 0] UNUSED2;
	} AddrInc_t;
	
	
endpackage