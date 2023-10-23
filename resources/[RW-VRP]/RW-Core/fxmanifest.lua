fx_version "cerulean"
game "gta5"

author "MAC <fivemrealw@gmail.com>"
description "vrp"
version "1.0.0"

lua54 "yes"

dependency {
  "oxmysql",
  "bootstrap"
}

shared_scripts {
  "shared/class.lua",
  "shared/md5.lua",
  "shared/print.lua"
}

client_scripts {
  "client/main.lua"
}

server_scripts {
  "server/main.lua"
}
