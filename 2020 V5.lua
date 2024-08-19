--[[

2020-R : a Touch OSC project for DUB-Russell's 2020 Beat Machine (https://2020.dubrussell.com/)

2020-R gives you the ability to selectively randomise all of the parameters in the
samples, synths and FX block in 2020 Beat Machine.

]]



--[[
PARAMETERS

This is where you define all node OSC nodes for the parameters in each 2020 device or "group". Many are just single parameters
but some, such as envelopes, have multiple nodes that you need to set values for

Each parameter set is a named LUA list that contains a list for each addressable parameter followed by it's default value
Each list is also give a type which can be "ENV", "DIAL" or "CONST"

	"ENV" is one of various multi-node envelopes in 2020 that have X, Y and CURVE parameters
	"DIAL" is on of the many rotary dials that also have a random Probability and Range
	"CONST" are the rest of the parameters that are just set and have no Probability or Range functions

]]

PARAMETERS = {
	ENV_AMP = {
		type = "ENV",
		{node = "/envelope/amp/1/x/", default = 0.0},
		{node = "/envelope/amp/2/x/", default = 0.33},
		{node = "/envelope/amp/3/x/", default = 0.66},
		{node = "/envelope/amp/4/x/", default = 1.0},
		{node = "/envelope/amp/1/y/", default = 1.0},
		{node = "/envelope/amp/2/y/", default = 0.5},
		{node = "/envelope/amp/3/y/", default = 0.5},
		{node = "/envelope/amp/1/curve/", default = 0.5},
		{node = "/envelope/amp/2/curve/", default = 0.5},
		{node = "/envelope/amp/3/curve/", default = 0.5},
		{node = "/envelope/amp/4/curve/", default = 0.5}
	},
	ENV_PITCH = {
	  type = "ENV",
	  {node = "/envelope/pitch/1/x/", default = 0.0},
	  {node = "/envelope/pitch/2/x/", default = 0.5},
	  {node = "/envelope/pitch/3/x/", default = 1.0},
	  {node = "/envelope/pitch/1/y/", default = 0.0},
	  {node = "/envelope/pitch/2/y/", default = 0.0},
	  {node = "/envelope/pitch/3/y/", default = 0.0},
	  {node = "/envelope/pitch/1/curve/", default = 0.5},
	  {node = "/envelope/pitch/2/curve/", default = 0.5},
	  {node = "/envelope/pitch/3/curve/", default = 0.5},
	},
	ENV_KICK_AMP = {
		type = "ENV",
		{node = "/kick/envelope/amp/1/x/", default = 0.0},
		{node = "/kick/envelope/amp/2/x/", default = 0.50},
		{node = "/kick/envelope/amp/3/x/", default = 1.0},
		{node = "/kick/envelope/amp/1/y/", default = 1.0},
		{node = "/kick/envelope/amp/2/y/", default = 0.5},
		{node = "/kick/envelope/amp/3/y/", default = 0.0},
		{node = "/kick/envelope/amp/1/curve/", default = 0.5},
		{node = "/kick/envelope/amp/2/curve/", default = 0.5},
		{node = "/kick/envelope/amp/3/curve/", default = 0.5}	
	},
	ENV_KICK_PITCH = {
		type = "ENV",
		{node = "/kick/envelope/pitch/1/x/", default = 0.0},
		{node = "/kick/envelope/pitch/2/x/", default = 0.2},
		{node = "/kick/envelope/pitch/1/y/", default = 0.3},
		{node = "/kick/envelope/pitch/2/y/", default = 0.0},
		{node = "/kick/envelope/pitch/1/curve/", default = 0.2},
		{node = "/kick/envelope/pitch/2/curve/", default = 0.2}	
	},
	DRIVE = {
		type = "DIAL",
		{node = "/overdrive/", default = 0.0}
	},
	OVERTONE = {
		type = "DIAL",
		{node = "/overtone/", default = 0.0}
	},
	RINGMOD_DEPTH = {
		type = "DIAL",
		{node = "/ringmod/amount/", default = 0.0},
	},
	RINGMOD_FREQUENCY = {
		type = "DIAL",
		{node = "/ringmod/frequency/", default = 0.0}
	},
	LOWPASS = {
		type = "DIAL",
		{node = "/filter/lowpass/", default = 1.0}
	},
	HIGHPASS = {
		type = "DIAL",
		{node = "/filter/highpass/", default = 0.0}
	},
	RESONANCE = {
		type = "DIAL",
		{node = "/filter/resonance/", default = 0.0}
	},
	BITCRUSH = {
		type = "DIAL",
		{node = "/bitcrush/", default = 1.0}
	},
	DOWNSAMPLE = {
		type = "DIAL",
		{node = "/downsample/", default = 1.0}
	},
	LFO_SPEED = {
		type = "DIAL",
		{node = "/lfo/frequency/", default = 0.0},
	},
	BI_LFO_SPEED = {
		type = "DIAL",
		{node = "/lfo/frequency/", default = 0.5},
	},
	LFO_AMOUNT = {
		type = "DIAL",
		{node = "/lfo/amount/", default = 0.5},
	},
	LFO_TARGET = {
		type = "CONST",
		{node = "/lfo/target/", default = 0.2},
	},
	LFO_SHAPE = {
		type = "CONST",
		{node = "/lfo/waveform/", default = 0.0},
	},
	DELAY1 = {
		type = "DIAL",
		{node = "/bus/send/delay1/", default = 0.0}
	},
	DELAY2 = {
		type ="DIAL",
		{node = "/bus/send/delay2", default = 0.0}
	},
	REVERB = {
		type = "DIAL",
		{node = "/bus/send/reverb/", default = 0.0}
	},
	KICK_CLICK = {
		type = "DIAL",
		{node = "/kick/click/", default = 0.5},
	},
	KICK_TONE = {
		type = "DIAL",
		{node = "/kick/tone/", default = 0.0},
	},
	KICK_LEVEL = {
		type = "DIAL",
		{node = "/kick/", default = 0.5}
	},
	KICK_FREQUENCY = {
		type = "CONST",
		{node = "/kick/frequency/", default = 0.1385},
	},
	KICK_LENGTH = {
		type = "CONST",
	    {node = "/kick/length/", default = 0.5},
	},
	PAN = {
		type = "DIAL",
		{node = "/pan/", default = 0.5}
	},
	REVERSE = {
		type = "CONST",
		{node = "/reverse/", default = 0.0}
	},
	PITCH = {
		type = "CONST",
		{node = "/pitch/", default = 0.5}
	},
	TRANSPOSE = {
		type = "CONST",
		{node = "/transpose/", default = 0.5}
	},
	FX_SEND = {
		type = "CONST",
		{node = "/bus/fx1/", default = 0.0},
		{node = "/bus/fx2/", default = 0.0},
		{node = "/bus/fx3/", default = 0.0},
	},
	OP1_WAVE = {
		type = "CONST",
		{node = "/op1/waveform/", default = 0.0},
	},
	OP2_WAVE = {
		type = "CONST",
		{node = "/op2/waveform/", default = 0.0},
	},
	OP3_WAVE = {
		type = "CONST",
		{node = "/op3/waveform/", default = 0.0},
	},
	OP1_RATIO = {
		type = "CONST",
		{node = "/op1/ratio/", default = 0.5},
	},
	OP2_RATIO = {
		type = "CONST",
		{node = "/op2/ratio/", default = 0.5},
	},
	OP3_RATIO = {
		type = "CONST",
		{node = "/op3/ratio/", default = 0.5},
	},
	OP1_SYNC = {
		type = "CONST",
		{node = "/op1/sync/", default = 0.0},
	},
	OP2_SYNC = {
		type = "CONST",
		{node = "/op2/sync/", default = 0.0},
	},
	OP3_SYNC = {
		type = "CONST",
		{node = "/op3/sync/", default = 0.0},
	},
	OP1_LFO_FREQUENCY = {
		type = "CONST",
		{node = "/op1/lfo/frequency/", default = 0.5},
	},
	OP2_LFO_FREQUENCY = {
		type = "CONST",
		{node = "/op2/lfo/frequency/", default = 0.5},
	},
	OP3_LFO_FREQUENCY = {
		type = "CONST",
		{node = "/op3/lfo/frequency/", default = 0.5},
	},
	OP1_LFO_AMOUNT = {
		type = "CONST",
		{node = "/op1/lfo/amount/", default = 0.5},
	},
	OP2_LFO_AMOUNT = {
		type = "CONST",
		{node = "/op2/lfo/amount/", default = 0.5},
	},
	OP3_LFO_AMOUNT = {
		type = "CONST",
		{node = "/op3/lfo/amount/", default = 0.5},
	},
	OP1_VELOCITY = {
		type = "CONST",
		{node = "/op1/velocity/", default = 1.0},
	},
	OP2_VELOCITY = {
		type = "CONST",
		{node = "/op2/velocity/", default = 1.0},
	},
	OP3_VELOCITY = {
		type = "CONST",
		{node = "/op3/velocity/", default = 1.0},
	},
	OP1_MODULATION = {
		type = "CONST",
		{node = "/op1/modulation/", default = 0.0},
	},
	OP2_MODULATION = {
		type = "CONST",
		{node = "/op2/modulation/", default = 0.0},
	},
	OP3_MODULATION = {
		type = "CONST",
		{node = "/op3/modulation/", default = 0.0},
	},
	OP1_LEVEL = {
		type = "CONST",
		{node = "/op1/level/", default = 0.5},
	},
	OP2_LEVEL = {
		type = "CONST",
		{node = "/op2/level/", default = 0.5},
	},
	OP3_LEVEL = {
		type = "CONST",
		{node = "/op3/level/", default = 0.5},
	},
	OP_PITCH = {
		type = "CONST",
		{node = "/pitch/", default = 0.5}
	},
	OP_LENGTH = {
		type = "CONST",
		{node = "/length/", default = 0.5}
	},
	OP_ALGORITHM = {
		type = "CONST",
		{node = "/algorithm/", default = 0.0}
	},
	PHASER = {
		type = "DIAL",
		{node = "/phaser/amount/", default = 0.0}
	},
	SLICE_DIVISION = {
		type = "CONST",
		{node = "/division/", default = 0.0}
	},
	SLICE_DIRECTION = {
		type = "CONST",
		{node = "/direction/", default = 0.0}
	},
	SLICE_RANDOM = {
		type = "CONST",
		{node = "/random/", default = 0.0}
	},
	SLICE_QUANTIZE = {
		type = "CONST",
		{node = "/quantize/", default = 0.0}
	},
	SLICE_ENVELOPE = {
		type = "CONST",
		{node = "/envelope/", default = 0.0}
	},
	ENV_GRN_POS = {
		type = "ENV",
		{node = "/envelope/position/1/x/", default = 0.0},
		{node = "/envelope/position/2/x/", default = 0.25},
		{node = "/envelope/position/3/x/", default = 0.50},
		{node = "/envelope/position/4/x/", default = 0.75},
		{node = "/envelope/position/5/x/", default = 1.0},
		{node = "/envelope/position/1/y/", default = 0.0},
		{node = "/envelope/position/2/y/", default = 0.25},
		{node = "/envelope/position/3/y/", default = 0.5},
		{node = "/envelope/position/4/y/", default = 0.75},
		{node = "/envelope/position/5/y/", default = 1.0},
		{node = "/envelope/position/1/curve/", default = 0.5},
		{node = "/envelope/position/2/curve/", default = 0.5},
		{node = "/envelope/position/3/curve/", default = 0.5},
		{node = "/envelope/position/4/curve/", default = 0.5},
		{node = "/envelope/position/5/curve/", default = 0.5},
	},
	ENV_GRN_SIZE = {
		type = "ENV",
		{node = "/envelope/size/1/x/", default = 0.0},
		{node = "/envelope/size/2/x/", default = 0.25},
		{node = "/envelope/size/3/x/", default = 0.50},
		{node = "/envelope/size/4/x/", default = 0.75},
		{node = "/envelope/size/5/x/", default = 1.0},
		{node = "/envelope/size/1/y/", default = 0.5},
		{node = "/envelope/size/2/y/", default = 0.5},
		{node = "/envelope/size/3/y/", default = 0.5},
		{node = "/envelope/size/4/y/", default = 0.5},
		{node = "/envelope/size/5/y/", default = 0.5},
		{node = "/envelope/size/1/curve/", default = 0.5},
		{node = "/envelope/size/2/curve/", default = 0.5},
		{node = "/envelope/size/3/curve/", default = 0.5},
		{node = "/envelope/size/4/curve/", default = 0.5},
		{node = "/envelope/size/5/curve/", default = 0.5},
	},
	ENV_GRN_DIST = {
		type = "ENV",
		{node = "/envelope/distance/1/x/", default = 0.0},
		{node = "/envelope/distance/2/x/", default = 0.25},
		{node = "/envelope/distance/3/x/", default = 0.50},
		{node = "/envelope/distance/4/x/", default = 0.75},
		{node = "/envelope/distance/5/x/", default = 1.0},
		{node = "/envelope/distance/1/y/", default = 0.5},
		{node = "/envelope/distance/2/y/", default = 0.5},
		{node = "/envelope/distance/3/y/", default = 0.5},
		{node = "/envelope/distance/4/y/", default = 0.5},
		{node = "/envelope/distance/5/y/", default = 0.5},
		{node = "/envelope/distance/1/curve/", default = 0.5},
		{node = "/envelope/distance/2/curve/", default = 0.5},
		{node = "/envelope/distance/3/curve/", default = 0.5},
		{node = "/envelope/distance/4/curve/", default = 0.5},
		{node = "/envelope/distance/5/curve/", default = 0.5},
	},
	ENV_GRN_JIT = {
		type = "ENV",
		{node = "/envelope/jit/1/x/", default = 0.0},
		{node = "/envelope/jit/2/x/", default = 0.25},
		{node = "/envelope/jit/3/x/", default = 0.50},
		{node = "/envelope/jit/4/x/", default = 0.75},
		{node = "/envelope/jit/5/x/", default = 1.0},
		{node = "/envelope/jit/1/y/", default = 0.5},
		{node = "/envelope/jit/2/y/", default = 0.5},
		{node = "/envelope/jit/3/y/", default = 0.5},
		{node = "/envelope/jit/4/y/", default = 0.5},
		{node = "/envelope/jit/5/y/", default = 0.5},
		{node = "/envelope/jit/1/curve/", default = 0.5},
		{node = "/envelope/jit/2/curve/", default = 0.5},
		{node = "/envelope/jit/3/curve/", default = 0.5},
		{node = "/envelope/jit/4/curve/", default = 0.5},
		{node = "/envelope/jit/5/curve/", default = 0.5},
	},
	ENV_GRN_AMP = {
		type = "ENV",
		{node = "/envelope/amp/1/x/", default = 0.0},
		{node = "/envelope/amp/2/x/", default = 0.25},
		{node = "/envelope/amp/3/x/", default = 0.50},
		{node = "/envelope/amp/4/x/", default = 0.75},
		{node = "/envelope/amp/5/x/", default = 1.0},
		{node = "/envelope/amp/1/y/", default = 1.0},
		{node = "/envelope/amp/2/y/", default = 0.5},
		{node = "/envelope/amp/3/y/", default = 0.5},
		{node = "/envelope/amp/4/y/", default = 0.5},
		{node = "/envelope/amp/5/y/", default = 0.0},
		{node = "/envelope/amp/1/curve/", default = 0.5},
		{node = "/envelope/amp/2/curve/", default = 0.5},
		{node = "/envelope/amp/3/curve/", default = 0.5},
		{node = "/envelope/amp/4/curve/", default = 0.5},
		{node = "/envelope/amp/5/curve/", default = 0.5},
	},
	ENV_GRN_PITCH = {
		type = "ENV",
		{node = "/envelope/pitch/1/x/", default = 0.0},
		{node = "/envelope/pitch/2/x/", default = 0.25},
		{node = "/envelope/pitch/3/x/", default = 0.50},
		{node = "/envelope/pitch/4/x/", default = 0.75},
		{node = "/envelope/pitch/5/x/", default = 1.0},
		{node = "/envelope/pitch/1/y/", default = 0.0},
		{node = "/envelope/pitch/2/y/", default = 0.0},
		{node = "/envelope/pitch/3/y/", default = 0.0},
		{node = "/envelope/pitch/4/y/", default = 0.0},
		{node = "/envelope/pitch/5/y/", default = 0.0},
		{node = "/envelope/pitch/1/curve/", default = 0.5},
		{node = "/envelope/pitch/2/curve/", default = 0.5},
		{node = "/envelope/pitch/3/curve/", default = 0.5},
		{node = "/envelope/pitch/4/curve/", default = 0.5},
		{node = "/envelope/pitch/5/curve/", default = 0.5},
	},
	GRN_LEN = {
		type = "CONST",
		{node = "/length/", default = 0.5}
	},
	GRN_PITCH = {
		type = "DIAL",
		{node = "/pitch/", default = 0.5}
	},
	FLT_THRS = {
		type = "CONST",
		{node = "/filter/threshold/", default = 0.25}
	},
	FLT_PROB = {
		type = "CONST",
		{node = "/filter/prob", default = 0.5}
	},
	FLT_LPF = {
		type = "DIAL",
		{node = "/filter/lowpass/", default = 1.0}
	},
	FLT_HPF = {
		type = "DIAL",
		{node = "/filter/highpass/", default = 0.0}
	},
	FLT_RES = {
		type = "DIAL",
		{node = "/filter/resonance/", default = 0.0}
	},
	FLG_PROB = {
		type = "CONST",
		{node = "/flanger/prob/", default = 0.5}
	},
	FLG_DLY = {
		type = "DIAL",
		{node = "/flanger/delaytime/", default = 0.5}
	},
	FLG_FDBK = {
		type = "DIAL",
		{node = "/flanger/feedback/", default = 0.5}
	},
	PHS_PROB = {
		type = "CONST",
		{node = "/phaser/prob/", default = 0.5}
	},
	PHS_AMT = {
		type = "DIAL",
		{node = "/phaser/amount/", default = 0.5}
	},
	PHS_FRQ = {
		type = "DIAL",
		{node = "/phaser/frequency/", default = 0.5}
	},
	RMD_PROB = {
		type = "CONST",
		{node = "/ringmod/prob/", default = 0.5}
	},
	RMD_AMT = {
		type = "DIAL",
		{node = "/ringmod/amount/", default = 0.0}
	},
	RMD_FRQ = {
		type = "DIAL",
		{node = "/ringmod/frequency/", default = 0.0}
	},
	CRS_PROB = {
		type = "CONST",
		{node = "/crusher/prob/", default = 0.5}
	},
	CRS_BIT = {
		type = "DIAL",
		{node = "/crusher/bitcrush/", default = 1.0}
	},
	CRS_SMP = {
		type = "DIAL",
		{node = "/crusher/downsample/", default = 1.0}
	},
	GR1_THRS = {
		type = "CONST",
		{node = "/grain1/threshold/", default = 0.25}
	},
	GR1_PROB = {
		type = "CONST",
		{node = "/grain1/prob/", default = 0.5}
	},
	GR1_SMTH = {
		type = "CONST",
		{node = "/grain1/smooth/", default = 0.5}
	},
	GR1_JIT = {
		type = "DIAL",
		{node = "/grain1/jit/", default = 0.35}
	},
	GR1_DIST = {
		type = "DIAL",
		{node = "/grain1/distance/", default = 0.5}
	},
	GR1_SPD = {
		type = "DIAL",
		{node = "/grain1/speed/", default = 0.75}
	},
	GR1_PCH = {
		type = "DIAL",
		{node = "/grain1/pitch/", default = 0.5}
	},
	GR1_SIZE = {
		type = "DIAL",
		{node = "/grain1/size/", default = 0.5}
	},
	SPN_THRS = {
		type = "CONST",
		{node = "/spinner/threshold/", default = 0.25}
	},
	SPN_PROB = {
		type = "CONST",
		{node = "/spinner/prob/", default = 0.5}
	},
	SPN_BRK = {
		type = "DIAL",
		{node = "/spinner/brake/", default = 0.5}
	},
	SPN_ACC = {
		type = "DIAL",
		{node = "/spinner/accel/", default = 0.5}
	},
	SPN_CUE = {
		type = "DIAL",
		{node = "/spinner/cue/", default = 0.0}
	},
	SPN_PARA = {
		type = "DIAL",
		{node = "/spinner/parallel/", default = 0.0}
	},
	LV1_THRS = {
		type = "CONST",
		{node = "/level1/threshold/", default = 0.25}
	},
	LV1_LVL = {
		type = "DIAL",
		{node = "/level1/level/", default = 0.5}
	},
	LV2_THRS = {
		type = "CONST",
		{node = "/level2/threshold/", default = 0.25}
	},
	LV2_LVL = {
		type = "DIAL",
		{node = "/level2/level/", default = 0.5}
	},
	GR2_THRS = {
		type = "CONST",
		{node = "/grain2/threshold/", default = 0.25}
	},
	GR2_PROB = {
		type = "CONST",
		{node = "/grain2/prob/", default = 0.5}
	},
	GR2_SMTH = {
		type = "CONST",
		{node = "/grain2/smooth/", default = 0.5}
	},
	GR2_JIT = {
		type = "DIAL",
		{node = "/grain2/jit/", default = 0.35}
	},
	GR2_DIST = {
		type = "DIAL",
		{node = "/grain2/distance/", default = 0.5}
	},
	GR2_SPD = {
		type = "DIAL",
		{node = "/grain2/speed/", default = 0.75}
	},
	GR2_LOCK = {
		type = "DIAL",
		{node = "/grain2/lock/", default = 0.5}
	},
	GR2_SIZE = {
		type = "DIAL",
		{node = "/grain2/size/", default = 0.5}
	},
	SD1_THRS = {
		type = "CONST",
		{node = "/send1/threshold/", default = 0.25}
	},
	SD1_PROB = {
		type = "CONST",
		{node = "/send1/prob/", default = 0.5}
	},
	SD1_DLY1 = {
		type = "DIAL",
		{node = "/send1/delay1/", default = 0.0}
	},
	SD1_DLY2 = {
		type = "DIAL",
		{node = "/send1/delay2/", default = 0.0}
	},
	SD1_RVB = {
		type = "DIAL",
		{node = "/send1/reverb/", default = 0.0}
	},
	SD2_THRS = {
		type = "CONST",
		{node = "/send2/threshold/", default = 0.25}
	},
	SD2_PROB = {
		type = "CONST",
		{node = "/send2/prob/", default = 0.5}
	},
	SD2_DLY1 = {
		type = "DIAL",
		{node = "/send2/delay1/", default = 0.0}
	},
	SD2_DLY2 = {
		type = "DIAL",
		{node = "/send2/delay2/", default = 0.0}
	},
	SD2_RVB = {
		type = "DIAL",
		{node = "/send2/reverb/", default = 0.0}
	},
	RPT_THRS = {
		type = "CONST",
		{node = "/repeater/threshold/", default = 0.25}
	},
	RPT_PROB = {
		type = "CONST",
		{node = "/repeater/prob/", default = 0.5}
	},
	RPT_TRI = {
		type = "CONST",
		{node = "/repeater/triplet/", default = 0.5}
	},
	RPT_HLD = {
		type = "DIAL",
		{node = "/repeater/hold/", default = 1.0}
	},
	RPT_AMP = {
		type = "DIAL",
		{node = "/repeater/amp/", default = 0.5}
	},
	RPT_PCH = {
		type = "DIAL",
		{node = "/repeater/pitch/", default = 0.5}
	},
	RPT_LEN = {
		type = "DIAL",
		{node = "/repeater/length/", default = 0.5}
	},
	RPT_SIZE = {
		type = "DIAL",
		{node = "/repeater/size/", default = 0.5}
	},
	LF1_FRQ = {
		type = "DIAL",
		{node = "/lfo1/frequency/", default = 0.5}
	},
	LF1_AMT = {
		type = "DIAL",
		{node = "/lfo1/amount/", default = 0.5}
	},
	LF1_TRGT = {
		type = "CONST",
		{node = "/lfo1/target/", default = 0.0}
	},
	LF1_SHAPE = {
		type = "CONST",
		{node = "/lfo1/waveform/", default = 0.0}
	},
	LF2_FRQ = {
		type = "DIAL",
		{node = "/lfo2/frequency/", default = 0.5}
	},
	LF2_AMT = {
		type = "DIAL",
		{node = "/lfo2/amount/", default = 0.5}
	},
	LF2_TRGT = {
		type = "CONST",
		{node = "/lfo2/target/", default = 0.0}
	},
	LF2_SHAPE = {
		type = "CONST",
		{node = "/lfo2/waveform/", default = 0.0}
	},
	LF3_FRQ = {
		type = "DIAL",
		{node = "/lfo3/frequency/", default = 0.5}
	},
	LF3_AMT = {
		type = "DIAL",
		{node = "/lfo3/amount/", default = 0.5}
	},
	LF3_TRGT = {
		type = "CONST",
		{node = "/lfo3/target/", default = 0.0}
	},
	LF3_SHAPE = {
		type = "CONST",
		{node = "/lfo3/waveform/", default = 0.0}
	},
	GLT_THRS = {
		type = "CONST",
		{node = "/glitch/threshold/", default = 0.25}
	},
	GLT_PROB = {
		type = "CONST",
		{node = "/glitch/prob/off/", default = 0.5},
		{node = "/glitch/prob/on/", default = 0.5},
	},
	GLT_HLD = {
		type = "CONST",
		{node = "/glitch/hold/", default = 1.0}
	},
	GLT_TRI = {
		type = "CONST",
		{node = "/glitch/triplet/", default = 0.5}
	},
	GLT_BEAT = {
		type = "CONST",
		{node = "/glitch/beat/", default = 0.5}
	},
	GLT_ROT = {
		type = "CONST",
		{node = "/glitch/rotate/cell/left/", default = 0.0},
		{node = "/glitch/rotate/cell/right/", default = 0.0},
		{node = "/glitch/rotate/beat/left/", default = 0.0},
		{node = "/glitch/rotate/beat/right/", default = 0.0}
	},
	T_PITCH = {
		type = "CONST",
		{node = "/pitch/", default = 0.5}
	},
	T_LEVEL = {
		type = "CONST",
		{node = "/level/", default = 0.0}
	},
	T_RINGMOD_DEPTH = {
		type = "CONST",
		{node = "/ringmod/amount/", default = 0.0}
	},
	T_RINGMOD_FREQUENCY = {
		type = "CONST",
		{node = "/ringmod/frequency/", default = 0.0}
	},
	T_OVERTONE = {
		type = "CONST",
		{node = "/overtone/", default = 0.0}
	},
	T_LOWPASS = {
		type = "CONST",
		{node = "/filter/lowpass/", default = 1.0}
	},
	T_HIGHPASS = {
		type = "CONST",
		{node = "/filter/highpass/", default = 0.0}
	},
	T_RESONANCE = {
		type = "CONST",
		{node = "/filter/resonance/", default = 0.0}
	},
	T_LFO_SPEED = {
		type = "CONST",
		{node = "/lfo/frequency/", default = 0.5}
	},
	T_LFO_AMOUNT = {
		type = "CONST",
		{node = "/lfo/amount/", default = 0.5}
	},
	T_LFO_TARGET = {
		type = "CONST",
		{node = "/lfo/target/", default = 0.375}
	},
	T_SPEED = {
		type = "CONST",
		{node = "/speed/", default = 0.75}
	},
	T_SIZE = {
		type = "CONST",
		{node = "/size/", default = 0.5}
	},
	T_DIST = {
		type = "CONST",
		{node = "/distance/", default = 0.5}
	},
	T_JIT = {
		type = "CONST",
		{node = "/jit/", default = 0.5}
	},
	T_LFO1_SPEED = {
		type = "CONST",
		{node = "/lfo1/frequency/", default = 0.5}
	},
	T_LFO1_AMOUNT = {
		type = "CONST",
		{node = "/lfo1/amount/", default = 0.5}
	},
	T_LFO1_TARGET = {
		type = "CONST",
		{node = "/lfo1/target/", default = 0.0}
	},
	T_LFO1_SHAPE = {
		type = "CONST",
		{node = "/lfo1/waveform/", default = 0.0}
	},
	T_LFO2_SPEED = {
		type = "CONST",
		{node = "/lfo2/frequency/", default = 0.5}
	},
	T_LFO2_AMOUNT = {
		type = "CONST",
		{node = "/lfo2/amount/", default = 0.5}
	},
	T_LFO2_TARGET = {
		type = "CONST",
		{node = "/lfo2/target/", default = 0.25}
	},
	T_LFO2_SHAPE = {
		type = "CONST",
		{node = "/lfo2/waveform/", default = 0.0}
	},
	S_LOWPASS = {
		type = "CONST",
		{node = "/filter/lowpass/", default = 1.0}
	},
	S_HIGHPASS = {
		type = "CONST",
		{node = "/filter/highpass/", default = 0.0}
	},
	S_RESONANCE = {
		type = "CONST",
		{node = "/filter/resonance/", default = 0.0}
	},
	S_LFO_SPEED = {
		type = "CONST",
		{node = "/lfo/frequency/", default = 0.5}
	},
	S_LFO_AMOUNT = {
		type = "CONST",
		{node = "/lfo/amount/", default = 0.5}
	},
	S_LFO_TARGET = {
		type = "CONST",
		{node = "/lfo/target/", default = 0.375}
	},
	S_LFO_SHAPE = {
		type = "CONST",
		{node = "/lfo/waveform/", default = 0.0}
	},
	S_DRIVE = {
		type = "CONST",
		{node = "/overdrive/", default = 0.0}
	},
	S_DIV = {
		type = "CONST",
		{node = "/division/", default = 0.11811024}
	},
	S_SPD = {
		type = "CONST",
		{node = "/speed/", default = 1.0}
	},
	S_GRN = {
		type = "CONST",
		{node = "/grain/", default = 0.0}
	},
	S_SUS = {
		type = "CONST",
		{node = "/sustain/", default = 0.0}
	},
	S_STEPS = {
		type = "CONST"
	},
	S_RES = {
		type = "CONST"
	}
	
	
}

--[[
ENV_RANGES

ENV_RANGES is where you define the addressable nodes for setting Probabilty and Range parameters for Envelopes
This is because the addressing format for Envelope nodes is distinct from other parameters

]]
ENV_RANGES = {
	ENV_AMP = {
		{node = "/envelope/amp/1/range/x/"},
		{node = "/envelope/amp/2/range/x/"},
		{node = "/envelope/amp/3/range/x/"},
		{node = "/envelope/amp/4/range/x/"},
		{node = "/envelope/amp/1/range/y/"},
		{node = "/envelope/amp/2/range/y/"},
		{node = "/envelope/amp/3/range/y/"},
		{node = "/envelope/amp/4/range/y/"},
	},
	ENV_PITCH = {
		{node = "/envelope/pitch/1/range/x/"},
		{node = "/envelope/pitch/2/range/x/"},
		{node = "/envelope/pitch/3/range/x/"},
		{node = "/envelope/pitch/1/range/y/"},
		{node = "/envelope/pitch/2/range/y/"},
		{node = "/envelope/pitch/3/range/y/"},
	},
	ENV_KICK_AMP = {
		{node = "/kick/envelope/amp/1/range/x/"},
		{node = "/kick/envelope/amp/2/range/x/"},
		{node = "/kick/envelope/amp/3/range/x/"},
		{node = "/kick/envelope/amp/1/range/y/"},
		{node = "/kick/envelope/amp/2/range/y/"},
		{node = "/kick/envelope/amp/3/range/y/"},
	},
	ENV_KICK_PITCH = {
		{node = "/kick/envelope/pitch/1/range/x/"},
		{node = "/kick/envelope/pitch/2/range/x/"},
		{node = "/kick/envelope/pitch/1/range/y/"},
		{node = "/kick/envelope/pitch/2/range/y/"},
	},
	ENV_GRN_POS = {
		{node = "/envelope/position/1/range/x/"},
		{node = "/envelope/position/2/range/x/"},
		{node = "/envelope/position/3/range/x/"},
		{node = "/envelope/position/4/range/x/"},
		{node = "/envelope/position/5/range/x/"},
		{node = "/envelope/position/1/range/y/"},
		{node = "/envelope/position/2/range/y/"},
		{node = "/envelope/position/3/range/y/"},
		{node = "/envelope/position/4/range/y/"},
		{node = "/envelope/position/5/range/y/"},
	},
	ENV_GRN_SIZE = {
		{node = "/envelope/size/1/range/x/"},
		{node = "/envelope/size/2/range/x/"},
		{node = "/envelope/size/3/range/x/"},
		{node = "/envelope/size/4/range/x/"},
		{node = "/envelope/size/5/range/x/"},
		{node = "/envelope/size/1/range/y/"},
		{node = "/envelope/size/2/range/y/"},
		{node = "/envelope/size/3/range/y/"},
		{node = "/envelope/size/4/range/y/"},
		{node = "/envelope/size/5/range/y/"},
	},
	ENV_GRN_DIST = {
		{node = "/envelope/distance/1/range/x/"},
		{node = "/envelope/distance/2/range/x/"},
		{node = "/envelope/distance/3/range/x/"},
		{node = "/envelope/distance/4/range/x/"},
		{node = "/envelope/distance/5/range/x/"},
		{node = "/envelope/distance/1/range/y/"},
		{node = "/envelope/distance/2/range/y/"},
		{node = "/envelope/distance/3/range/y/"},
		{node = "/envelope/distance/4/range/y/"},
		{node = "/envelope/distance/5/range/y/"},
	},
	ENV_GRN_JIT = {
		{node = "/envelope/jit/1/range/x/"},
		{node = "/envelope/jit/2/range/x/"},
		{node = "/envelope/jit/3/range/x/"},
		{node = "/envelope/jit/4/range/x/"},
		{node = "/envelope/jit/5/range/x/"},
		{node = "/envelope/jit/1/range/y/"},
		{node = "/envelope/jit/2/range/y/"},
		{node = "/envelope/jit/3/range/y/"},
		{node = "/envelope/jit/4/range/y/"},
		{node = "/envelope/jit/5/range/y/"},
	},
	ENV_GRN_AMP = {
		{node = "/envelope/amp/1/range/x/"},
		{node = "/envelope/amp/2/range/x/"},
		{node = "/envelope/amp/3/range/x/"},
		{node = "/envelope/amp/4/range/x/"},
		{node = "/envelope/amp/5/range/x/"},
		{node = "/envelope/amp/1/range/y/"},
		{node = "/envelope/amp/2/range/y/"},
		{node = "/envelope/amp/3/range/y/"},
		{node = "/envelope/amp/4/range/y/"},
		{node = "/envelope/amp/5/range/y/"},
	},
	ENV_GRN_PITCH = {
		{node = "/envelope/pitch/1/range/x/"},
		{node = "/envelope/pitch/2/range/x/"},
		{node = "/envelope/pitch/3/range/x/"},
		{node = "/envelope/pitch/4/range/x/"},
		{node = "/envelope/pitch/5/range/x/"},
		{node = "/envelope/pitch/1/range/y/"},
		{node = "/envelope/pitch/2/range/y/"},
		{node = "/envelope/pitch/3/range/y/"},
		{node = "/envelope/pitch/4/range/y/"},
		{node = "/envelope/pitch/5/range/y/"},
	},
}
  
-- Function to return a random float in a range
function rndFloat(low, high)
    return math.random(low * 100, high * 100) / 100
end

-- Function to check is item named 's' is in list 'l'
function isIn(s, l)
	for _, e in ipairs(l) do
		if (s == e) then return true end
	end
	return false
end

--[[

This is the function that is called from the SEND button of each parameter group

The SEND button passes the group name plus the status of VALUES, RANGES and RESET toggle buttons

]]
function onReceiveNotify(node, args)
	-- Unpack parameters sent from SEND button scripts

	local group, SW_VALUES, SW_RANGE, SW_RESET, RADIAL_DENSITY = table.unpack(args)
	-- Get parameter list
	group3_envs = {
		ENV_AMP_OP1 = {prefix = "/op1", node = "ENV_AMP"},
		ENV_AMP_OP2 = {prefix = "/op2", node = "ENV_AMP"},
		ENV_AMP_OP3 = {prefix = "/op3", node = "ENV_AMP"},
		ENV_PITCH_OP1 = {prefix = "/op1", node = "ENV_PITCH"},
		ENV_PITCH_OP2 = {prefix = "/op2", node = "ENV_PITCH"},
		ENV_PITCH_OP3 = {prefix = "/op3", node = "ENV_PITCH"},
	}
	
	if (group3_envs[node]) then
		prefix = group3_envs[node].prefix
		node = group3_envs[node].node
	else
		prefix = ""
	end

	-- print(node, prefix)
	local pnodes = PARAMETERS[node]
	-- Only try to process if parameter group exists = silent fail
	if (pnodes) then
		-- Are we setting values?
		if (SW_VALUES == 1) then
			-- Are we resetting values?
			if (SW_RESET == 1) then
				if (node == "S_STEPS") then
					for beat = 1, 32 do
						for div = 1, 8 do
						  sendOSC(string.format("/slicer/seq/%s/%s/", beat, div), 0.0)
						end
					end
				elseif (node == "S_RES") then
					for beat = 1, 32 do
						sendOSC(string.format("/slicer/seq/resolution/%s/", beat), 0.42857143)
					end
				else	 
					for i = 1, #pnodes do
						sendOSC(string.format("%s%s%s", group, prefix, pnodes[i].node), pnodes[i].default)
					end
				end
			else
				-- Envelopes need special handling
				-- print(pnodes["type"])
				if (pnodes["type"] == "ENV") then

					-- First randomize overall envelope length
					-- then randomize other X nodes based on ratio of the overall length
					local len = rndFloat(0.0, 1.0)
					local r = 0

					-- There are several different envelopes with differing number of nodes
					-- Each one is randomized slightly differently with the X parameter range divided
					-- by the number of nodes in the envelope. This is to avoid random X points that
					-- are "behind" subsequent points.
					if (isIn(node, {"ENV_GRN_POS", "ENV_GRN_SIZE", "ENV_GRN_DIST", "ENV_GRN_JIT", "ENV_GRN_AMP"})) then
						--print("GRAIN ENVELOPE")
						sendOSC(string.format("%s%s%s", group, prefix, pnodes[1].node), 0.0)
						sendOSC(string.format("%s%s%s", group, prefix, pnodes[2].node), len * rndFloat(0.0, 0.33))
						sendOSC(string.format("%s%s%s", group, prefix, pnodes[3].node), len * rndFloat(0.33, 0.66))
						sendOSC(string.format("%s%s%s", group, prefix, pnodes[4].node), len * rndFloat(0.66, 1.0))
						sendOSC(string.format("%s%s%s", group, prefix, pnodes[5].node), 1.0)
						r = 6
					elseif (isIn(node, {"ENV_GRN_AMP", "ENV_GRN_PITCH"})) then
						--print("GRAIN ENVELOPE")
						sendOSC(string.format("%s%s%s", group, prefix, pnodes[1].node), len * rndFloat(0.0, 0.25))
						sendOSC(string.format("%s%s%s", group, prefix, pnodes[2].node), len * rndFloat(0.25, 0.50))
						sendOSC(string.format("%s%s%s", group, prefix, pnodes[3].node), len * rndFloat(0.50, 0.75))
						sendOSC(string.format("%s%s%s", group, prefix, pnodes[4].node), len * rndFloat(0.75, 1.0))
						sendOSC(string.format("%s%s%s", group, prefix, pnodes[5].node), len)
						r = 6
					elseif (node == "ENV_AMP") then
						-- Process X nodes first
						sendOSC(string.format("%s%s%s", group, prefix, pnodes[1].node), len * rndFloat(0.0, 0.33))
						sendOSC(string.format("%s%s%s", group, prefix, pnodes[2].node), len * rndFloat(0.33, 0.66))
						sendOSC(string.format("%s%s%s", group, prefix, pnodes[3].node), len * rndFloat(0.66, 1.0))
						sendOSC(string.format("%s%s%s", group, prefix, pnodes[4].node), len)
						-- Then 'r' is set to index the remaining parameters in the envelope
						r = 5
					elseif (node == "ENV_PITCH" or node == "ENV_KICK_AMP") then
						-- Process X nodes first
						sendOSC(string.format("%s%s%s", group, prefix, pnodes[1].node), len * rndFloat(0.0, 0.50))
						sendOSC(string.format("%s%s%s", group, prefix, pnodes[2].node), len * rndFloat(0.50, 1.0))
						sendOSC(string.format("%s%s%s", group, prefix, pnodes[3].node), len)
						-- Then 'r' is set to index the remaining parameters in the envelope
						r = 4
					elseif (node == "ENV_KICK_PITCH") then
						-- Process X nodes first
						sendOSC(string.format("%s%s", group, pnodes[1].node), len * rndFloat(0.0, 1.0))
						sendOSC(string.format("%s%s", group, pnodes[2].node), len)
						-- Then 'r' is set to index the remaining parameters in the envelope
						r = 3
					end
			
					-- Use 'r' to process remainder of envelope parameters
					for i = r, #pnodes do
						sendOSC(string.format("%s%s%s", group, prefix, pnodes[i].node), math.random())
					end
			
				elseif (pnodes["type"] == "DIAL") then
					for i = 1, #pnodes do
						sendOSC(string.format("%s%s%s", group, prefix, pnodes[i].node), math.random())
					end
				elseif (pnodes["type"] == "CONST") then
					-- print(node)
					-- Special case for Glitcher Probability On/Off
					if (node == "GLT_PROB") then
												-- If type 1 then Probability Off and Probabilty On are just random values from 0-100%
						-- If type 0 then Probabilty On is random value from 0-100 and Prob Off is that value subtracted from 100%
						-- e.g. if Prob On = 64% then Prob Off will be 36%
						local type = 1
						if (type == 0) then
							p_on = math.random()
							p_off = 1.0 - p_on
							sendOSC(string.format("%s%s%s", group, prefix, pnodes[1].node), p_on)
							sendOSC(string.format("%s%s%s", group, prefix, pnodes[2].node), p_off)
						else
							sendOSC(string.format("%s%s%s", group, prefix, pnodes[1].node), math.random())
							sendOSC(string.format("%s%s%s", group, prefix, pnodes[2].node), math.random())
						end
					elseif (node == "GLT_ROT") then
						-- Special case for Glitcher Cell/Rotation
						-- For Cell rotation, if random number if >0.5 (50% chance) then perform a cell rotation
						-- then if another random value >0.5 rotate cell left otherwise rotate right
						if (math.random() >= 0.5) then
							if (math.random() >= 0.5) then
								n = "/fx/glitch/rotate/cell/left/"
							else
								n = "/fx/glitch/rotate/cell/right/"
							end
							sendOSC(n, 1.0)
						end

						-- Special case for Glitcher Beat/Rotation
						-- For Beat rotation, if random number if >0.5 (50% chance) then perform a beat rotation
						-- then if another random value >0.5 rotate beat left otherwise rotate right
						if (math.random() >= 0.5) then
							if (math.random() >= 0.5) then
								n = "/fx/glitch/rotate/beat/left/"
							else
								n = "/fx/glitch/rotate/beat/right/"
							end
							sendOSC(n, 1.0)
						end
					elseif (node == "S_STEPS") then
						for beat = 1, 32 do
							for div = 1, 8 do
							  if (math.random() <= RADIAL_DENSITY) then v = math.random() else v = 0.0 end
							  sendOSC(string.format("/slicer/seq/%s/%s/", beat, div), v)
							end
						end				
					elseif (node == "S_RES") then
						for beat = 1, 32 do
							sendOSC(string.format("/slicer/seq/resolution/%s/", beat), math.random())
						end					
					else
						for i = 1, #pnodes do
							sendOSC(string.format("%s%s%s", group, prefix, pnodes[i].node), math.random())
						end
					end
				end
			end
		end

		-- Process random range/probability parameters
		if (SW_RANGE == 1) then
			-- ENV ranges have their own table to handle RANGE nodes
			if (string.sub(node, 1, 4) == "ENV_") then
				-- print(node, "ENVELOPE NODE")
				rnodes = ENV_RANGES[node]
				if (rnodes) then
					for i, r in ipairs(rnodes) do
						if (SW_RESET == 1) then v = 0.0 else v = math.random() end
						sendOSC(string.format("%s%s%s", group, prefix, rnodes[i].node), v)
					end
				end
			else
				-- print("NOT ENV")
				rnodes = PARAMETERS[node]
				-- CONST variables don't ever have Probability or Range
				if (rnodes and rnodes["type"] ~= "CONST" ) then
					for i, r in ipairs(rnodes) do
						if (SW_RESET == 1) then v = 0.0 else v = math.random() end
						sendOSC(string.format("%s%s%sprob/", group, prefix, rnodes[i].node), v)
						sendOSC(string.format("%s%s%srange/", group, prefix, rnodes[i].node), v)
					end
				end
			end
		end
	end
end

