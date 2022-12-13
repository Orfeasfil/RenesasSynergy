/***********************************************************************************************************************
* File Name    : blinky_thread_entry.c
* Description  : This is a very simple example application that blinks all the LEDs on a board.
***********************************************************************************************************************/

#include "blinky_thread.h"

/*******************************************************************************************************************//**
 * @brief  Blinky example application
 *
 * Blinks all leds at a rate of 1 second using the the threadx sleep function.
 * Only references two other modules including the BSP, IOPORT.
 *
 **********************************************************************************************************************/
void blinky_thread_entry(void)
{
    /* Define the units to be used with the threadx sleep function */
	const uint32_t threadx_tick_rate_Hz = 100;
    /* Set the blink frequency (must be <= threadx_tick_rate_Hz */
    const uint32_t freq_in_hz = 2;
    /* Calculate the delay in terms of the threadx tick rate */
    const uint32_t delay = threadx_tick_rate_Hz/freq_in_hz;
    /* LED type structure */
    bsp_leds_t leds;
    /* LED state variable */
    ioport_level_t level = IOPORT_LEVEL_HIGH;

    /* Get LED information for this board */
    R_BSP_LedsGet(&leds);
    // Initialize UART return variable
    ssp_err_t ReadReturnVal;
    uint8_t Message[] = "0\n\r";
    // Initialize buffer for UART float to string conversion

    float my_y_val;
    // Open UART channel
    ReadReturnVal = g_sf_comms0.p_api->open(g_sf_comms0.p_ctrl, g_sf_comms0.p_cfg);
    /* If this board has no leds then trap here */
    if (0 == leds.led_count)
    {
        while(1);   // There are no leds on this board
    }
    setup();
    while (1)
    {
        /* Determine the next state of the LEDs */
        if(IOPORT_LEVEL_LOW == level)
        {
            level = IOPORT_LEVEL_HIGH;
        }
        else
        {
            level = IOPORT_LEVEL_LOW;
        }

        /* Update all board LEDs */
        for(uint32_t i = 0; i < leds.led_count; i++)
        {
            g_ioport.p_api->pinWrite(leds.p_leds[i], level);
        }

        /* Delay */
        tx_thread_sleep(delay);
        my_y_val = loop();
        // Initialize UART return variable
        // Initialize buffer for UART float to string conversion
        uint8_t float_buf[10];
//        float_buf = (uint8_t*)(&my_y_val);

        gcvt(my_y_val, 3, float_buf);
        // Print to UART
        // (WIP) Fix uart buffer capacity to transmit more than one character
        ReadReturnVal = g_sf_comms0.p_api->write(g_sf_comms0.p_ctrl, float_buf, sizeof(float_buf), 0);
        //ReadReturnVal = g_sf_comms0.p_api->write(g_sf_comms0.p_ctrl, Message, sizeof(Message), 0);
        tx_thread_sleep (delay);
    }
}
