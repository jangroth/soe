#!/usr/bin/env bash

# see https://gist.github.com/egelev/2e6b57d5a8ba62cf6df6fff2878c3fd4
# see https://github.com/valderman/bt-reload-headphones

function get_headphones_index() {
  echo $(pacmd list-cards | grep bluez_card -B1 | grep index | awk '{print $2}')
}

function get_headphones_mac_address() {
  local temp=$(pacmd list-cards | grep bluez_card -C20 | grep 'device.string' | cut -d' ' -f 3)
  temp="${temp%\"}"
  temp="${temp#\"}"
  echo "${temp}"
}

function _control_bluethoot_headphones() {
  local op=${1}
  local hp_mac=${2}
  echo -e "${op} ${hp_mac}\n quit" | bluetoothctl
}

function disconnect_bluetooth_headphones() {
  local hp_mac=${1}
  _control_bluethoot_headphones "disconnect" ${hp_mac}
}

function connect_bluetooth_headphones() {
  local hp_mac=${1}
  _control_bluethoot_headphones "connect" ${hp_mac}
}

function _set_headphones_profile() {
  local profile=${1}
  pacmd set-card-profile $(get_headphones_index) ${profile}
}

function set_headphones_profile_a2dp_sink() {
  _set_headphones_profile "a2dp_sink"
  echo "Bluethoot headphones a2dp_sink"
}

function set_headphones_profile_off() {
  _set_headphones_profile "off"
  echo "Bluethoot headphones profile off"
}

function main() {
  local hp_mac=$(get_headphones_mac_address)
  set_headphones_profile_off
  sleep 2s
  disconnect_bluetooth_headphones ${hp_mac}
  sleep 6s
  connect_bluetooth_headphones ${hp_mac}
  sleep 6s
  set_headphones_profile_a2dp_sink
}

main
