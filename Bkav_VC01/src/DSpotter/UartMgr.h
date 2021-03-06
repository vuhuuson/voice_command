#ifndef __UART_MGR_H
#define __UART_MGR_H_

#include <stdbool.h>
#include <stdint.h>
#include "r_sci_uart.h"

typedef void (*PfnOnDataReadCompleteCallback)(void);

int UartOpen(const uart_instance_t *pUart, int nUartChannel, int nBaudRate);
int UartClose(void);
int UartAsyncRead(uint8_t* const p_dest, const uint32_t bytes, PfnOnDataReadCompleteCallback pfnOnDataReadCompleteCallback);
int UartAsyncWrite(const uint8_t* const p_src, const uint32_t bytes);
int UartSyncRead(uint8_t* const p_dest, const uint32_t bytes);
int UartSyncWrite(const uint8_t* const p_src, const uint32_t bytes);
void UartWaitReadReady(void);
void UartWaitWriteReady(void);
bool UartIsReading(void);
bool UartIsWriting(void);
bool UartIsOpened(void);
int UartGetAvailableReadCount();
int UartAbortAyncRead();
int UartAbortAyncWrite();

int UartTrace(const char *lpszFormat, ...);

#endif
