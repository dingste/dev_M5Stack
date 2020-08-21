/* Create: 10. Januar 2020
 * File:   Wifi.cpp
 * Author: Dieter Steuten at <d.steuten@elk.de> @ ELK GmbH, Krefeld
 */

#include "WiFi.h"
#include "../../Log.h"

Wifi::Wifi() {
    //Initialize NVS
    esp_err_t ret = nvs_flash_init();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
	ESP_ERROR_CHECK(nvs_flash_erase());
	ret = nvs_flash_init();
    }
    ESP_ERROR_CHECK(ret);

    tcpip_adapter_init();
    wifi_event_group = xEventGroupCreate();
    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    esp_wifi_init(&cfg);

    wifi_config_t wifi_config = {
	.sta =
	{
	    "Rambazamba", //ELK-Intern", /**< SSID of target AP*/
	    "alternichthund", //E2wL3!an2" /**< password of target AP*/
	},
    };

    wifi_event_group = xEventGroupCreate();
    esp_event_loop_init(event_handler, NULL);
    esp_wifi_set_ps(WIFI_PS_MIN_MODEM);
    esp_wifi_set_storage(WIFI_STORAGE_RAM);
    esp_wifi_set_mode(WIFI_MODE_STA);
    esp_wifi_set_config(ESP_IF_WIFI_STA, &wifi_config);

    esp_wifi_start();
}

Wifi::~Wifi() {
    nvs_flash_deinit();
}

void Wifi::classrun() {
    running=true;
    while (running) {
        vTaskDelay(100 / portTICK_RATE_MS); // don't run too fast
    }
}

esp_err_t Wifi::event_handler(void *ctx, system_event_t *event) {
    switch (event->event_id) {
	case SYSTEM_EVENT_STA_START:
	    esp_wifi_connect();
	    break;
	case SYSTEM_EVENT_STA_GOT_IP:
	    xEventGroupSetBits(wifi_event_group, CONNECTED_BIT);
	    break;
	case SYSTEM_EVENT_STA_DISCONNECTED:
	    /* This is a workaround as ESP32 WiFi libs don't currently
	       auto-reassociate. */
	    esp_wifi_connect();
	    xEventGroupClearBits(wifi_event_group, CONNECTED_BIT);
	    break;
	default:
	    break;
    }
    return ESP_OK;
}