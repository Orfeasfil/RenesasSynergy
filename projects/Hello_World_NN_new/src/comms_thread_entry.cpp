#include "comms_thread.h"
#include "examples/hello_world/main_functions.h"

int N = 10;

/* COMMS THREAD entry function */
void comms_thread_entry(void)
{
    /* TODO: add your own code here */
  uint8_t rx_msg[N];
  setup();
  while (true) {
      loop((char *)rx_msg, N);
      g_sf_comms0.p_api->write(g_sf_comms0.p_ctrl, rx_msg, strlen((char *)rx_msg), TX_WAIT_FOREVER);
      R_BSP_SoftwareDelay(1, BSP_DELAY_UNITS_SECONDS);
  }

}
