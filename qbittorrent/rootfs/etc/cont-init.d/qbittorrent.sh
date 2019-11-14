#!/usr/bin/with-contenv bashio
# ==============================================================================
# Hass.io Add-ons: qBittorrent
# Configures qBittorrent before running
# ==============================================================================
readonly conf=/root/.config/qBittorrent/qBittorrent.conf

if ! bashio::fs.file_exists "${conf}"; then
    bashio::log.info 'First run! Initializing configuration files...'
    cp /defaults/qBittorrent.conf $conf

    if ! bashio::config.has_value "save_path"; then
        bashio::log.fatal
        bashio::log.fatal "Add-on configuration is incomplete!"
        bashio::log.fatal
        bashio::log.fatal "qBittorrent requires a claim code on the first run!"
        bashio::log.fatal
        bashio::log.fatal "Please check the installation manual of the add-on."
        bashio::log.fatal
        bashio::exit.nok
    fi

    save_path=$(bashio::config 'save_path')
    bashio::log.info "Editing Save Path"
    sed -i -e '/Downloads\\SavePath=/ s/=.*/=$save_path/' "$conf"
fi