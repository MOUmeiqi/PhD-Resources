#include <stdint.h>

/*macros*/
/********************************************************/
//  set pin low
#define output_low(pin) digitalWrite(pin, LOW)

// set pin high
#define output_high(pin) digitalWrite(pin, HIGH)

// return the state of pin
#define input(pin) digitalRead(pin)
/********************************************************/

// mux-pair pins
#define E 51
#define S3 49 //49
#define S2 47 //47
#define S1 45 //45
#define S0 43 //43

// demux-pair pins
#define E2 41
#define S32 39 //49
#define S22 37 //47
#define S12 35 //45
#define S02 33 //43


void setup() {
  Serial.begin(115200);
  establishContact();
  beginMeasure();
}

void loop()
{
  output_high(E);
  output_high(E2);
  int p = 1;
  for(byte counter = 0; counter <= 15; counter++)
  {
    MUX_SWITCH(counter);
    p++;
    for(byte counter2 = 0; counter2 <= 15; counter2++)
    {
      MUX_SWITCH2(counter2);
      boolean next = true;
      while(next)
      {
        char cont = Serial.read();
        if(cont == 'N')
        {
          next = false;
          Serial.print("Q");
        }
      } 
    }
  }
  output_high(E);
  output_high(E2);
  if(p = 16)
  {
    boolean q = true;
    while(q){
       
      if(Serial.available()){
        char z = Serial.read();
        if(z == 'Z'){
          q = false;

        }
      }  
    }
    p = 1; 
  }
}

// Change mux-pair pins
void MUX_SWITCH(byte switched){
  byte counterNEW = switched;
  output_high(E);
  int SwitchPos[] = {S3, S2, S1, S0};
  for(int k = 0; k<4 ; k++){
    output_low(E);
    if(bitRead(counterNEW, k)==1){
      output_high(SwitchPos[k]);
    }
    else{
      output_low(SwitchPos[k]);
    }
  }
}

// Change demux-pair pins
void MUX_SWITCH2(byte switched){
  output_high(E2);
  int SwitchPos2[] = {S32, S22, S12, S02};
  for(int k = 0; k<4 ; k++){
    output_low(E2);
    if(bitRead(switched, k)==1){
      output_high(SwitchPos2[k]);
    }
    else{
      output_low(SwitchPos2[k]);
    }
  }
}

// Communicate with the serial
void establishContact()
{
  while(Serial.available()<= 0)
  {
    Serial.println('A');
    delay(300);
  }
}

// Configure Arduino pins
void beginMeasure()
{
   if(Serial.available())
  {
    int SwitchPos[] = {S3, S2, S1, S0};
    int SwitchPos2[] = {S32, S22, S12, S02};
    boolean h = true;
    while(h)
    {
      char m = Serial.read();
      if(m == 'M')
      {
         pinMode(E,OUTPUT);
         pinMode(E2,OUTPUT);
         for(int i = 0; i<4; i++)
         {
            pinMode(SwitchPos[i], OUTPUT);
            pinMode(SwitchPos2[i], OUTPUT);
         }
         h = false;
         Serial.println(MUXdelay);
      }
    }       
  }      
} 
