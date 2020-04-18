/*
 * Automatically generated file. DO NOT EDIT.
 * Espressif IoT Development Framework (ESP-IDF) Configuration Header
 */
#pragma once
#define CONFIG_IDF_TARGET_ESP32 1
#define CONFIG_IDF_TARGET "esp32"
#define CONFIG_IDF_FIRMWARE_CHIP_ID 0x0000
#define CONFIG_SDK_TOOLPREFIX "xtensa-esp32-elf-"
#define CONFIG_SDK_PYTHON "python"
#define CONFIG_SDK_MAKE_WARN_UNDEFINED_VARIABLES 1
#define CONFIG_APP_BUILD_TYPE_APP_2NDBOOT 1
#define CONFIG_APP_BUILD_GENERATE_BINARIES 1
#define CONFIG_APP_BUILD_BOOTLOADER 1
#define CONFIG_APP_BUILD_USE_FLASH_SECTIONS 1
#define CONFIG_APP_COMPILE_TIME_DATE 1
#define CONFIG_BOOTLOADER_LOG_LEVEL_INFO 1
#define CONFIG_BOOTLOADER_LOG_LEVEL 3
#define CONFIG_BOOTLOADER_VDDSDIO_BOOST_1_9V 1
#define CONFIG_BOOTLOADER_RESERVE_RTC_SIZE 0x0
#define CONFIG_ESPTOOLPY_PORT "/dev/ttyUSB0"
#define CONFIG_ESPTOOLPY_BAUD_921600B 1
#define CONFIG_ESPTOOLPY_BAUD_OTHER_VAL 115200
#define CONFIG_ESPTOOLPY_BAUD 921600
#define CONFIG_ESPTOOLPY_COMPRESSED 1
#define CONFIG_ESPTOOLPY_FLASHMODE_DIO 1
#define CONFIG_ESPTOOLPY_FLASHMODE "dio"
#define CONFIG_ESPTOOLPY_FLASHFREQ_40M 1
#define CONFIG_ESPTOOLPY_FLASHFREQ "40m"
#define CONFIG_ESPTOOLPY_FLASHSIZE_4MB 1
#define CONFIG_ESPTOOLPY_FLASHSIZE "4MB"
#define CONFIG_ESPTOOLPY_FLASHSIZE_DETECT 1
#define CONFIG_ESPTOOLPY_BEFORE_RESET 1
#define CONFIG_ESPTOOLPY_BEFORE "default_reset"
#define CONFIG_ESPTOOLPY_AFTER_RESET 1
#define CONFIG_ESPTOOLPY_AFTER "hard_reset"
#define CONFIG_ESPTOOLPY_MONITOR_BAUD_115200B 1
#define CONFIG_ESPTOOLPY_MONITOR_BAUD_OTHER_VAL 115200
#define CONFIG_ESPTOOLPY_MONITOR_BAUD 115200
#define CONFIG_PARTITION_TABLE_CUSTOM 1
#define CONFIG_PARTITION_TABLE_CUSTOM_FILENAME "partitions.csv"
#define CONFIG_PARTITION_TABLE_FILENAME "partitions.csv"
#define CONFIG_PARTITION_TABLE_OFFSET 0x8000
#define CONFIG_PARTITION_TABLE_MD5 1
#define CONFIG_COMPILER_OPTIMIZATION_DEFAULT 1
#define CONFIG_COMPILER_OPTIMIZATION_ASSERTIONS_ENABLE 1
#define CONFIG_COMPILER_STACK_CHECK_MODE_NONE 1
#define CONFIG_COMPILER_DISABLE_GCC8_WARNINGS 1
#define CONFIG_ESP32_APPTRACE_DEST_NONE 1
#define CONFIG_ESP32_APPTRACE_LOCK_ENABLE 1
#define CONFIG_BT_ENABLED 1
#define CONFIG_BTDM_CTRL_MODE_BLE_ONLY 1
#define CONFIG_BTDM_CTRL_BLE_MAX_CONN 3
#define CONFIG_BTDM_CTRL_BR_EDR_SCO_DATA_PATH_EFF 0
#define CONFIG_BTDM_CTRL_BLE_MAX_CONN_EFF 3
#define CONFIG_BTDM_CTRL_BR_EDR_MAX_ACL_CONN_EFF 0
#define CONFIG_BTDM_CTRL_BR_EDR_MAX_SYNC_CONN_EFF 0
#define CONFIG_BTDM_CTRL_PINNED_TO_CORE_0 1
#define CONFIG_BTDM_CTRL_PINNED_TO_CORE 0
#define CONFIG_BTDM_CTRL_HCI_MODE_VHCI 1
#define CONFIG_BTDM_MODEM_SLEEP 1
#define CONFIG_BTDM_MODEM_SLEEP_MODE_ORIG 1
#define CONFIG_BTDM_LPCLK_SEL_MAIN_XTAL 1
#define CONFIG_BTDM_BLE_DEFAULT_SCA_250PPM 1
#define CONFIG_BTDM_BLE_SLEEP_CLOCK_ACCURACY_INDEX_EFF 1
#define CONFIG_BTDM_BLE_SCAN_DUPL 1
#define CONFIG_BTDM_SCAN_DUPL_TYPE_DEVICE 1
#define CONFIG_BTDM_SCAN_DUPL_TYPE 0
#define CONFIG_BTDM_SCAN_DUPL_CACHE_SIZE 200
#define CONFIG_BTDM_BLE_ADV_REPORT_FLOW_CTRL_SUPP 1
#define CONFIG_BTDM_BLE_ADV_REPORT_FLOW_CTRL_NUM 100
#define CONFIG_BTDM_BLE_ADV_REPORT_DISCARD_THRSHOLD 20
#define CONFIG_BTDM_COEX_BT_OPTIONS 1
#define CONFIG_BTDM_COEX_BLE_ADV_HIGH_PRIORITY 1
#define CONFIG_BT_BLUEDROID_ENABLED 1
#define CONFIG_BT_BTC_TASK_STACK_SIZE 3072
#define CONFIG_BT_BLUEDROID_PINNED_TO_CORE_0 1
#define CONFIG_BT_BLUEDROID_PINNED_TO_CORE 0
#define CONFIG_BT_BTU_TASK_STACK_SIZE 4096
#define CONFIG_BT_CLASSIC_ENABLED 1
#define CONFIG_BT_SPP_ENABLED 1
#define CONFIG_BT_SSP_ENABLED 1
#define CONFIG_BT_BLE_ENABLED 1
#define CONFIG_BT_GATTS_ENABLE 1
#define CONFIG_BT_GATTS_SEND_SERVICE_CHANGE_MANUAL 1
#define CONFIG_BT_GATTS_SEND_SERVICE_CHANGE_MODE 1
#define CONFIG_BT_GATTC_ENABLE 1
#define CONFIG_BT_BLE_SMP_ENABLE 1
#define CONFIG_BT_LOG_HCI_TRACE_LEVEL_WARNING 1
#define CONFIG_BT_LOG_HCI_TRACE_LEVEL 2
#define CONFIG_BT_LOG_BTM_TRACE_LEVEL_WARNING 1
#define CONFIG_BT_LOG_BTM_TRACE_LEVEL 2
#define CONFIG_BT_LOG_L2CAP_TRACE_LEVEL_WARNING 1
#define CONFIG_BT_LOG_L2CAP_TRACE_LEVEL 2
#define CONFIG_BT_LOG_RFCOMM_TRACE_LEVEL_WARNING 1
#define CONFIG_BT_LOG_RFCOMM_TRACE_LEVEL 2
#define CONFIG_BT_LOG_SDP_TRACE_LEVEL_WARNING 1
#define CONFIG_BT_LOG_SDP_TRACE_LEVEL 2
#define CONFIG_BT_LOG_GAP_TRACE_LEVEL_WARNING 1
#define CONFIG_BT_LOG_GAP_TRACE_LEVEL 2
#define CONFIG_BT_LOG_BNEP_TRACE_LEVEL_WARNING 1
#define CONFIG_BT_LOG_BNEP_TRACE_LEVEL 2
#define CONFIG_BT_LOG_PAN_TRACE_LEVEL_WARNING 1
#define CONFIG_BT_LOG_PAN_TRACE_LEVEL 2
#define CONFIG_BT_LOG_A2D_TRACE_LEVEL_WARNING 1
#define CONFIG_BT_LOG_A2D_TRACE_LEVEL 2
#define CONFIG_BT_LOG_AVDT_TRACE_LEVEL_WARNING 1
#define CONFIG_BT_LOG_AVDT_TRACE_LEVEL 2
#define CONFIG_BT_LOG_AVCT_TRACE_LEVEL_WARNING 1
#define CONFIG_BT_LOG_AVCT_TRACE_LEVEL 2
#define CONFIG_BT_LOG_AVRC_TRACE_LEVEL_WARNING 1
#define CONFIG_BT_LOG_AVRC_TRACE_LEVEL 2
#define CONFIG_BT_LOG_MCA_TRACE_LEVEL_WARNING 1
#define CONFIG_BT_LOG_MCA_TRACE_LEVEL 2
#define CONFIG_BT_LOG_HID_TRACE_LEVEL_WARNING 1
#define CONFIG_BT_LOG_HID_TRACE_LEVEL 2
#define CONFIG_BT_LOG_APPL_TRACE_LEVEL_WARNING 1
#define CONFIG_BT_LOG_APPL_TRACE_LEVEL 2
#define CONFIG_BT_LOG_GATT_TRACE_LEVEL_WARNING 1
#define CONFIG_BT_LOG_GATT_TRACE_LEVEL 2
#define CONFIG_BT_LOG_SMP_TRACE_LEVEL_WARNING 1
#define CONFIG_BT_LOG_SMP_TRACE_LEVEL 2
#define CONFIG_BT_LOG_BTIF_TRACE_LEVEL_WARNING 1
#define CONFIG_BT_LOG_BTIF_TRACE_LEVEL 2
#define CONFIG_BT_LOG_BTC_TRACE_LEVEL_WARNING 1
#define CONFIG_BT_LOG_BTC_TRACE_LEVEL 2
#define CONFIG_BT_LOG_OSI_TRACE_LEVEL_WARNING 1
#define CONFIG_BT_LOG_OSI_TRACE_LEVEL 2
#define CONFIG_BT_LOG_BLUFI_TRACE_LEVEL_WARNING 1
#define CONFIG_BT_LOG_BLUFI_TRACE_LEVEL 2
#define CONFIG_BT_ACL_CONNECTIONS 4
#define CONFIG_BT_BLE_DYNAMIC_ENV_MEMORY 1
#define CONFIG_BT_SMP_ENABLE 1
#define CONFIG_BT_BLE_ESTAB_LINK_CONN_TOUT 30
#define CONFIG_BT_RESERVE_DRAM 0xdb5c
#define CONFIG_COAP_MBEDTLS_PSK 1
#define CONFIG_COAP_LOG_DEFAULT_LEVEL 0
#define CONFIG_ADC_DISABLE_DAC 1
#define CONFIG_SPI_MASTER_ISR_IN_IRAM 1
#define CONFIG_SPI_SLAVE_ISR_IN_IRAM 1
#define CONFIG_EFUSE_CODE_SCHEME_COMPAT_3_4 1
#define CONFIG_EFUSE_MAX_BLK_LEN 192
#define CONFIG_ESP_TLS_USING_MBEDTLS 1
#define CONFIG_ESP32_REV_MIN_0 1
#define CONFIG_ESP32_REV_MIN 0
#define CONFIG_ESP32_DPORT_WORKAROUND 1
#define CONFIG_ESP32_DEFAULT_CPU_FREQ_160 1
#define CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ 160
#define CONFIG_ESP32_TRACEMEM_RESERVE_DRAM 0x0
#define CONFIG_ESP32_UNIVERSAL_MAC_ADDRESSES_FOUR 1
#define CONFIG_ESP32_UNIVERSAL_MAC_ADDRESSES 4
#define CONFIG_ESP32_ULP_COPROC_RESERVE_MEM 0
#define CONFIG_ESP32_PANIC_PRINT_REBOOT 1
#define CONFIG_ESP32_BROWNOUT_DET 1
#define CONFIG_ESP32_BROWNOUT_DET_LVL_SEL_0 1
#define CONFIG_ESP32_BROWNOUT_DET_LVL 0
#define CONFIG_ESP32_REDUCE_PHY_TX_POWER 1
#define CONFIG_ESP32_TIME_SYSCALL_USE_RTC_FRC1 1
#define CONFIG_ESP32_RTC_CLK_SRC_INT_RC 1
#define CONFIG_ESP32_RTC_CLK_CAL_CYCLES 1024
#define CONFIG_ESP32_DEEP_SLEEP_WAKEUP_DELAY 2000
#define CONFIG_ESP32_XTAL_FREQ_AUTO 1
#define CONFIG_ESP32_XTAL_FREQ 0
#define CONFIG_ESP32_DISABLE_BASIC_ROM_CONSOLE 1
#define CONFIG_ESP32_DPORT_DIS_INTERRUPT_LVL 5
#define CONFIG_WIFI_MANAGER_TASK_PRIORITY 5
#define CONFIG_WIFI_MANAGER_MAX_RETRY 2
#define CONFIG_DEFAULT_AP_SSID "esp32"
#define CONFIG_DEFAULT_AP_PASSWORD "esp32pwd"
#define CONFIG_DEFAULT_AP_CHANNEL 1
#define CONFIG_DEFAULT_AP_IP "10.10.0.1"
#define CONFIG_DEFAULT_AP_GATEWAY "10.10.0.1"
#define CONFIG_DEFAULT_AP_NETMASK "255.255.255.0"
#define CONFIG_DEFAULT_AP_MAX_CONNECTIONS 4
#define CONFIG_DEFAULT_AP_BEACON_INTERVAL 100
#define CONFIG_ESP32S2_TRACEMEM_RESERVE_DRAM 0x0
#define CONFIG_ESP32S2_ULP_COPROC_RESERVE_MEM 0
#define CONFIG_ESP32S2_DEBUG_OCDAWARE 1
#define CONFIG_ESP32S2_BROWNOUT_DET 1
#define CONFIG_ADC_CAL_EFUSE_TP_ENABLE 1
#define CONFIG_ADC_CAL_EFUSE_VREF_ENABLE 1
#define CONFIG_ADC_CAL_LUT_ENABLE 1
#define CONFIG_ESP_ERR_TO_NAME_LOOKUP 1
#define CONFIG_ESP_SYSTEM_EVENT_QUEUE_SIZE 32
#define CONFIG_ESP_SYSTEM_EVENT_TASK_STACK_SIZE 2304
#define CONFIG_ESP_MAIN_TASK_STACK_SIZE 3584
#define CONFIG_ESP_IPC_TASK_STACK_SIZE 1024
#define CONFIG_ESP_IPC_USES_CALLERS_PRIORITY 1
#define CONFIG_ESP_TIMER_TASK_STACK_SIZE 3584
#define CONFIG_ESP_CONSOLE_UART_DEFAULT 1
#define CONFIG_ESP_CONSOLE_UART_NUM 0
#define CONFIG_ESP_CONSOLE_UART_BAUDRATE 115200
#define CONFIG_ETH_ENABLED 1
#define CONFIG_ETH_USE_ESP32_EMAC 1
#define CONFIG_ETH_PHY_INTERFACE_RMII 1
#define CONFIG_ETH_RMII_CLK_INPUT 1
#define CONFIG_ETH_RMII_CLK_IN_GPIO 0
#define CONFIG_ETH_SMI_MDC_GPIO 23
#define CONFIG_ETH_SMI_MDIO_GPIO 18
#define CONFIG_ETH_PHY_USE_RST 1
#define CONFIG_ETH_PHY_RST_GPIO 5
#define CONFIG_ETH_DMA_BUFFER_SIZE 512
#define CONFIG_ETH_DMA_RX_BUFFER_NUM 10
#define CONFIG_ETH_DMA_TX_BUFFER_NUM 10
#define CONFIG_ETH_USE_SPI_ETHERNET 1
#define CONFIG_ETH_SPI_ETHERNET_DM9051 1
#define CONFIG_ETH_DM9051_INT_GPIO 4
#define CONFIG_ESP_EVENT_POST_FROM_ISR 1
#define CONFIG_ESP_EVENT_POST_FROM_IRAM_ISR 1
#define CONFIG_ESP_HTTP_CLIENT_ENABLE_HTTPS 1
#define CONFIG_HTTPD_MAX_REQ_HDR_LEN 512
#define CONFIG_HTTPD_MAX_URI_LEN 512
#define CONFIG_HTTPD_ERR_RESP_NO_DELAY 1
#define CONFIG_HTTPD_PURGE_BUF_LEN 32
#define CONFIG_ESP_NETIF_IP_LOST_TIMER_INTERVAL 120
#define CONFIG_ESP_NETIF_TCPIP_LWIP 1
#define CONFIG_ESP_NETIF_TCPIP_ADAPTER_COMPATIBLE_LAYER 1
#define CONFIG_ESP32_WIFI_SW_COEXIST_ENABLE 1
#define CONFIG_ESP32_WIFI_SW_COEXIST_PREFERENCE_BALANCE 1
#define CONFIG_ESP32_WIFI_SW_COEXIST_PREFERENCE_VALUE 2
#define CONFIG_ESP32_WIFI_STATIC_RX_BUFFER_NUM 10
#define CONFIG_ESP32_WIFI_DYNAMIC_RX_BUFFER_NUM 32
#define CONFIG_ESP32_WIFI_DYNAMIC_TX_BUFFER 1
#define CONFIG_ESP32_WIFI_TX_BUFFER_TYPE 1
#define CONFIG_ESP32_WIFI_DYNAMIC_TX_BUFFER_NUM 32
#define CONFIG_ESP32_WIFI_AMPDU_TX_ENABLED 1
#define CONFIG_ESP32_WIFI_TX_BA_WIN 6
#define CONFIG_ESP32_WIFI_AMPDU_RX_ENABLED 1
#define CONFIG_ESP32_WIFI_RX_BA_WIN 6
#define CONFIG_ESP32_WIFI_NVS_ENABLED 1
#define CONFIG_ESP32_WIFI_TASK_PINNED_TO_CORE_0 1
#define CONFIG_ESP32_WIFI_SOFTAP_BEACON_MAX_LEN 752
#define CONFIG_ESP32_WIFI_MGMT_SBUF_NUM 32
#define CONFIG_ESP32_WIFI_IRAM_OPT 1
#define CONFIG_ESP32_WIFI_RX_IRAM_OPT 1
#define CONFIG_ESP32_PHY_CALIBRATION_AND_DATA_STORAGE 1
#define CONFIG_ESP32_PHY_INIT_DATA_IN_PARTITION 1
#define CONFIG_ESP32_PHY_MAX_WIFI_TX_POWER 20
#define CONFIG_ESP32_PHY_MAX_TX_POWER 20
#define CONFIG_ESP32_ENABLE_COREDUMP_TO_NONE 1
#define CONFIG_FATFS_CODEPAGE_437 1
#define CONFIG_FATFS_CODEPAGE 437
#define CONFIG_FATFS_LFN_NONE 1
#define CONFIG_FATFS_FS_LOCK 0
#define CONFIG_FATFS_TIMEOUT_MS 10000
#define CONFIG_FATFS_PER_FILE_CACHE 1
#define CONFIG_FMB_MASTER_TIMEOUT_MS_RESPOND 150
#define CONFIG_FMB_MASTER_DELAY_MS_CONVERT 200
#define CONFIG_FMB_QUEUE_LENGTH 20
#define CONFIG_FMB_SERIAL_TASK_STACK_SIZE 2048
#define CONFIG_FMB_SERIAL_BUF_SIZE 256
#define CONFIG_FMB_SERIAL_TASK_PRIO 10
#define CONFIG_FMB_CONTROLLER_NOTIFY_TIMEOUT 20
#define CONFIG_FMB_CONTROLLER_NOTIFY_QUEUE_SIZE 20
#define CONFIG_FMB_CONTROLLER_STACK_SIZE 4096
#define CONFIG_FMB_EVENT_QUEUE_TIMEOUT 20
#define CONFIG_FMB_TIMER_PORT_ENABLED 1
#define CONFIG_FMB_TIMER_GROUP 0
#define CONFIG_FMB_TIMER_INDEX 0
#define CONFIG_FREERTOS_NO_AFFINITY 0x7FFFFFFF
#define CONFIG_FREERTOS_CORETIMER_0 1
#define CONFIG_FREERTOS_HZ 100
#define CONFIG_FREERTOS_ASSERT_ON_UNTESTED_FUNCTION 1
#define CONFIG_FREERTOS_CHECK_STACKOVERFLOW_CANARY 1
#define CONFIG_FREERTOS_INTERRUPT_BACKTRACE 1
#define CONFIG_FREERTOS_THREAD_LOCAL_STORAGE_POINTERS 1
#define CONFIG_FREERTOS_ASSERT_FAIL_ABORT 1
#define CONFIG_FREERTOS_IDLE_TASK_STACKSIZE 1536
#define CONFIG_FREERTOS_ISR_STACKSIZE 1536
#define CONFIG_FREERTOS_MAX_TASK_NAME_LEN 16
#define CONFIG_FREERTOS_TIMER_TASK_PRIORITY 1
#define CONFIG_FREERTOS_TIMER_TASK_STACK_DEPTH 2048
#define CONFIG_FREERTOS_TIMER_QUEUE_LENGTH 10
#define CONFIG_FREERTOS_QUEUE_REGISTRY_SIZE 0
#define CONFIG_FREERTOS_TASK_FUNCTION_WRAPPER 1
#define CONFIG_FREERTOS_CHECK_MUTEX_GIVEN_BY_OWNER 1
#define CONFIG_FREERTOS_DEBUG_OCDAWARE 1
#define CONFIG_HEAP_POISONING_DISABLED 1
#define CONFIG_HEAP_TRACING_OFF 1
#define CONFIG_LOG_DEFAULT_LEVEL_INFO 1
#define CONFIG_LOG_DEFAULT_LEVEL 3
#define CONFIG_LOG_COLORS 1
#define CONFIG_LOG_TIMESTAMP_SOURCE_RTOS 1
#define CONFIG_LWIP_LOCAL_HOSTNAME "espressif"
#define CONFIG_LWIP_DNS_SUPPORT_MDNS_QUERIES 1
#define CONFIG_LWIP_TIMERS_ONDEMAND 1
#define CONFIG_LWIP_MAX_SOCKETS 10
#define CONFIG_LWIP_SO_REUSE 1
#define CONFIG_LWIP_SO_REUSE_RXTOALL 1
#define CONFIG_LWIP_SO_RCVBUF 1
#define CONFIG_LWIP_ESP_GRATUITOUS_ARP 1
#define CONFIG_LWIP_GARP_TMR_INTERVAL 60
#define CONFIG_LWIP_TCPIP_RECVMBOX_SIZE 32
#define CONFIG_LWIP_DHCP_DOES_ARP_CHECK 1
#define CONFIG_LWIP_DHCPS_LEASE_UNIT 60
#define CONFIG_LWIP_DHCPS_MAX_STATION_NUM 8
#define CONFIG_LWIP_NETIF_LOOPBACK 1
#define CONFIG_LWIP_LOOPBACK_MAX_PBUFS 8
#define CONFIG_LWIP_MAX_ACTIVE_TCP 16
#define CONFIG_LWIP_MAX_LISTENING_TCP 16
#define CONFIG_LWIP_TCP_MAXRTX 12
#define CONFIG_LWIP_TCP_SYNMAXRTX 6
#define CONFIG_LWIP_TCP_MSS 1436
#define CONFIG_LWIP_TCP_TMR_INTERVAL 250
#define CONFIG_LWIP_TCP_MSL 60000
#define CONFIG_LWIP_TCP_SND_BUF_DEFAULT 5744
#define CONFIG_LWIP_TCP_WND_DEFAULT 5744
#define CONFIG_LWIP_TCP_RECVMBOX_SIZE 6
#define CONFIG_LWIP_TCP_QUEUE_OOSEQ 1
#define CONFIG_LWIP_TCP_OVERSIZE_MSS 1
#define CONFIG_LWIP_MAX_UDP_PCBS 16
#define CONFIG_LWIP_UDP_RECVMBOX_SIZE 6
#define CONFIG_LWIP_TCPIP_TASK_STACK_SIZE 3072
#define CONFIG_LWIP_TCPIP_TASK_AFFINITY_NO_AFFINITY 1
#define CONFIG_LWIP_TCPIP_TASK_AFFINITY 0x7FFFFFFF
#define CONFIG_LWIP_MAX_RAW_PCBS 16
#define CONFIG_LWIP_DHCP_MAX_NTP_SERVERS 1
#define CONFIG_LWIP_SNTP_UPDATE_DELAY 3600000
#define CONFIG_MBEDTLS_INTERNAL_MEM_ALLOC 1
#define CONFIG_MBEDTLS_ASYMMETRIC_CONTENT_LEN 1
#define CONFIG_MBEDTLS_SSL_IN_CONTENT_LEN 16384
#define CONFIG_MBEDTLS_SSL_OUT_CONTENT_LEN 4096
#define CONFIG_MBEDTLS_HARDWARE_AES 1
#define CONFIG_MBEDTLS_HARDWARE_MPI 1
#define CONFIG_MBEDTLS_HARDWARE_SHA 1
#define CONFIG_MBEDTLS_HAVE_TIME 1
#define CONFIG_MBEDTLS_TLS_SERVER_AND_CLIENT 1
#define CONFIG_MBEDTLS_TLS_SERVER 1
#define CONFIG_MBEDTLS_TLS_CLIENT 1
#define CONFIG_MBEDTLS_TLS_ENABLED 1
#define CONFIG_MBEDTLS_PSK_MODES 1
#define CONFIG_MBEDTLS_KEY_EXCHANGE_PSK 1
#define CONFIG_MBEDTLS_KEY_EXCHANGE_DHE_PSK 1
#define CONFIG_MBEDTLS_KEY_EXCHANGE_ECDHE_PSK 1
#define CONFIG_MBEDTLS_KEY_EXCHANGE_RSA_PSK 1
#define CONFIG_MBEDTLS_KEY_EXCHANGE_RSA 1
#define CONFIG_MBEDTLS_KEY_EXCHANGE_DHE_RSA 1
#define CONFIG_MBEDTLS_KEY_EXCHANGE_ELLIPTIC_CURVE 1
#define CONFIG_MBEDTLS_KEY_EXCHANGE_ECDHE_RSA 1
#define CONFIG_MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA 1
#define CONFIG_MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA 1
#define CONFIG_MBEDTLS_KEY_EXCHANGE_ECDH_RSA 1
#define CONFIG_MBEDTLS_SSL_RENEGOTIATION 1
#define CONFIG_MBEDTLS_SSL_PROTO_TLS1 1
#define CONFIG_MBEDTLS_SSL_PROTO_TLS1_1 1
#define CONFIG_MBEDTLS_SSL_PROTO_TLS1_2 1
#define CONFIG_MBEDTLS_SSL_PROTO_DTLS 1
#define CONFIG_MBEDTLS_SSL_ALPN 1
#define CONFIG_MBEDTLS_CLIENT_SSL_SESSION_TICKETS 1
#define CONFIG_MBEDTLS_SERVER_SSL_SESSION_TICKETS 1
#define CONFIG_MBEDTLS_AES_C 1
#define CONFIG_MBEDTLS_RC4_DISABLED 1
#define CONFIG_MBEDTLS_CCM_C 1
#define CONFIG_MBEDTLS_GCM_C 1
#define CONFIG_MBEDTLS_PEM_PARSE_C 1
#define CONFIG_MBEDTLS_PEM_WRITE_C 1
#define CONFIG_MBEDTLS_X509_CRL_PARSE_C 1
#define CONFIG_MBEDTLS_X509_CSR_PARSE_C 1
#define CONFIG_MBEDTLS_ECP_C 1
#define CONFIG_MBEDTLS_ECDH_C 1
#define CONFIG_MBEDTLS_ECDSA_C 1
#define CONFIG_MBEDTLS_ECP_DP_SECP192R1_ENABLED 1
#define CONFIG_MBEDTLS_ECP_DP_SECP224R1_ENABLED 1
#define CONFIG_MBEDTLS_ECP_DP_SECP256R1_ENABLED 1
#define CONFIG_MBEDTLS_ECP_DP_SECP384R1_ENABLED 1
#define CONFIG_MBEDTLS_ECP_DP_SECP521R1_ENABLED 1
#define CONFIG_MBEDTLS_ECP_DP_SECP192K1_ENABLED 1
#define CONFIG_MBEDTLS_ECP_DP_SECP224K1_ENABLED 1
#define CONFIG_MBEDTLS_ECP_DP_SECP256K1_ENABLED 1
#define CONFIG_MBEDTLS_ECP_DP_BP256R1_ENABLED 1
#define CONFIG_MBEDTLS_ECP_DP_BP384R1_ENABLED 1
#define CONFIG_MBEDTLS_ECP_DP_BP512R1_ENABLED 1
#define CONFIG_MBEDTLS_ECP_DP_CURVE25519_ENABLED 1
#define CONFIG_MBEDTLS_ECP_NIST_OPTIM 1
#define CONFIG_MDNS_MAX_SERVICES 10
#define CONFIG_MDNS_TASK_PRIORITY 1
#define CONFIG_MDNS_TASK_AFFINITY_CPU0 1
#define CONFIG_MDNS_TASK_AFFINITY 0x0
#define CONFIG_MDNS_SERVICE_ADD_TIMEOUT_MS 2000
#define CONFIG_MDNS_TIMER_PERIOD_MS 100
#define CONFIG_MQTT_PROTOCOL_311 1
#define CONFIG_MQTT_TRANSPORT_SSL 1
#define CONFIG_MQTT_TRANSPORT_WEBSOCKET 1
#define CONFIG_MQTT_TRANSPORT_WEBSOCKET_SECURE 1
#define CONFIG_NEWLIB_STDOUT_LINE_ENDING_CRLF 1
#define CONFIG_NEWLIB_STDIN_LINE_ENDING_CR 1
#define CONFIG_OPENSSL_ASSERT_DO_NOTHING 1
#define CONFIG_PTHREAD_TASK_PRIO_DEFAULT 5
#define CONFIG_PTHREAD_TASK_STACK_SIZE_DEFAULT 3072
#define CONFIG_PTHREAD_STACK_MIN 768
#define CONFIG_PTHREAD_DEFAULT_CORE_NO_AFFINITY 1
#define CONFIG_PTHREAD_TASK_CORE_DEFAULT -1
#define CONFIG_PTHREAD_TASK_NAME_DEFAULT "pthread"
#define CONFIG_SPI_FLASH_ROM_DRIVER_PATCH 1
#define CONFIG_SPI_FLASH_DANGEROUS_WRITE_ABORTS 1
#define CONFIG_SPI_FLASH_SUPPORT_ISSI_CHIP 1
#define CONFIG_SPI_FLASH_SUPPORT_GD_CHIP 1
#define CONFIG_UNITY_ENABLE_FLOAT 1
#define CONFIG_UNITY_ENABLE_DOUBLE 1
#define CONFIG_UNITY_ENABLE_IDF_TEST_RUNNER 1
#define CONFIG_VFS_SUPPRESS_SELECT_DEBUG_OUTPUT 1
#define CONFIG_VFS_SUPPORT_TERMIOS 1
#define CONFIG_SEMIHOSTFS_MAX_MOUNT_POINTS 1
#define CONFIG_SEMIHOSTFS_HOST_PATH_MAX_LEN 128
#define CONFIG_WL_SECTOR_SIZE_4096 1
#define CONFIG_WL_SECTOR_SIZE 4096
#define CONFIG_WIFI_PROV_SCAN_MAX_ENTRIES 16
#define CONFIG_WPA_MBEDTLS_CRYPTO 1

/* List of deprecated options */
#define CONFIG_A2D_TRACE_LEVEL_WARNING CONFIG_BT_LOG_A2D_TRACE_LEVEL_WARNING
#define CONFIG_ADC2_DISABLE_DAC CONFIG_ADC_DISABLE_DAC
#define CONFIG_APPL_TRACE_LEVEL_WARNING CONFIG_BT_LOG_APPL_TRACE_LEVEL_WARNING
#define CONFIG_AVCT_TRACE_LEVEL_WARNING CONFIG_BT_LOG_AVCT_TRACE_LEVEL_WARNING
#define CONFIG_AVDT_TRACE_LEVEL_WARNING CONFIG_BT_LOG_AVDT_TRACE_LEVEL_WARNING
#define CONFIG_AVRC_TRACE_LEVEL_WARNING CONFIG_BT_LOG_AVRC_TRACE_LEVEL_WARNING
#define CONFIG_BLE_ADV_REPORT_DISCARD_THRSHOLD CONFIG_BTDM_BLE_ADV_REPORT_DISCARD_THRSHOLD
#define CONFIG_BLE_ADV_REPORT_FLOW_CONTROL_NUM CONFIG_BTDM_BLE_ADV_REPORT_FLOW_CTRL_NUM
#define CONFIG_BLE_ADV_REPORT_FLOW_CONTROL_SUPPORTED CONFIG_BTDM_BLE_ADV_REPORT_FLOW_CTRL_SUPP
#define CONFIG_BLE_ESTABLISH_LINK_CONNECTION_TIMEOUT CONFIG_BT_BLE_ESTAB_LINK_CONN_TOUT
#define CONFIG_BLE_SCAN_DUPLICATE CONFIG_BTDM_BLE_SCAN_DUPL
#define CONFIG_BLE_SMP_ENABLE CONFIG_BT_BLE_SMP_ENABLE
#define CONFIG_BLUEDROID_ENABLED CONFIG_BT_BLUEDROID_ENABLED
#define CONFIG_BLUEDROID_PINNED_TO_CORE_0 CONFIG_BT_BLUEDROID_PINNED_TO_CORE_0
#define CONFIG_BLUFI_TRACE_LEVEL_WARNING CONFIG_BT_LOG_BLUFI_TRACE_LEVEL_WARNING
#define CONFIG_BROWNOUT_DET CONFIG_ESP32_BROWNOUT_DET
#define CONFIG_BROWNOUT_DET_LVL_SEL_0 CONFIG_ESP32_BROWNOUT_DET_LVL_SEL_0
#define CONFIG_BTC_TASK_STACK_SIZE CONFIG_BT_BTC_TASK_STACK_SIZE
#define CONFIG_BTC_TRACE_LEVEL_WARNING CONFIG_BT_LOG_BTC_TRACE_LEVEL_WARNING
#define CONFIG_BTDM_CONTROLLER_BLE_MAX_CONN CONFIG_BTDM_CTRL_BLE_MAX_CONN
#define CONFIG_BTDM_CONTROLLER_HCI_MODE_VHCI CONFIG_BTDM_CTRL_HCI_MODE_VHCI
#define CONFIG_BTDM_CONTROLLER_MODEM_SLEEP CONFIG_BTDM_MODEM_SLEEP
#define CONFIG_BTDM_CONTROLLER_MODE_BLE_ONLY CONFIG_BTDM_CTRL_MODE_BLE_ONLY
#define CONFIG_BTIF_TRACE_LEVEL_WARNING CONFIG_BT_LOG_BTIF_TRACE_LEVEL_WARNING
#define CONFIG_BTM_TRACE_LEVEL_WARNING CONFIG_BT_LOG_BTM_TRACE_LEVEL_WARNING
#define CONFIG_BTU_TASK_STACK_SIZE CONFIG_BT_BTU_TASK_STACK_SIZE
#define CONFIG_CLASSIC_BT_ENABLED CONFIG_BT_CLASSIC_ENABLED
#define CONFIG_COMPILER_OPTIMIZATION_LEVEL_DEBUG CONFIG_COMPILER_OPTIMIZATION_DEFAULT
#define CONFIG_CONSOLE_UART_BAUDRATE CONFIG_ESP_CONSOLE_UART_BAUDRATE
#define CONFIG_CONSOLE_UART_DEFAULT CONFIG_ESP_CONSOLE_UART_DEFAULT
#define CONFIG_DISABLE_BASIC_ROM_CONSOLE CONFIG_ESP32_DISABLE_BASIC_ROM_CONSOLE
#define CONFIG_DISABLE_GCC8_WARNINGS CONFIG_COMPILER_DISABLE_GCC8_WARNINGS
#define CONFIG_DUPLICATE_SCAN_CACHE_SIZE CONFIG_BTDM_SCAN_DUPL_CACHE_SIZE
#define CONFIG_ESP32_DEFAULT_PTHREAD_CORE_NO_AFFINITY CONFIG_PTHREAD_DEFAULT_CORE_NO_AFFINITY
#define CONFIG_ESP32_PTHREAD_STACK_MIN CONFIG_PTHREAD_STACK_MIN
#define CONFIG_ESP32_PTHREAD_TASK_NAME_DEFAULT CONFIG_PTHREAD_TASK_NAME_DEFAULT
#define CONFIG_ESP32_PTHREAD_TASK_PRIO_DEFAULT CONFIG_PTHREAD_TASK_PRIO_DEFAULT
#define CONFIG_ESP32_PTHREAD_TASK_STACK_SIZE_DEFAULT CONFIG_PTHREAD_TASK_STACK_SIZE_DEFAULT
#define CONFIG_ESP32_RTC_CLOCK_SOURCE_INTERNAL_RC CONFIG_ESP32_RTC_CLK_SRC_INT_RC
#define CONFIG_ESP_GRATUITOUS_ARP CONFIG_LWIP_ESP_GRATUITOUS_ARP
#define CONFIG_FLASHMODE_DIO CONFIG_ESPTOOLPY_FLASHMODE_DIO
#define CONFIG_FOUR_UNIVERSAL_MAC_ADDRESS CONFIG_ESP32_UNIVERSAL_MAC_ADDRESSES_FOUR
#define CONFIG_GAP_TRACE_LEVEL_WARNING CONFIG_BT_LOG_GAP_TRACE_LEVEL_WARNING
#define CONFIG_GARP_TMR_INTERVAL CONFIG_LWIP_GARP_TMR_INTERVAL
#define CONFIG_GATTC_ENABLE CONFIG_BT_GATTC_ENABLE
#define CONFIG_GATTS_ENABLE CONFIG_BT_GATTS_ENABLE
#define CONFIG_GATTS_SEND_SERVICE_CHANGE_MANUAL CONFIG_BT_GATTS_SEND_SERVICE_CHANGE_MANUAL
#define CONFIG_GATT_TRACE_LEVEL_WARNING CONFIG_BT_LOG_GATT_TRACE_LEVEL_WARNING
#define CONFIG_HCI_TRACE_LEVEL_WARNING CONFIG_BT_LOG_HCI_TRACE_LEVEL_WARNING
#define CONFIG_HID_TRACE_LEVEL_WARNING CONFIG_BT_LOG_HID_TRACE_LEVEL_WARNING
#define CONFIG_IPC_TASK_STACK_SIZE CONFIG_ESP_IPC_TASK_STACK_SIZE
#define CONFIG_L2CAP_TRACE_LEVEL_WARNING CONFIG_BT_LOG_L2CAP_TRACE_LEVEL_WARNING
#define CONFIG_LOG_BOOTLOADER_LEVEL_INFO CONFIG_BOOTLOADER_LOG_LEVEL_INFO
#define CONFIG_MAIN_TASK_STACK_SIZE CONFIG_ESP_MAIN_TASK_STACK_SIZE
#define CONFIG_MAKE_WARN_UNDEFINED_VARIABLES CONFIG_SDK_MAKE_WARN_UNDEFINED_VARIABLES
#define CONFIG_MB_CONTROLLER_NOTIFY_QUEUE_SIZE CONFIG_FMB_CONTROLLER_NOTIFY_QUEUE_SIZE
#define CONFIG_MB_CONTROLLER_NOTIFY_TIMEOUT CONFIG_FMB_CONTROLLER_NOTIFY_TIMEOUT
#define CONFIG_MB_CONTROLLER_STACK_SIZE CONFIG_FMB_CONTROLLER_STACK_SIZE
#define CONFIG_MB_EVENT_QUEUE_TIMEOUT CONFIG_FMB_EVENT_QUEUE_TIMEOUT
#define CONFIG_MB_MASTER_DELAY_MS_CONVERT CONFIG_FMB_MASTER_DELAY_MS_CONVERT
#define CONFIG_MB_MASTER_TIMEOUT_MS_RESPOND CONFIG_FMB_MASTER_TIMEOUT_MS_RESPOND
#define CONFIG_MB_QUEUE_LENGTH CONFIG_FMB_QUEUE_LENGTH
#define CONFIG_MB_SERIAL_BUF_SIZE CONFIG_FMB_SERIAL_BUF_SIZE
#define CONFIG_MB_SERIAL_TASK_PRIO CONFIG_FMB_SERIAL_TASK_PRIO
#define CONFIG_MB_SERIAL_TASK_STACK_SIZE CONFIG_FMB_SERIAL_TASK_STACK_SIZE
#define CONFIG_MB_TIMER_GROUP CONFIG_FMB_TIMER_GROUP
#define CONFIG_MB_TIMER_INDEX CONFIG_FMB_TIMER_INDEX
#define CONFIG_MB_TIMER_PORT_ENABLED CONFIG_FMB_TIMER_PORT_ENABLED
#define CONFIG_MCA_TRACE_LEVEL_WARNING CONFIG_BT_LOG_MCA_TRACE_LEVEL_WARNING
#define CONFIG_MONITOR_BAUD_115200B CONFIG_ESPTOOLPY_MONITOR_BAUD_115200B
#define CONFIG_OPTIMIZATION_ASSERTIONS_ENABLED CONFIG_COMPILER_OPTIMIZATION_ASSERTIONS_ENABLE
#define CONFIG_OPTIMIZATION_LEVEL_DEBUG CONFIG_COMPILER_OPTIMIZATION_DEFAULT
#define CONFIG_OSI_TRACE_LEVEL_WARNING CONFIG_BT_LOG_OSI_TRACE_LEVEL_WARNING
#define CONFIG_PAN_TRACE_LEVEL_WARNING CONFIG_BT_LOG_PAN_TRACE_LEVEL_WARNING
#define CONFIG_POST_EVENTS_FROM_IRAM_ISR CONFIG_ESP_EVENT_POST_FROM_IRAM_ISR
#define CONFIG_POST_EVENTS_FROM_ISR CONFIG_ESP_EVENT_POST_FROM_ISR
#define CONFIG_PYTHON CONFIG_SDK_PYTHON
#define CONFIG_REDUCE_PHY_TX_POWER CONFIG_ESP32_REDUCE_PHY_TX_POWER
#define CONFIG_RFCOMM_TRACE_LEVEL_WARNING CONFIG_BT_LOG_RFCOMM_TRACE_LEVEL_WARNING
#define CONFIG_SCAN_DUPLICATE_BY_DEVICE_ADDR CONFIG_BTDM_SCAN_DUPL_TYPE_DEVICE
#define CONFIG_SDP_TRACE_LEVEL_WARNING CONFIG_BT_LOG_SDP_TRACE_LEVEL_WARNING
#define CONFIG_SMP_TRACE_LEVEL_WARNING CONFIG_BT_LOG_SMP_TRACE_LEVEL_WARNING
#define CONFIG_SPI_FLASH_WRITING_DANGEROUS_REGIONS_ABORTS CONFIG_SPI_FLASH_DANGEROUS_WRITE_ABORTS
#define CONFIG_STACK_CHECK_NONE CONFIG_COMPILER_STACK_CHECK_MODE_NONE
#define CONFIG_SUPPORT_TERMIOS CONFIG_VFS_SUPPORT_TERMIOS
#define CONFIG_SUPPRESS_SELECT_DEBUG_OUTPUT CONFIG_VFS_SUPPRESS_SELECT_DEBUG_OUTPUT
#define CONFIG_SW_COEXIST_ENABLE CONFIG_ESP32_WIFI_SW_COEXIST_ENABLE
#define CONFIG_SW_COEXIST_PREFERENCE_BALANCE CONFIG_ESP32_WIFI_SW_COEXIST_PREFERENCE_BALANCE
#define CONFIG_SYSTEM_EVENT_QUEUE_SIZE CONFIG_ESP_SYSTEM_EVENT_QUEUE_SIZE
#define CONFIG_SYSTEM_EVENT_TASK_STACK_SIZE CONFIG_ESP_SYSTEM_EVENT_TASK_STACK_SIZE
#define CONFIG_TCPIP_RECVMBOX_SIZE CONFIG_LWIP_TCPIP_RECVMBOX_SIZE
#define CONFIG_TCPIP_TASK_AFFINITY_NO_AFFINITY CONFIG_LWIP_TCPIP_TASK_AFFINITY_NO_AFFINITY
#define CONFIG_TCPIP_TASK_STACK_SIZE CONFIG_LWIP_TCPIP_TASK_STACK_SIZE
#define CONFIG_TCP_MAXRTX CONFIG_LWIP_TCP_MAXRTX
#define CONFIG_TCP_MSL CONFIG_LWIP_TCP_MSL
#define CONFIG_TCP_MSS CONFIG_LWIP_TCP_MSS
#define CONFIG_TCP_OVERSIZE_MSS CONFIG_LWIP_TCP_OVERSIZE_MSS
#define CONFIG_TCP_QUEUE_OOSEQ CONFIG_LWIP_TCP_QUEUE_OOSEQ
#define CONFIG_TCP_RECVMBOX_SIZE CONFIG_LWIP_TCP_RECVMBOX_SIZE
#define CONFIG_TCP_SND_BUF_DEFAULT CONFIG_LWIP_TCP_SND_BUF_DEFAULT
#define CONFIG_TCP_SYNMAXRTX CONFIG_LWIP_TCP_SYNMAXRTX
#define CONFIG_TCP_WND_DEFAULT CONFIG_LWIP_TCP_WND_DEFAULT
#define CONFIG_TIMER_QUEUE_LENGTH CONFIG_FREERTOS_TIMER_QUEUE_LENGTH
#define CONFIG_TIMER_TASK_PRIORITY CONFIG_FREERTOS_TIMER_TASK_PRIORITY
#define CONFIG_TIMER_TASK_STACK_DEPTH CONFIG_FREERTOS_TIMER_TASK_STACK_DEPTH
#define CONFIG_TIMER_TASK_STACK_SIZE CONFIG_ESP_TIMER_TASK_STACK_SIZE
#define CONFIG_TOOLPREFIX CONFIG_SDK_TOOLPREFIX
#define CONFIG_UDP_RECVMBOX_SIZE CONFIG_LWIP_UDP_RECVMBOX_SIZE
