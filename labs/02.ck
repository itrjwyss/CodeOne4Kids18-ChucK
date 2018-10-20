//Defining the oscillator type and 
//assigning it to the DAC (Digital-to-Analog Converter)
SinOsc wave => dac;

//reproducing the sound A1
110 => wave.freq;
0.9 => wave.gain;
1::second => now;

//reproducing the sound A2
220 => wave.freq;
0.8 => wave.gain;
1::second => now;

//reproducing the sound A3
440 => wave.freq;
0.7 => wave.gain;
1::second => now;

//reproducing the sound A4
880 => wave.freq;
0.6 => wave.gain;
1::second => now;

//reproducing the sound A5
1760 => wave.freq;
0.5 => wave.gain;
1::second => now;