fx_version "cerulean"
game "gta5"

author "MAC <fivemrealw@gmail.com>"
description "vrp bootstrap"
version "1.0.0"

lua54 "yes"

dependency {
  "oxmysql"
}

client_scripts {
  "client/main.lua"
}

server_scripts {
  "server/main.lua"
}
