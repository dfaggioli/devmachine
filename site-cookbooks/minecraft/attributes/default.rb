default["minecraft"]["user"] = "minecraft"
default["minecraft"]["group"] = "minecraft"
default["minecraft"]["group_users"] = []
default["minecraft"]["gid"] = "3001"
default["minecraft"]["uid"] = "3001"
default["minecraft"]["data_directory"] = "/var/lib/minecraft"
default["minecraft"]["mcrcon"]["repository"] = "https://github.com/Tiiffi/mcrcon.git"
default["minecraft"]["mcrcon"]["revision"] = "master"

default["minecraft"]["server"]["url"] = "https://launcher.mojang.com/v1/objects/3cf24a8694aca6267883b17d934efacc5e44440d/server.jar"
default["minecraft"]["server"]["java"]["xmx"] = "4G"
default["minecraft"]["server"]["java"]["g_xmx"] = "1G"
default["minecraft"]["server"]["java"]["xmn"] = "2G"
default["minecraft"]["server"]["java"]["xms"] = "512M"
default["minecraft"]["server"]["java"]["gcthreads"] = "4"
default["minecraft"]["server"]["properties"] = {
    "broadcast-rcon-to-ops" => "true",
    "view-distance" => "10",
    "enable-jmx-monitoring" => "false",
    "server-ip" => "",
    "resource-pack-prompt" => "",
    "rcon.port" => "25575",
    "gamemode" => "survival",
    "server-port" => "25565",
    "allow-nether" => "true",
    "enable-command-block" => "false",
    "enable-rcon" => "true",
    "sync-chunk-writes" => "true",
    "enable-query" => "false",
    "op-permission-level" => "4",
    "prevent-proxy-connections" => "false",
    "resource-pack" => "",
    "entity-broadcast-range-percentage" => "100",
    "level-name" => "world",
    "rcon.password" => "",
    "player-idle-timeout" => "0",
    "motd" => "A Minecraft Server",
    "query.port" => "25565",
    "force-gamemode" => "false",
    "rate-limit" => "0",
    "hardcore" => "false",
    "white-list" => "false",
    "broadcast-console-to-ops" => "true",
    "pvp" => "true",
    "spawn-npcs" => "true",
    "spawn-animals" => "true",
    "snooper-enabled" => "true",
    "difficulty" => "easy",
    "function-permission-level" => "2",
    "network-compression-threshold" => "256",
    "text-filtering-config" => "",
    "require-resource-pack" => "false",
    "spawn-monsters" => "true",
    "max-tick-time" => "60000",
    "enforce-whitelist" => "false",
    "use-native-transport" => "true",
    "max-players" => "20",
    "resource-pack-sha1" => "",
    "spawn-protection" => "16",
    "online-mode" => "true",
    "enable-status" => "true",
    "allow-flight" => "false",
    "max-world-size" => "29999984",
}

default["minecraft"]["geyser"]["url"] = "https://ci.opencollab.dev/job/GeyserMC/job/Geyser/job/master/lastSuccessfulBuild/artifact/bootstrap/standalone/target/Geyser.jar"
