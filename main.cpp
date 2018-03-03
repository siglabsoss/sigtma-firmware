#include "mbed.h"
 
DigitalOut GRN_LED(PB_1);
DigitalOut YLW_LED(PB_0);

// RF SWITCHES
DigitalOut DIVERSITY(PB_5);
DigitalOut RADIO_RX(PA_15);
DigitalOut ANTENNA_TX(PB_4);


DigitalOut EN_LNA(PB_3);
DigitalOut EN_PS(PA_3);
DigitalOut CHG_VOLTAGE(PA_6);

AnalogIn I_SNS(PA_2);
AnalogIn V_SNS(PA_7);
AnalogIn V_PHANTOM(PA_4);

AnalogOut PA_ADJ(PA_5);


 
int main() {
	PA_ADJ = 1.0;    // sets negative bias to minimum
	RADIO_RX = 0;       // sets TX/RX switches to RX
	ANTENNA_TX = 1;
	DIVERSITY = 1;
	CHG_VOLTAGE = 0; // sets buck converter to 6V
	EN_PS = 1;       // turn on buck converter
	EN_LNA = 0;      // enable LNA

    while(1) {
    	GRN_LED = !GRN_LED;
    	YLW_LED = !GRN_LED;
        wait(0.2); // 200 ms
    }
}

