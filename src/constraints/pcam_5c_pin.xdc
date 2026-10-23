# Pin constraints referenced from:
# https://github.com/Xilinx/kria-vitis-platforms/blob/main/kv260/platforms/kv260_bist/xdc/pin.xdc

# ==========================================
# MIPI Raspberry Pi Camera (2-Lane)
# ==========================================
set_property PACKAGE_PIN D7 [get_ports {mipi_phy_if_raspi_clk_p}]
set_property PACKAGE_PIN D6 [get_ports {mipi_phy_if_raspi_clk_n}]

set_property PACKAGE_PIN E5 [get_ports {mipi_phy_if_raspi_data_p[0]}]
set_property PACKAGE_PIN G6 [get_ports {mipi_phy_if_raspi_data_p[1]}]
set_property PACKAGE_PIN D5 [get_ports {mipi_phy_if_raspi_data_n[0]}]
set_property PACKAGE_PIN F6 [get_ports {mipi_phy_if_raspi_data_n[1]}]

set_property DIFF_TERM_ADV TERM_100 [get_ports {mipi_phy_if_raspi_clk_p}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {mipi_phy_if_raspi_clk_n}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {mipi_phy_if_raspi_data_p[*]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {mipi_phy_if_raspi_data_n[*]}]


# ==========================================
# I2C (Camera Sensor Control)
# ==========================================
set_property PACKAGE_PIN G11 [get_ports iic_scl_io]
set_property PACKAGE_PIN F10 [get_ports iic_sda_io]

set_property IOSTANDARD LVCMOS33 [get_ports iic_*]
set_property SLEW SLOW [get_ports iic_*]
set_property DRIVE 4 [get_ports iic_*]


# ==========================================
# Raspberry Pi Camera Enable
# ==========================================
set_property PACKAGE_PIN F11 [get_ports {cam_gpio_tri_o[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {cam_gpio_tri_o[*]}]
set_property SLEW SLOW [get_ports {cam_gpio_tri_o[*]}]
set_property DRIVE 4 [get_ports {cam_gpio_tri_o[*]}]