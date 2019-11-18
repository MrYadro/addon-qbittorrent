#!/usr/bin/with-contenv bashio
# ==============================================================================
# Hass.io Add-ons: qBittorrent
# Configures qBittorrent before running
# ==============================================================================
readonly conf=/config/qBittorrent/config/qBittorrent.conf

# if ! bashio::config.has_value "save_path"; then
#     bashio::log.fatal
#     bashio::log.fatal "Add-on configuration is incomplete!"
#     bashio::log.fatal
#     bashio::log.fatal "qBittorrent requires a claim code on the first run!"
#     bashio::log.fatal
#     bashio::log.fatal "Please check the installation manual of the add-on."
#     bashio::log.fatal
#     bashio::exit.nok
# fi

# Ensure configuration folder exists
if ! bashio::fs.directory_exists "$(dirname "${conf}")"; then
    mkdir -p "$(dirname "${conf}")" \
        || bashio::exit.nok "Failed to create qBittorrent configuration directory"
fi

cp /defaults/qBittorent.conf $conf

# save_path=$(bashio::config 'save_path')
# bashio::log.info "Editing Save Path"
# sed -i -e '/Downloads\\SavePath=/ s/=.*/=${save_path}/' $conf