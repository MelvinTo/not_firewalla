MIN_FREE_MEMORY=70
SAFE_MIN_FREE_MEMORY=90
REBOOT_FREE_MEMORY=40
FIREMAIN_MAX_MEMORY=280000
FIREMON_MAX_MEMORY=240000
FIREAPI_MAX_MEMORY=200000
MAX_NUM_OF_PROCESSES=4000
MAX_NUM_OF_THREADS=20000

function heartbeatLED {
  sudo sh -c 'echo none > /sys/devices/platform/leds/leds/nanopi:green:status/trigger' # intentionally not use green light as it is hard to be seen
  sudo sh -c 'echo heartbeat > /sys/devices/platform/leds/leds/nanopi:red:pwr/trigger'
}

function turnOffLED {
  sudo sh -c 'echo none > /sys/devices/platform/leds/leds/nanopi:green:status/trigger'
  sudo sh -c 'echo 0 > /sys/devices/platform/leds/leds/nanopi:green:status/brightness'
  sudo sh -c 'echo none > /sys/devices/platform/leds/leds/nanopi:red:pwr/trigger' 
  sudo sh -c 'echo 0 > /sys/devices/platform/leds/leds/nanopi:red:pwr/brightness'
}

function get_node_modules_url {
  echo "https://github.com/MelvinTo/not_fnm_64.git"
}
