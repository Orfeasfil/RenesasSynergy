#include "comms_thread.h"

/* Comms Thread entry function */

uint8_t rx_msg[12];

void comms_thread_entry(void)
{
    /* TODO: add your own code here */
    while (1)
    {
        tx_queue_receive(&g_cdc_queue, rx_msg, TX_WAIT_FOREVER);
        g_sf_comms0.p_api->write(g_sf_comms0.p_ctrl, rx_msg, strlen(rx_msg), TX_WAIT_FOREVER);
    }
}
