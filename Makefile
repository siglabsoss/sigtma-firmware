# This file was automagically generated by mbed.org. For more information, 
# see http://mbed.org/handbook/Exporting-to-GCC-ARM-Embedded

###############################################################################
# Boiler-plate

# cross-platform directory manipulation
ifeq ($(shell echo $$OS),$$OS)
    MAKEDIR = if not exist "$(1)" mkdir "$(1)"
    RM = rmdir /S /Q "$(1)"
else
    MAKEDIR = '$(SHELL)' -c "mkdir -p \"$(1)\""
    RM = '$(SHELL)' -c "rm -rf \"$(1)\""
endif

OBJDIR := BUILD
# Move to the build directory
ifeq (,$(filter $(OBJDIR),$(notdir $(CURDIR))))
.SUFFIXES:
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
MAKETARGET = '$(MAKE)' --no-print-directory -C $(OBJDIR) -f '$(mkfile_path)' \
		'SRCDIR=$(CURDIR)' $(MAKECMDGOALS)
.PHONY: $(OBJDIR) clean
all:
	+@$(call MAKEDIR,$(OBJDIR))
	+@$(MAKETARGET)
$(OBJDIR): all
Makefile : ;
% :: $(OBJDIR) ; :
clean :
	$(call RM,$(OBJDIR))

else

# trick rules into thinking we are in the root, when we are in the bulid dir
VPATH = ..

# Boiler-plate
###############################################################################
# Project settings

PROJECT := yes


# Project settings
###############################################################################
# Objects and Paths

OBJECTS += ./main.o
OBJECTS += ./mbed-os/drivers/AnalogIn.o
OBJECTS += ./mbed-os/drivers/BusIn.o
OBJECTS += ./mbed-os/drivers/BusInOut.o
OBJECTS += ./mbed-os/drivers/BusOut.o
OBJECTS += ./mbed-os/drivers/CAN.o
OBJECTS += ./mbed-os/drivers/Ethernet.o
OBJECTS += ./mbed-os/drivers/FlashIAP.o
OBJECTS += ./mbed-os/drivers/I2C.o
OBJECTS += ./mbed-os/drivers/I2CSlave.o
OBJECTS += ./mbed-os/drivers/InterruptIn.o
OBJECTS += ./mbed-os/drivers/InterruptManager.o
OBJECTS += ./mbed-os/drivers/RawSerial.o
OBJECTS += ./mbed-os/drivers/SPI.o
OBJECTS += ./mbed-os/drivers/SPISlave.o
OBJECTS += ./mbed-os/drivers/Serial.o
OBJECTS += ./mbed-os/drivers/SerialBase.o
OBJECTS += ./mbed-os/drivers/Ticker.o
OBJECTS += ./mbed-os/drivers/Timeout.o
OBJECTS += ./mbed-os/drivers/Timer.o
OBJECTS += ./mbed-os/drivers/TimerEvent.o
OBJECTS += ./mbed-os/drivers/UARTSerial.o
OBJECTS += ./mbed-os/events/EventQueue.o
OBJECTS += ./mbed-os/events/equeue/equeue.o
OBJECTS += ./mbed-os/events/equeue/equeue_mbed.o
OBJECTS += ./mbed-os/events/equeue/equeue_posix.o
OBJECTS += ./mbed-os/events/mbed_shared_queues.o
OBJECTS += ./mbed-os/features/filesystem/Dir.o
OBJECTS += ./mbed-os/features/filesystem/File.o
OBJECTS += ./mbed-os/features/filesystem/FileSystem.o
OBJECTS += ./mbed-os/features/filesystem/bd/ChainingBlockDevice.o
OBJECTS += ./mbed-os/features/filesystem/bd/ExhaustibleBlockDevice.o
OBJECTS += ./mbed-os/features/filesystem/bd/HeapBlockDevice.o
OBJECTS += ./mbed-os/features/filesystem/bd/MBRBlockDevice.o
OBJECTS += ./mbed-os/features/filesystem/bd/ObservingBlockDevice.o
OBJECTS += ./mbed-os/features/filesystem/bd/ProfilingBlockDevice.o
OBJECTS += ./mbed-os/features/filesystem/bd/ReadOnlyBlockDevice.o
OBJECTS += ./mbed-os/features/filesystem/bd/SlicingBlockDevice.o
OBJECTS += ./mbed-os/features/filesystem/fat/ChaN/ff.o
OBJECTS += ./mbed-os/features/filesystem/fat/ChaN/ffunicode.o
OBJECTS += ./mbed-os/features/filesystem/fat/FATFileSystem.o
OBJECTS += ./mbed-os/features/filesystem/littlefs/LittleFileSystem.o
OBJECTS += ./mbed-os/features/filesystem/littlefs/littlefs/lfs.o
OBJECTS += ./mbed-os/features/filesystem/littlefs/littlefs/lfs_util.o
OBJECTS += ./mbed-os/features/frameworks/greentea-client/source/greentea_metrics.o
OBJECTS += ./mbed-os/features/frameworks/greentea-client/source/greentea_serial.o
OBJECTS += ./mbed-os/features/frameworks/greentea-client/source/greentea_test_env.o
OBJECTS += ./mbed-os/features/frameworks/unity/source/unity.o
OBJECTS += ./mbed-os/features/frameworks/utest/mbed-utest-shim.o
OBJECTS += ./mbed-os/features/frameworks/utest/source/unity_handler.o
OBJECTS += ./mbed-os/features/frameworks/utest/source/utest_case.o
OBJECTS += ./mbed-os/features/frameworks/utest/source/utest_default_handlers.o
OBJECTS += ./mbed-os/features/frameworks/utest/source/utest_greentea_handlers.o
OBJECTS += ./mbed-os/features/frameworks/utest/source/utest_harness.o
OBJECTS += ./mbed-os/features/frameworks/utest/source/utest_shim.o
OBJECTS += ./mbed-os/features/frameworks/utest/source/utest_stack_trace.o
OBJECTS += ./mbed-os/features/frameworks/utest/source/utest_types.o
OBJECTS += ./mbed-os/features/mbedtls/platform/src/mbed_trng.o
OBJECTS += ./mbed-os/features/mbedtls/src/aes.o
OBJECTS += ./mbed-os/features/mbedtls/src/aesni.o
OBJECTS += ./mbed-os/features/mbedtls/src/arc4.o
OBJECTS += ./mbed-os/features/mbedtls/src/asn1parse.o
OBJECTS += ./mbed-os/features/mbedtls/src/asn1write.o
OBJECTS += ./mbed-os/features/mbedtls/src/base64.o
OBJECTS += ./mbed-os/features/mbedtls/src/bignum.o
OBJECTS += ./mbed-os/features/mbedtls/src/blowfish.o
OBJECTS += ./mbed-os/features/mbedtls/src/camellia.o
OBJECTS += ./mbed-os/features/mbedtls/src/ccm.o
OBJECTS += ./mbed-os/features/mbedtls/src/certs.o
OBJECTS += ./mbed-os/features/mbedtls/src/cipher.o
OBJECTS += ./mbed-os/features/mbedtls/src/cipher_wrap.o
OBJECTS += ./mbed-os/features/mbedtls/src/cmac.o
OBJECTS += ./mbed-os/features/mbedtls/src/ctr_drbg.o
OBJECTS += ./mbed-os/features/mbedtls/src/debug.o
OBJECTS += ./mbed-os/features/mbedtls/src/des.o
OBJECTS += ./mbed-os/features/mbedtls/src/dhm.o
OBJECTS += ./mbed-os/features/mbedtls/src/ecdh.o
OBJECTS += ./mbed-os/features/mbedtls/src/ecdsa.o
OBJECTS += ./mbed-os/features/mbedtls/src/ecjpake.o
OBJECTS += ./mbed-os/features/mbedtls/src/ecp.o
OBJECTS += ./mbed-os/features/mbedtls/src/ecp_curves.o
OBJECTS += ./mbed-os/features/mbedtls/src/entropy.o
OBJECTS += ./mbed-os/features/mbedtls/src/entropy_poll.o
OBJECTS += ./mbed-os/features/mbedtls/src/error.o
OBJECTS += ./mbed-os/features/mbedtls/src/gcm.o
OBJECTS += ./mbed-os/features/mbedtls/src/havege.o
OBJECTS += ./mbed-os/features/mbedtls/src/hmac_drbg.o
OBJECTS += ./mbed-os/features/mbedtls/src/md.o
OBJECTS += ./mbed-os/features/mbedtls/src/md2.o
OBJECTS += ./mbed-os/features/mbedtls/src/md4.o
OBJECTS += ./mbed-os/features/mbedtls/src/md5.o
OBJECTS += ./mbed-os/features/mbedtls/src/md_wrap.o
OBJECTS += ./mbed-os/features/mbedtls/src/memory_buffer_alloc.o
OBJECTS += ./mbed-os/features/mbedtls/src/net_sockets.o
OBJECTS += ./mbed-os/features/mbedtls/src/oid.o
OBJECTS += ./mbed-os/features/mbedtls/src/padlock.o
OBJECTS += ./mbed-os/features/mbedtls/src/pem.o
OBJECTS += ./mbed-os/features/mbedtls/src/pk.o
OBJECTS += ./mbed-os/features/mbedtls/src/pk_wrap.o
OBJECTS += ./mbed-os/features/mbedtls/src/pkcs11.o
OBJECTS += ./mbed-os/features/mbedtls/src/pkcs12.o
OBJECTS += ./mbed-os/features/mbedtls/src/pkcs5.o
OBJECTS += ./mbed-os/features/mbedtls/src/pkparse.o
OBJECTS += ./mbed-os/features/mbedtls/src/pkwrite.o
OBJECTS += ./mbed-os/features/mbedtls/src/platform.o
OBJECTS += ./mbed-os/features/mbedtls/src/ripemd160.o
OBJECTS += ./mbed-os/features/mbedtls/src/rsa.o
OBJECTS += ./mbed-os/features/mbedtls/src/sha1.o
OBJECTS += ./mbed-os/features/mbedtls/src/sha256.o
OBJECTS += ./mbed-os/features/mbedtls/src/sha512.o
OBJECTS += ./mbed-os/features/mbedtls/src/ssl_cache.o
OBJECTS += ./mbed-os/features/mbedtls/src/ssl_ciphersuites.o
OBJECTS += ./mbed-os/features/mbedtls/src/ssl_cli.o
OBJECTS += ./mbed-os/features/mbedtls/src/ssl_cookie.o
OBJECTS += ./mbed-os/features/mbedtls/src/ssl_srv.o
OBJECTS += ./mbed-os/features/mbedtls/src/ssl_ticket.o
OBJECTS += ./mbed-os/features/mbedtls/src/ssl_tls.o
OBJECTS += ./mbed-os/features/mbedtls/src/threading.o
OBJECTS += ./mbed-os/features/mbedtls/src/timing.o
OBJECTS += ./mbed-os/features/mbedtls/src/version.o
OBJECTS += ./mbed-os/features/mbedtls/src/version_features.o
OBJECTS += ./mbed-os/features/mbedtls/src/x509.o
OBJECTS += ./mbed-os/features/mbedtls/src/x509_create.o
OBJECTS += ./mbed-os/features/mbedtls/src/x509_crl.o
OBJECTS += ./mbed-os/features/mbedtls/src/x509_crt.o
OBJECTS += ./mbed-os/features/mbedtls/src/x509_csr.o
OBJECTS += ./mbed-os/features/mbedtls/src/x509write_crt.o
OBJECTS += ./mbed-os/features/mbedtls/src/x509write_csr.o
OBJECTS += ./mbed-os/features/mbedtls/src/xtea.o
OBJECTS += ./mbed-os/features/mbedtls/targets/TARGET_STM/aes_alt.o
OBJECTS += ./mbed-os/features/mbedtls/targets/TARGET_STM/md5_alt.o
OBJECTS += ./mbed-os/features/mbedtls/targets/TARGET_STM/sha1_alt.o
OBJECTS += ./mbed-os/features/mbedtls/targets/TARGET_STM/sha256_alt.o
OBJECTS += ./mbed-os/features/netsocket/NetworkInterface.o
OBJECTS += ./mbed-os/features/netsocket/NetworkStack.o
OBJECTS += ./mbed-os/features/netsocket/Socket.o
OBJECTS += ./mbed-os/features/netsocket/SocketAddress.o
OBJECTS += ./mbed-os/features/netsocket/TCPServer.o
OBJECTS += ./mbed-os/features/netsocket/TCPSocket.o
OBJECTS += ./mbed-os/features/netsocket/UDPSocket.o
OBJECTS += ./mbed-os/features/netsocket/WiFiAccessPoint.o
OBJECTS += ./mbed-os/features/netsocket/cellular/generic_modem_driver/OnboardCellularInterface.o
OBJECTS += ./mbed-os/features/netsocket/cellular/generic_modem_driver/PPPCellularInterface.o
OBJECTS += ./mbed-os/features/netsocket/cellular/generic_modem_driver/UARTCellularInterface.o
OBJECTS += ./mbed-os/features/netsocket/nsapi_dns.o
OBJECTS += ./mbed-os/hal/mbed_flash_api.o
OBJECTS += ./mbed-os/hal/mbed_gpio.o
OBJECTS += ./mbed-os/hal/mbed_lp_ticker_api.o
OBJECTS += ./mbed-os/hal/mbed_pinmap_common.o
OBJECTS += ./mbed-os/hal/mbed_sleep_manager.o
OBJECTS += ./mbed-os/hal/mbed_ticker_api.o
OBJECTS += ./mbed-os/hal/mbed_us_ticker_api.o
OBJECTS += ./mbed-os/platform/ATCmdParser.o
OBJECTS += ./mbed-os/platform/CallChain.o
OBJECTS += ./mbed-os/platform/FileBase.o
OBJECTS += ./mbed-os/platform/FileHandle.o
OBJECTS += ./mbed-os/platform/FilePath.o
OBJECTS += ./mbed-os/platform/FileSystemHandle.o
OBJECTS += ./mbed-os/platform/LocalFileSystem.o
OBJECTS += ./mbed-os/platform/Stream.o
OBJECTS += ./mbed-os/platform/mbed_alloc_wrappers.o
OBJECTS += ./mbed-os/platform/mbed_application.o
OBJECTS += ./mbed-os/platform/mbed_assert.o
OBJECTS += ./mbed-os/platform/mbed_board.o
OBJECTS += ./mbed-os/platform/mbed_critical.o
OBJECTS += ./mbed-os/platform/mbed_error.o
OBJECTS += ./mbed-os/platform/mbed_interface.o
OBJECTS += ./mbed-os/platform/mbed_mem_trace.o
OBJECTS += ./mbed-os/platform/mbed_mktime.o
OBJECTS += ./mbed-os/platform/mbed_poll.o
OBJECTS += ./mbed-os/platform/mbed_retarget.o
OBJECTS += ./mbed-os/platform/mbed_rtc_time.o
OBJECTS += ./mbed-os/platform/mbed_sdk_boot.o
OBJECTS += ./mbed-os/platform/mbed_semihost_api.o
OBJECTS += ./mbed-os/platform/mbed_stats.o
OBJECTS += ./mbed-os/platform/mbed_wait_api_no_rtos.o
OBJECTS += ./mbed-os/platform/mbed_wait_api_rtos.o
OBJECTS += ./mbed-os/rtos/ConditionVariable.o
OBJECTS += ./mbed-os/rtos/EventFlags.o
OBJECTS += ./mbed-os/rtos/Kernel.o
OBJECTS += ./mbed-os/rtos/Mutex.o
OBJECTS += ./mbed-os/rtos/RtosTimer.o
OBJECTS += ./mbed-os/rtos/Semaphore.o
OBJECTS += ./mbed-os/rtos/TARGET_CORTEX/mbed_boot.o
OBJECTS += ./mbed-os/rtos/TARGET_CORTEX/mbed_rtx_handlers.o
OBJECTS += ./mbed-os/rtos/TARGET_CORTEX/mbed_rtx_idle.o
OBJECTS += ./mbed-os/rtos/TARGET_CORTEX/rtx4/cmsis_os1.o
OBJECTS += ./mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Config/RTX_Config.o
OBJECTS += ./mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Source/TOOLCHAIN_GCC/TARGET_RTOS_M4_M7/irq_cm4f.o
OBJECTS += ./mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Source/rt_OsEventObserver.o
OBJECTS += ./mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Source/rtx_delay.o
OBJECTS += ./mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Source/rtx_evflags.o
OBJECTS += ./mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Source/rtx_evr.o
OBJECTS += ./mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Source/rtx_kernel.o
OBJECTS += ./mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Source/rtx_lib.o
OBJECTS += ./mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Source/rtx_memory.o
OBJECTS += ./mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Source/rtx_mempool.o
OBJECTS += ./mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Source/rtx_msgqueue.o
OBJECTS += ./mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Source/rtx_mutex.o
OBJECTS += ./mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Source/rtx_semaphore.o
OBJECTS += ./mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Source/rtx_system.o
OBJECTS += ./mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Source/rtx_thread.o
OBJECTS += ./mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Source/rtx_timer.o
OBJECTS += ./mbed-os/rtos/TARGET_CORTEX/rtx5/Source/os_systick.o
OBJECTS += ./mbed-os/rtos/TARGET_CORTEX/rtx5/Source/os_tick_ptim.o
OBJECTS += ./mbed-os/rtos/Thread.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/TARGET_STM32F303x8/TARGET_NUCLEO_F303K8/PeripheralPins.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/TARGET_STM32F303x8/TARGET_NUCLEO_F303K8/system_clock.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/TARGET_STM32F303x8/device/TOOLCHAIN_GCC_ARM/startup_stm32f303x8.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/analogin_device.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/analogout_device.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_adc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_adc_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_can.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_cec.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_comp.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_cortex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_crc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_crc_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_dac.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_dac_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_dma.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_flash.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_flash_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_gpio.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_hrtim.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_i2c.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_i2c_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_i2s.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_i2s_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_irda.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_iwdg.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_nand.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_nor.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_opamp.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_opamp_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_pccard.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_pcd.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_pcd_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_pwr.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_pwr_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_rcc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_rcc_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_rtc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_rtc_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_sdadc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_smartcard.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_smartcard_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_smbus.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_spi.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_spi_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_sram.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_tim.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_tim_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_tsc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_uart.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_uart_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_usart.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_hal_wwdg.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_ll_adc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_ll_comp.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_ll_crc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_ll_dac.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_ll_dma.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_ll_exti.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_ll_fmc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_ll_gpio.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_ll_hrtim.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_ll_i2c.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_ll_opamp.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_ll_pwr.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_ll_rcc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_ll_rtc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_ll_spi.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_ll_tim.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_ll_usart.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/stm32f3xx_ll_utils.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device/system_stm32f3xx.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/flash_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/gpio_irq_device.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/pwmout_device.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/serial_device.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32F3/spi_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/analogin_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/analogout_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/can_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/gpio_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/gpio_irq_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/hal_tick_16b.o
OBJECTS += ./mbed-os/targets/TARGET_STM/hal_tick_32b.o
OBJECTS += ./mbed-os/targets/TARGET_STM/i2c_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/lp_ticker.o
OBJECTS += ./mbed-os/targets/TARGET_STM/mbed_overrides.o
OBJECTS += ./mbed-os/targets/TARGET_STM/pinmap.o
OBJECTS += ./mbed-os/targets/TARGET_STM/port_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/pwmout_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/rtc_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/serial_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/sleep.o
OBJECTS += ./mbed-os/targets/TARGET_STM/stm_spi_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/trng_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/us_ticker_16b.o
OBJECTS += ./mbed-os/targets/TARGET_STM/us_ticker_32b.o


INCLUDE_PATHS += -I../
INCLUDE_PATHS += -I../.
INCLUDE_PATHS += -I.././mbed-os
INCLUDE_PATHS += -I.././mbed-os/cmsis
INCLUDE_PATHS += -I.././mbed-os/cmsis/TARGET_CORTEX_M
INCLUDE_PATHS += -I.././mbed-os/drivers
INCLUDE_PATHS += -I.././mbed-os/events
INCLUDE_PATHS += -I.././mbed-os/events/equeue
INCLUDE_PATHS += -I.././mbed-os/features
INCLUDE_PATHS += -I.././mbed-os/features/filesystem
INCLUDE_PATHS += -I.././mbed-os/features/filesystem/bd
INCLUDE_PATHS += -I.././mbed-os/features/filesystem/fat
INCLUDE_PATHS += -I.././mbed-os/features/filesystem/fat/ChaN
INCLUDE_PATHS += -I.././mbed-os/features/filesystem/littlefs
INCLUDE_PATHS += -I.././mbed-os/features/filesystem/littlefs/littlefs
INCLUDE_PATHS += -I.././mbed-os/features/frameworks
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/greentea-client
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/greentea-client/greentea-client
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/greentea-client/source
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/unity
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/unity/source
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/unity/unity
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/utest
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/utest/source
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/utest/utest
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/importer
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/inc
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/inc/mbedtls
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/platform
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/platform/inc
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/platform/src
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/src
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/targets
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/targets/TARGET_STM
INCLUDE_PATHS += -I.././mbed-os/features/nanostack
INCLUDE_PATHS += -I.././mbed-os/features/netsocket
INCLUDE_PATHS += -I.././mbed-os/features/netsocket/cellular
INCLUDE_PATHS += -I.././mbed-os/features/netsocket/cellular/generic_modem_driver
INCLUDE_PATHS += -I.././mbed-os/features/netsocket/cellular/utils
INCLUDE_PATHS += -I.././mbed-os/features/storage
INCLUDE_PATHS += -I.././mbed-os/hal
INCLUDE_PATHS += -I.././mbed-os/hal/storage_abstraction
INCLUDE_PATHS += -I.././mbed-os/platform
INCLUDE_PATHS += -I.././mbed-os/rtos
INCLUDE_PATHS += -I.././mbed-os/rtos/TARGET_CORTEX
INCLUDE_PATHS += -I.././mbed-os/rtos/TARGET_CORTEX/rtx4
INCLUDE_PATHS += -I.././mbed-os/rtos/TARGET_CORTEX/rtx5
INCLUDE_PATHS += -I.././mbed-os/rtos/TARGET_CORTEX/rtx5/Include
INCLUDE_PATHS += -I.././mbed-os/rtos/TARGET_CORTEX/rtx5/RTX
INCLUDE_PATHS += -I.././mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Config
INCLUDE_PATHS += -I.././mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Include
INCLUDE_PATHS += -I.././mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Source
INCLUDE_PATHS += -I.././mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Source/TOOLCHAIN_GCC
INCLUDE_PATHS += -I.././mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Source/TOOLCHAIN_GCC/TARGET_RTOS_M4_M7
INCLUDE_PATHS += -I.././mbed-os/rtos/TARGET_CORTEX/rtx5/Source
INCLUDE_PATHS += -I.././mbed-os/targets
INCLUDE_PATHS += -I.././mbed-os/targets/TARGET_STM
INCLUDE_PATHS += -I.././mbed-os/targets/TARGET_STM/TARGET_STM32F3
INCLUDE_PATHS += -I.././mbed-os/targets/TARGET_STM/TARGET_STM32F3/TARGET_STM32F303x8
INCLUDE_PATHS += -I.././mbed-os/targets/TARGET_STM/TARGET_STM32F3/TARGET_STM32F303x8/TARGET_NUCLEO_F303K8
INCLUDE_PATHS += -I.././mbed-os/targets/TARGET_STM/TARGET_STM32F3/TARGET_STM32F303x8/device
INCLUDE_PATHS += -I.././mbed-os/targets/TARGET_STM/TARGET_STM32F3/TARGET_STM32F303x8/device/TOOLCHAIN_GCC_ARM
INCLUDE_PATHS += -I.././mbed-os/targets/TARGET_STM/TARGET_STM32F3/device

LIBRARY_PATHS :=
LIBRARIES :=
LINKER_SCRIPT ?= .././mbed-os/targets/TARGET_STM/TARGET_STM32F3/TARGET_STM32F303x8/device/TOOLCHAIN_GCC_ARM/STM32F303X8.ld

# Objects and Paths
###############################################################################
# Tools and Flags

AS      = 'arm-none-eabi-gcc' '-x' 'assembler-with-cpp' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-O0' '-g3' '-DMBED_DEBUG' '-DMBED_TRAP_ERRORS_ENABLED=1' '-DMBED_RTOS_SINGLE_THREAD' '-mcpu=cortex-m4' '-mthumb' '-mfpu=fpv4-sp-d16' '-mfloat-abi=hard'
CC      = 'arm-none-eabi-gcc' '-std=gnu99' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-O0' '-g3' '-DMBED_DEBUG' '-DMBED_TRAP_ERRORS_ENABLED=1' '-DMBED_RTOS_SINGLE_THREAD' '-mcpu=cortex-m4' '-mthumb' '-mfpu=fpv4-sp-d16' '-mfloat-abi=hard'
CPP     = 'arm-none-eabi-g++' '-std=gnu++98' '-fno-rtti' '-Wvla' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-O0' '-g3' '-DMBED_DEBUG' '-DMBED_TRAP_ERRORS_ENABLED=1' '-DMBED_RTOS_SINGLE_THREAD' '-mcpu=cortex-m4' '-mthumb' '-mfpu=fpv4-sp-d16' '-mfloat-abi=hard'
LD      = 'arm-none-eabi-gcc'
ELF2BIN = 'arm-none-eabi-objcopy'
PREPROC = 'arm-none-eabi-cpp' '-E' '-P' '-Wl,--gc-sections' '-Wl,--wrap,main' '-Wl,--wrap,_malloc_r' '-Wl,--wrap,_free_r' '-Wl,--wrap,_realloc_r' '-Wl,--wrap,_memalign_r' '-Wl,--wrap,_calloc_r' '-Wl,--wrap,exit' '-Wl,--wrap,atexit' '-Wl,-n' '--specs=nano.specs' '-mcpu=cortex-m4' '-mthumb' '-mfpu=fpv4-sp-d16' '-mfloat-abi=hard'


C_FLAGS += -std=gnu99
C_FLAGS += -D__MBED__=1
C_FLAGS += -DDEVICE_I2CSLAVE=1
C_FLAGS += -D__FPU_PRESENT=1
C_FLAGS += -DDEVICE_PORTOUT=1
C_FLAGS += -DDEVICE_PORTINOUT=1
C_FLAGS += -DTARGET_RTOS_M4_M7
C_FLAGS += -DDEVICE_LOWPOWERTIMER=1
C_FLAGS += -DDEVICE_RTC=1
C_FLAGS += -DTARGET_STM32F303K8
C_FLAGS += -DTARGET_NUCLEO_F303K8
C_FLAGS += -D__CMSIS_RTOS
C_FLAGS += -DMBED_BUILD_TIMESTAMP=1520058088.91
C_FLAGS += -DTOOLCHAIN_GCC
C_FLAGS += -DDEVICE_STDIO_MESSAGES=1
C_FLAGS += -DDEVICE_CAN=1
C_FLAGS += -DTARGET_CORTEX_M
C_FLAGS += -DTARGET_DEBUG
C_FLAGS += -DDEVICE_I2C_ASYNCH=1
C_FLAGS += -DTARGET_LIKE_CORTEX_M4
C_FLAGS += -DDEVICE_ANALOGOUT=1
C_FLAGS += -DTARGET_M4
C_FLAGS += -DTARGET_UVISOR_UNSUPPORTED
C_FLAGS += -DTARGET_STM32F303x8
C_FLAGS += -DDEVICE_SERIAL=1
C_FLAGS += -DDEVICE_SPI_ASYNCH=1
C_FLAGS += -DDEVICE_INTERRUPTIN=1
C_FLAGS += -DTARGET_CORTEX
C_FLAGS += -DDEVICE_I2C=1
C_FLAGS += -DTRANSACTION_QUEUE_SIZE_SPI=2
C_FLAGS += -D__CORTEX_M4
C_FLAGS += -D__MBED_CMSIS_RTOS_CM
C_FLAGS += -DTARGET_FAMILY_STM32
C_FLAGS += -DTARGET_FF_ARDUINO
C_FLAGS += -DDEVICE_PORTIN=1
C_FLAGS += -DTARGET_STM
C_FLAGS += -DDEVICE_SERIAL_FC=1
C_FLAGS += -DTARGET_LIKE_MBED
C_FLAGS += -DTARGET_STM32F3
C_FLAGS += -DDEVICE_SLEEP=1
C_FLAGS += -DTOOLCHAIN_GCC_ARM
C_FLAGS += -DDEVICE_SPI=1
C_FLAGS += -DDEVICE_SPISLAVE=1
C_FLAGS += -DDEVICE_ANALOGIN=1
C_FLAGS += -DDEVICE_PWMOUT=1
C_FLAGS += -DARM_MATH_CM4
C_FLAGS += -DTOOLCHAIN_object
C_FLAGS += -include
C_FLAGS += mbed_config.h

CXX_FLAGS += -std=gnu++98
CXX_FLAGS += -fno-rtti
CXX_FLAGS += -Wvla
CXX_FLAGS += -D__MBED__=1
CXX_FLAGS += -DDEVICE_I2CSLAVE=1
CXX_FLAGS += -D__FPU_PRESENT=1
CXX_FLAGS += -DDEVICE_PORTOUT=1
CXX_FLAGS += -DDEVICE_PORTINOUT=1
CXX_FLAGS += -DTARGET_RTOS_M4_M7
CXX_FLAGS += -DDEVICE_LOWPOWERTIMER=1
CXX_FLAGS += -DDEVICE_RTC=1
CXX_FLAGS += -DTARGET_STM32F303K8
CXX_FLAGS += -DTARGET_NUCLEO_F303K8
CXX_FLAGS += -D__CMSIS_RTOS
CXX_FLAGS += -DMBED_BUILD_TIMESTAMP=1520058088.91
CXX_FLAGS += -DTOOLCHAIN_GCC
CXX_FLAGS += -DDEVICE_STDIO_MESSAGES=1
CXX_FLAGS += -DDEVICE_CAN=1
CXX_FLAGS += -DTARGET_CORTEX_M
CXX_FLAGS += -DTARGET_DEBUG
CXX_FLAGS += -DDEVICE_I2C_ASYNCH=1
CXX_FLAGS += -DTARGET_LIKE_CORTEX_M4
CXX_FLAGS += -DDEVICE_ANALOGOUT=1
CXX_FLAGS += -DTARGET_M4
CXX_FLAGS += -DTARGET_UVISOR_UNSUPPORTED
CXX_FLAGS += -DTARGET_STM32F303x8
CXX_FLAGS += -DDEVICE_SERIAL=1
CXX_FLAGS += -DDEVICE_SPI_ASYNCH=1
CXX_FLAGS += -DDEVICE_INTERRUPTIN=1
CXX_FLAGS += -DTARGET_CORTEX
CXX_FLAGS += -DDEVICE_I2C=1
CXX_FLAGS += -DTRANSACTION_QUEUE_SIZE_SPI=2
CXX_FLAGS += -D__CORTEX_M4
CXX_FLAGS += -D__MBED_CMSIS_RTOS_CM
CXX_FLAGS += -DTARGET_FAMILY_STM32
CXX_FLAGS += -DTARGET_FF_ARDUINO
CXX_FLAGS += -DDEVICE_PORTIN=1
CXX_FLAGS += -DTARGET_STM
CXX_FLAGS += -DDEVICE_SERIAL_FC=1
CXX_FLAGS += -DTARGET_LIKE_MBED
CXX_FLAGS += -DTARGET_STM32F3
CXX_FLAGS += -DDEVICE_SLEEP=1
CXX_FLAGS += -DTOOLCHAIN_GCC_ARM
CXX_FLAGS += -DDEVICE_SPI=1
CXX_FLAGS += -DDEVICE_SPISLAVE=1
CXX_FLAGS += -DDEVICE_ANALOGIN=1
CXX_FLAGS += -DDEVICE_PWMOUT=1
CXX_FLAGS += -DARM_MATH_CM4
CXX_FLAGS += -DTOOLCHAIN_object
CXX_FLAGS += -include
CXX_FLAGS += mbed_config.h

ASM_FLAGS += -x
ASM_FLAGS += assembler-with-cpp
ASM_FLAGS += -DTRANSACTION_QUEUE_SIZE_SPI=2
ASM_FLAGS += -D__CORTEX_M4
ASM_FLAGS += -DARM_MATH_CM4
ASM_FLAGS += -D__FPU_PRESENT=1
ASM_FLAGS += -D__MBED_CMSIS_RTOS_CM
ASM_FLAGS += -D__CMSIS_RTOS
ASM_FLAGS += -I.
ASM_FLAGS += -I./mbed-os
ASM_FLAGS += -I./mbed-os/hal
ASM_FLAGS += -I./mbed-os/hal/storage_abstraction
ASM_FLAGS += -I./mbed-os/platform
ASM_FLAGS += -I./mbed-os/targets
ASM_FLAGS += -I./mbed-os/targets/TARGET_STM
ASM_FLAGS += -I./mbed-os/targets/TARGET_STM/TARGET_STM32F3
ASM_FLAGS += -I./mbed-os/targets/TARGET_STM/TARGET_STM32F3/TARGET_STM32F303x8
ASM_FLAGS += -I./mbed-os/targets/TARGET_STM/TARGET_STM32F3/TARGET_STM32F303x8/device
ASM_FLAGS += -I./mbed-os/targets/TARGET_STM/TARGET_STM32F3/TARGET_STM32F303x8/device/TOOLCHAIN_GCC_ARM
ASM_FLAGS += -I./mbed-os/targets/TARGET_STM/TARGET_STM32F3/TARGET_STM32F303x8/TARGET_NUCLEO_F303K8
ASM_FLAGS += -I./mbed-os/targets/TARGET_STM/TARGET_STM32F3/device
ASM_FLAGS += -I./mbed-os/rtos
ASM_FLAGS += -I./mbed-os/rtos/TARGET_CORTEX
ASM_FLAGS += -I./mbed-os/rtos/TARGET_CORTEX/rtx5
ASM_FLAGS += -I./mbed-os/rtos/TARGET_CORTEX/rtx5/RTX
ASM_FLAGS += -I./mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Source
ASM_FLAGS += -I./mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Source/TOOLCHAIN_GCC
ASM_FLAGS += -I./mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Source/TOOLCHAIN_GCC/TARGET_RTOS_M4_M7
ASM_FLAGS += -I./mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Config
ASM_FLAGS += -I./mbed-os/rtos/TARGET_CORTEX/rtx5/RTX/Include
ASM_FLAGS += -I./mbed-os/rtos/TARGET_CORTEX/rtx5/Source
ASM_FLAGS += -I./mbed-os/rtos/TARGET_CORTEX/rtx5/Include
ASM_FLAGS += -I./mbed-os/rtos/TARGET_CORTEX/rtx4
ASM_FLAGS += -I./mbed-os/features
ASM_FLAGS += -I./mbed-os/features/nanostack
ASM_FLAGS += -I./mbed-os/features/netsocket
ASM_FLAGS += -I./mbed-os/features/netsocket/cellular
ASM_FLAGS += -I./mbed-os/features/netsocket/cellular/generic_modem_driver
ASM_FLAGS += -I./mbed-os/features/netsocket/cellular/utils
ASM_FLAGS += -I./mbed-os/features/frameworks
ASM_FLAGS += -I./mbed-os/features/frameworks/unity
ASM_FLAGS += -I./mbed-os/features/frameworks/unity/unity
ASM_FLAGS += -I./mbed-os/features/frameworks/unity/source
ASM_FLAGS += -I./mbed-os/features/frameworks/greentea-client
ASM_FLAGS += -I./mbed-os/features/frameworks/greentea-client/greentea-client
ASM_FLAGS += -I./mbed-os/features/frameworks/greentea-client/source
ASM_FLAGS += -I./mbed-os/features/frameworks/utest
ASM_FLAGS += -I./mbed-os/features/frameworks/utest/utest
ASM_FLAGS += -I./mbed-os/features/frameworks/utest/source
ASM_FLAGS += -I./mbed-os/features/mbedtls
ASM_FLAGS += -I./mbed-os/features/mbedtls/inc
ASM_FLAGS += -I./mbed-os/features/mbedtls/inc/mbedtls
ASM_FLAGS += -I./mbed-os/features/mbedtls/importer
ASM_FLAGS += -I./mbed-os/features/mbedtls/platform
ASM_FLAGS += -I./mbed-os/features/mbedtls/platform/inc
ASM_FLAGS += -I./mbed-os/features/mbedtls/platform/src
ASM_FLAGS += -I./mbed-os/features/mbedtls/targets
ASM_FLAGS += -I./mbed-os/features/mbedtls/targets/TARGET_STM
ASM_FLAGS += -I./mbed-os/features/mbedtls/src
ASM_FLAGS += -I./mbed-os/features/storage
ASM_FLAGS += -I./mbed-os/features/filesystem
ASM_FLAGS += -I./mbed-os/features/filesystem/littlefs
ASM_FLAGS += -I./mbed-os/features/filesystem/littlefs/littlefs
ASM_FLAGS += -I./mbed-os/features/filesystem/bd
ASM_FLAGS += -I./mbed-os/features/filesystem/fat
ASM_FLAGS += -I./mbed-os/features/filesystem/fat/ChaN
ASM_FLAGS += -I./mbed-os/drivers
ASM_FLAGS += -I./mbed-os/cmsis
ASM_FLAGS += -I./mbed-os/cmsis/TARGET_CORTEX_M
ASM_FLAGS += -I./mbed-os/events
ASM_FLAGS += -I./mbed-os/events/equeue


LD_FLAGS :=-Wl,--warn-once -Wl,-Map,$(PROJECT).map -Wl,--print-memory-usage -Wl,--gc-sections -Wl,--wrap,main -Wl,--wrap,_malloc_r -Wl,--wrap,_free_r -Wl,--wrap,_realloc_r -Wl,--wrap,_memalign_r -Wl,--wrap,_calloc_r -Wl,--wrap,exit -Wl,--wrap,atexit -Wl,-n --specs=nano.specs -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard 
LD_SYS_LIBS :=-Wl,--start-group -lstdc++ -lsupc++ -lm -lc -lgcc -lnosys  -Wl,--end-group

# Tools and Flags
###############################################################################
# Rules

.PHONY: all lst size


all: $(PROJECT).bin $(PROJECT).hex size


.s.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"
  
	@$(AS) -c $(ASM_FLAGS) -o $@ $<
  


.S.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"
  
	@$(AS) -c $(ASM_FLAGS) -o $@ $<
  

.c.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Compile: $(notdir $<)"
	@$(CC) $(C_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.cpp.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Compile: $(notdir $<)"
	@$(CPP) $(CXX_FLAGS) $(INCLUDE_PATHS) -o $@ $<


$(PROJECT).link_script.ld: $(LINKER_SCRIPT)
	@$(PREPROC) $< -o $@



$(PROJECT).elf: $(OBJECTS) $(SYS_OBJECTS) $(PROJECT).link_script.ld 
	+@echo "link: $(notdir $@)"
	@$(LD) $(LD_FLAGS) -T $(filter-out %.o, $^) $(LIBRARY_PATHS) --output $@ $(filter %.o, $^) $(LIBRARIES) $(LD_SYS_LIBS)


$(PROJECT).bin: $(PROJECT).elf
	$(ELF2BIN) -O binary $< $@
	+@echo "===== bin file ready to flash: $(OBJDIR)/$@ =====" 

$(PROJECT).hex: $(PROJECT).elf
	$(ELF2BIN) -O ihex $< $@


# Rules
###############################################################################
# Dependencies

DEPS = $(OBJECTS:.o=.d) $(SYS_OBJECTS:.o=.d)
-include $(DEPS)
endif

# Dependencies
###############################################################################
