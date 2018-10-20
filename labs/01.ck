//Declaring variables
440 => float frequency;
0.6 => float gain;

//Defining the oscillator type and 
//assigning it to the DAC (Digital-to-Analog Converter)
SinOsc wave => dac;

//reproducing the sound
frequency => wave.freq;
gain => wave.gain;

//Establishing how many time will be the duration 
//of the sound and we will play it now.
3::second => now;