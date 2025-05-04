%   =======================================================================

%   Description
%   Prepare case for BEM simulation

%   Author
%  	Erwan Hafizi Kasiman, Imperial College London
%   ======================================================================= 

function prepareCase

    OpenFOAMPath = '/home/erwanhafizi/Documents/GenSpec/focusedWave/OF2D_Tp1.6_A0.128_G2.5';
                            
%   =======================================================================
%   WAVE GAUGES
%   =======================================================================

%   Line gauges
    writeLineGauges(OpenFOAMPath, 0.2, -7.9:0.02:7.9, 0.01, 'waveGauges')
    
end