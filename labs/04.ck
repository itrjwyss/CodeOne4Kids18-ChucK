//Defining the oscillator type and 
//assigning it to the DAC (Digital-to-Analog Converter)
SinOsc wave => dac;

//To try with other oscillators
//SqrOsc wave => dac;
//TriOsc wave => dac;
//SawOsc wave => dac;

//Defining an infinite loop
while( true ){
    //Using random2f method in Math class for 
    //define a frequency and a gain
    Math.random2f(220, 880) => wave.freq;
    Math.random2f(0.2, 0.8) => wave.gain;
    
    0.25::second => now;
}