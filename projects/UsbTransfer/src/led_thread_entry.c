#include "led_thread.h"
#include "comms_thread.h"

int N = 100;
char send_str[100];

/* LED THREAD entry function */
void led_thread_entry(void)
{
    /* TODO: add your own code here */

    bsp_leds_t Leds;
    R_BSP_LedsGet(&Leds);

    ioport_level_t led_level = IOPORT_LEVEL_HIGH;

    g_external_irq11.p_api->open(g_external_irq11.p_ctrl,
            g_external_irq11.p_cfg);

    while (1)
    {

        g_ioport.p_api->pinWrite(Leds.p_leds[BSP_LED_LED1], led_level);

        if (led_level == IOPORT_LEVEL_HIGH){

            memset(send_str, 0, sizeof(char)*N);
            strcpy(send_str, "LED off\n\r");
            led_level = IOPORT_LEVEL_LOW;

        }

        else{

            memset(send_str, 0, sizeof(char)*N);
            strcpy(send_str, "LED on\n\r");
            led_level = IOPORT_LEVEL_HIGH;

        }

        tx_queue_send(&g_cdc_queue, send_str, TX_WAIT_FOREVER);

        tx_semaphore_get(&g_sw4_semaphore, TX_WAIT_FOREVER);
    }
}
/* Callback function */
void external_irq11_callback(external_irq_callback_args_t *p_args)
{
    /* TODO: add your own code here */

    SSP_PARAMETER_NOT_USED(p_args);
    tx_semaphore_put(&g_sw4_semaphore);


}
