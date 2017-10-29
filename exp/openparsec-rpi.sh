#!/usr/bin/env bash

rp_module_id="openparsec-rpi"
rp_module_desc="OpenParsec - There is no safe distance"
rp_module_licence="GPL2 https://raw.githubusercontent.com/OpenParsec/openparsec/master/LICENSE"
rp_module_section="exp"
rp_module_flags="!mali !osmc !xbian !x86"

function depends_openparsec-rpi() {
	getDepends libsdl2-mixer-2.0-0 libsdl2-2.0-0 libraspberrypi0
}

function install_bin_openparsec-rpi() {
    getDepends libsdl2-mixer-2.0-0 libsdl2-2.0-0 libraspberrypi0
    gitPullOrClone "$md_inst" https://github.com/CrazySpence/openparsec-rpi.git
}

function configure_openparsec-rpi() {
    cp /opt/retropie/ports/openparsec-rpi/es/OpenParsec.sh /home/pi/RetroPie/roms/ports/
}
