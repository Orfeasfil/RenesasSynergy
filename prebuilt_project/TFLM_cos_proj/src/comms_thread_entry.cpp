#include "comms_thread.h"
#include "examples/hello_world/main_functions.h"

//interval to get timer measurements
int TIMER_INTERVAL = 10;
int N = 10;

/* Performs timestamp operations  and formats output*/
void send_duration(char *time_msg,ULONG time_before,ULONG time_after){
    ULONG timestamp = time_after - time_before;
    memset((char *)time_msg, 0, sizeof(char) * N);
    sprintf((char *)time_msg, "%lu\n\r", timestamp);
}
/* COMMS THREAD entry function */
void comms_thread_entry(void)
{
    /* TODO: add your own code here */
  uint8_t rx_msg[N];
  uint8_t time_msg[N];
  setup();
  ssp_err_t comms_ret = g_sf_comms0.p_api->open(g_sf_comms0.p_ctrl, g_sf_comms0.p_cfg);
  int counter = 0;
  ULONG time_before;
  ULONG time_after;
  while (true) {
      // get initial timestamp
      if(counter==0){
          time_before = tx_time_get();
      }
      loop((char *)rx_msg, N);
      // Get duration for every 10 inference cycles
      if(counter == TIMER_INTERVAL){
          time_after = tx_time_get();
          send_duration((char*)time_msg,time_before,time_after);
          g_sf_comms0.p_api->write(g_sf_comms0.p_ctrl, time_msg, strlen((char *)time_msg), TX_WAIT_FOREVER);
          R_BSP_SoftwareDelay(1, BSP_DELAY_UNITS_SECONDS);
          counter = -1;
      }
      g_sf_comms0.p_api->write(g_sf_comms0.p_ctrl, rx_msg, strlen((char *)rx_msg), TX_WAIT_FOREVER);
      R_BSP_SoftwareDelay(1, BSP_DELAY_UNITS_SECONDS);
      counter++;

  }

}
