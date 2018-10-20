//Defining the oscillator type and 
//assigning it to the DAC (Digital-to-Analog Converter)
SinOsc wave => dac;

//To try with other oscillators
//SqrOsc wave => dac;
//TriOsc wave => dac;
//SawOsc wave => dac;

//Defining a var to save the random values generated for the MIDI notes.
0 => int midiNote;

//Defining an infinite loop
while( true ){
    //Generating random MIDI notes
    Math.random2(60, 71) => midiNote;
    
    //Transforming MIDI note to frequency
    Std.mtof(midiNote) => wave.freq;
    
    Math.random2f(0.2, 0.8) => wave.gain;
    0.25::second => now;
}