.global init
.eqv GPIO_ENABLE_REG, 0x60004020 # Thanh ghi cấu hình vào/ra các chân GPIO
.eqv GPIO_OUT_W1TS_REG, 0x60004008 # Thanh ghi thiết lập chân GPIO
init:
li a1, GPIO_ENABLE_REG # Thiết lập chân GPIO0 là chân xuất tín hiệu
li a2, 0x01 # Nạp mặt nạ 0x01 vào thanh ghi GPIO_ENABLE_REG
sw a2, 0(a1)
li a1, GPIO_OUT_W1TS_REG # Thiết lập chân GPIO0 ở mức cao, bật LED
li a2, 0x01 # Nạp mặt nạ 0x01 vào thanh ghi GPIO_OUT_W1TS_REG
sw a2, 0(a1)