var spi__master__lobo_8h =
[
    [ "spi_lobo_bus_config_t", "spi__master__lobo_8h.html#structspi__lobo__bus__config__t", [
      [ "max_transfer_sz", "spi__master__lobo_8h.html#aa73dfedd3f4b3b095f36f4ed9e5b8906", null ],
      [ "miso_io_num", "spi__master__lobo_8h.html#afc2075a9754b4f6103e89cd7b4fe0158", null ],
      [ "mosi_io_num", "spi__master__lobo_8h.html#a94278e232281ec3c3516a0342845d2cb", null ],
      [ "quadhd_io_num", "spi__master__lobo_8h.html#a4e7806f12f71badd825ae164807787e4", null ],
      [ "quadwp_io_num", "spi__master__lobo_8h.html#a59477f890ad6fef05b4cd741677debec", null ],
      [ "sclk_io_num", "spi__master__lobo_8h.html#a7b5ed67f4b2ba2a7b58c370a29e60f95", null ]
    ] ],
    [ "spi_lobo_device_interface_config_t", "spi__master__lobo_8h.html#structspi__lobo__device__interface__config__t", [
      [ "address_bits", "spi__master__lobo_8h.html#add097bb61cdf6e046d59186302e0ddfa", null ],
      [ "clock_speed_hz", "spi__master__lobo_8h.html#a9a8af59c946d69b8d908c9af8d736731", null ],
      [ "command_bits", "spi__master__lobo_8h.html#a0d5fbbbcd253af58a65d7cfd6143fe57", null ],
      [ "cs_ena_posttrans", "spi__master__lobo_8h.html#aa10c2ba7e057f2de9c77959e30bddd83", null ],
      [ "cs_ena_pretrans", "spi__master__lobo_8h.html#afa1f6e2dc78e5901748edd065d3baff5", null ],
      [ "dummy_bits", "spi__master__lobo_8h.html#a607bd6901913187ee9fc8b337586e73c", null ],
      [ "duty_cycle_pos", "spi__master__lobo_8h.html#a525019a232ef540e2f8ebb59f4ff47f8", null ],
      [ "flags", "spi__master__lobo_8h.html#a58cdcde9c930120466c738a14d6f6fab", null ],
      [ "mode", "spi__master__lobo_8h.html#a1c23032e28bb2c030fd2b21575a012f7", null ],
      [ "post_cb", "spi__master__lobo_8h.html#ab4fed50557ba4c272fc251a2899bec39", null ],
      [ "pre_cb", "spi__master__lobo_8h.html#a376f3dd09a6ccae99ab3c47690152c6e", null ],
      [ "selected", "spi__master__lobo_8h.html#a34a48bc1f9e3bd7f3a272484bed8cdc3", null ],
      [ "spics_ext_io_num", "spi__master__lobo_8h.html#a401358f9287a2f47f6ac5511b5014c3d", null ],
      [ "spics_io_num", "spi__master__lobo_8h.html#a52c49fe0148deb389a6653541c851bbb", null ]
    ] ],
    [ "spi_lobo_transaction_t", "spi__master__lobo_8h.html#structspi__lobo__transaction__t", [
      [ "address", "spi__master__lobo_8h.html#af14c72df38f19887bcf6482968671105", null ],
      [ "command", "spi__master__lobo_8h.html#ad60a4a4b03cbb3337c1b5439edd81636", null ],
      [ "flags", "spi__master__lobo_8h.html#a6b6eb10f485e993841a9246642d50b07", null ],
      [ "length", "spi__master__lobo_8h.html#a4658fb2c0af57630a9087ce797524b30", null ],
      [ "rxlength", "spi__master__lobo_8h.html#a99c48756ddf104edc116ca2d7cbf3782", null ],
      [ "user", "spi__master__lobo_8h.html#a7a7ccd6fd98f473bb1584b634379d3f5", null ]
    ] ],
    [ "spi_lobo_host_t", "spi__master__lobo_8h.html#structspi__lobo__host__t", [
      [ "cur_bus_config", "spi__master__lobo_8h.html#abdb2a294e6a34416b52231b1218838f3", null ],
      [ "cur_device", "spi__master__lobo_8h.html#ae1249747858b1123f0ece404a1db6ef4", null ],
      [ "device", "spi__master__lobo_8h.html#a2d0c39c04698d66e0716ef216de2deb4", null ],
      [ "dma_chan", "spi__master__lobo_8h.html#a738335eaee0d0a89f5f5bf8a403e8c9d", null ],
      [ "dmadesc_rx", "spi__master__lobo_8h.html#a493f473bee4355a1ee60be2fa85d1420", null ],
      [ "dmadesc_tx", "spi__master__lobo_8h.html#ac35b931577895c0488e79c6b33315e50", null ],
      [ "hw", "spi__master__lobo_8h.html#a9ce86f0c1a959b9144e03e96b84121f1", null ],
      [ "intr", "spi__master__lobo_8h.html#a7460e1c864e629f2b6cb002b9690dc91", null ],
      [ "max_transfer_sz", "spi__master__lobo_8h.html#aedad0cfa1f33556a5b2c2f231a4a1a91", null ],
      [ "no_gpio_matrix", "spi__master__lobo_8h.html#a425ee2633d3a132b92715392741032f4", null ],
      [ "spi_lobo_bus_mutex", "spi__master__lobo_8h.html#aee709556a4c39503152f50f65130232f", null ]
    ] ],
    [ "spi_lobo_device_t", "spi__master__lobo_8h.html#structspi__lobo__device__t", [
      [ "bus_config", "spi__master__lobo_8h.html#a70a33482b1442d2118fb906ee8d50e07", null ],
      [ "cfg", "spi__master__lobo_8h.html#af2483849a2070b707c075ec237b272b5", null ],
      [ "host", "spi__master__lobo_8h.html#a9186a9d112b03dedd3ec31713aba37ce", null ],
      [ "host_dev", "spi__master__lobo_8h.html#aad4cdc567d587f8fb090c0681733b3d6", null ]
    ] ],
    [ "spi_lobo_transaction_t.__unnamed__", "spi__master__lobo_8h.html#unionspi__lobo__transaction__t_8____unnamed____", [
      [ "tx_buffer", "spi__master__lobo_8h.html#a7e22e3d75cc008436dbf3b20c0cd1917", null ],
      [ "tx_data", "spi__master__lobo_8h.html#ae905c4d8174f012d7ebf9bb3c771bb17", null ]
    ] ],
    [ "spi_lobo_transaction_t.__unnamed__", "spi__master__lobo_8h.html#unionspi__lobo__transaction__t_8____unnamed____", [
      [ "rx_buffer", "spi__master__lobo_8h.html#a57a0bf59f0f5a685711ede06de34ddb3", null ],
      [ "rx_data", "spi__master__lobo_8h.html#ac039ab45a17c49d82afa42387227d060", null ]
    ] ],
    [ "LB_SPI_DEVICE_3WIRE", "spi__master__lobo_8h.html#ae61929fb6bf3ca71ff5fa67160d55969", null ],
    [ "LB_SPI_DEVICE_BIT_LSBFIRST", "spi__master__lobo_8h.html#ae96ee2a887e09d03a720813372b445ca", null ],
    [ "LB_SPI_DEVICE_CLK_AS_CS", "spi__master__lobo_8h.html#a7556d5df97453b66be07f89d8d78287d", null ],
    [ "LB_SPI_DEVICE_HALFDUPLEX", "spi__master__lobo_8h.html#a952154a78f2bbbd483a1d4a69e3a6e46", null ],
    [ "LB_SPI_DEVICE_POSITIVE_CS", "spi__master__lobo_8h.html#a93ec257082f11da2653ff46fa32124fc", null ],
    [ "LB_SPI_DEVICE_RXBIT_LSBFIRST", "spi__master__lobo_8h.html#a4b5efd1af7a01a067d30954a63c4cca2", null ],
    [ "LB_SPI_DEVICE_TXBIT_LSBFIRST", "spi__master__lobo_8h.html#a0cdc2742adf4234b4b08fb7751ce3cc1", null ],
    [ "LB_SPI_TRANS_MODE_DIO", "spi__master__lobo_8h.html#add060194e59c1411645e084bbd6bc706", null ],
    [ "LB_SPI_TRANS_MODE_DIOQIO_ADDR", "spi__master__lobo_8h.html#ae4dab78a7de1cb253e5fcde2982d6272", null ],
    [ "LB_SPI_TRANS_MODE_QIO", "spi__master__lobo_8h.html#a81e14ff1ce576492b0f1422eb4f77149", null ],
    [ "LB_SPI_TRANS_USE_RXDATA", "spi__master__lobo_8h.html#a56ea53b47e908cab01ca8e6b0ca49804", null ],
    [ "LB_SPI_TRANS_USE_TXDATA", "spi__master__lobo_8h.html#a8e005016d92b17a7d7fb1fed6f553567", null ],
    [ "NO_CS", "spi__master__lobo_8h.html#a782d9281f18d008edd8b8d3e1880465a", null ],
    [ "NO_DEV", "spi__master__lobo_8h.html#a9d357b54d006248103c7445724b816dd", null ],
    [ "SPI_ERR_OTHER_CONFIG", "spi__master__lobo_8h.html#a3b0f3e8be60673f931a14e82b12bc696", null ],
    [ "SPI_MAX_DMA_LEN", "spi__master__lobo_8h.html#a28d038c3b926bf899d56d94445224e91", null ],
    [ "SPI_SEMAPHORE_WAIT", "spi__master__lobo_8h.html#a6ef4a2650bcb33a52b2e294ef6f70877", null ],
    [ "spi_lobo_device_handle_t", "spi__master__lobo_8h.html#adb6083b952d07eedde7eef9b837b23ef", null ],
    [ "spi_lobo_device_interface_config_handle_t", "spi__master__lobo_8h.html#a2a30e6a6e5e500d76c6ef7fba9b6ffc2", null ],
    [ "spi_lobo_device_t", "spi__master__lobo_8h.html#a503daf5d0da8c0b72f3cd92650846033", null ],
    [ "spi_lobo_host_handle_t", "spi__master__lobo_8h.html#a9ef88c42be10bd54f5d277aa38191828", null ],
    [ "spi_lobo_transaction_cb_t", "spi__master__lobo_8h.html#ac05d45bde6b4e53b3f492fc65d5f5797", null ],
    [ "spi_lobo_transaction_t", "spi__master__lobo_8h.html#a2663c3b2e70d9f0e93ad4940edf06b06", null ],
    [ "spi_lobo_host_device_t", "spi__master__lobo_8h.html#afbbfae97a25f145dbb757b224f2e14af", [
      [ "TFT_SPI_HOST", "spi__master__lobo_8h.html#afbbfae97a25f145dbb757b224f2e14afa34c576e6f6e46e763596df67e0f1ab47", null ],
      [ "TFT_HSPI_HOST", "spi__master__lobo_8h.html#afbbfae97a25f145dbb757b224f2e14afab17c1d55af5437648aef1fdc2f463fb4", null ],
      [ "TFT_VSPI_HOST", "spi__master__lobo_8h.html#afbbfae97a25f145dbb757b224f2e14afa8e68648e25916d7dbf9b3e75efe74a3e", null ]
    ] ],
    [ "spi_lobo_bus_add_device", "spi__master__lobo_8h.html#a9cde37ee54e5cf2aeb84d9cf94fbb8f0", null ],
    [ "spi_lobo_bus_remove_device", "spi__master__lobo_8h.html#a26bfad2bbea5b8b0c4d29a44bed91494", null ],
    [ "spi_lobo_device_deselect", "spi__master__lobo_8h.html#afd57a81e914f1b69df5ece410f2a1855", null ],
    [ "spi_lobo_device_GiveSemaphore", "spi__master__lobo_8h.html#ada1afe79d9bec3da9bdc30a1d21665d1", null ],
    [ "spi_lobo_device_select", "spi__master__lobo_8h.html#a65164b69e17f18a63991a0be9869b9f7", null ],
    [ "spi_lobo_device_TakeSemaphore", "spi__master__lobo_8h.html#add7c72bea7eb08d0ecd0374ed871f302", null ],
    [ "spi_lobo_dmaworkaround_idle", "spi__master__lobo_8h.html#afb15cb48ae6d5b76a29691c08122c19d", null ],
    [ "spi_lobo_dmaworkaround_reset_in_progress", "spi__master__lobo_8h.html#aad888f21ca7a43b10526bc4b67caeab0", null ],
    [ "spi_lobo_dmaworkaround_transfer_active", "spi__master__lobo_8h.html#a739f6a364cc2b517a127a6f7196925a5", null ],
    [ "spi_lobo_get_native_pins", "spi__master__lobo_8h.html#a4047c33b24fb219f4dd02b293851c265", null ],
    [ "spi_lobo_get_speed", "spi__master__lobo_8h.html#aa854233c497b89be628679dfdc8f163e", null ],
    [ "spi_lobo_set_speed", "spi__master__lobo_8h.html#a7b9adfede36ff48e03fef4f4c7596bdb", null ],
    [ "spi_lobo_setup_dma_desc_links", "spi__master__lobo_8h.html#afbd48c0566cfee5cdbefc612c65610b6", null ],
    [ "spi_lobo_transfer_data", "spi__master__lobo_8h.html#af9e4e3ab6395f45cc506d72b2b0329d9", null ],
    [ "spi_lobo_uses_native_pins", "spi__master__lobo_8h.html#ab00be9c566e4805cb3007fd4b0e075c3", null ]
];