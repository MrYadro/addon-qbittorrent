#!/usr/bin/with-contenv bashio
# ==============================================================================
# Hass.io Add-ons: qBittorrent
# Configures qBittorrent before running
# ==============================================================================
readonly conf=/config/qBittorrent/config/qBittorrent.conf
readonly defconf=/defaults/qBittorrent.conf

# Check legal notice to be accepted
if ! bashio::config.true "legal_notice_accepted"; then
    bashio::log.fatal
    bashio::log.fatal "Add-on configuration is incomplete!"
    bashio::log.fatal
    bashio::log.fatal "qBittorrent requires you to accept legal notice!"
    bashio::log.fatal
    bashio::log.fatal "Please check the installation manual of the add-on."
    bashio::log.fatal
    bashio::exit.nok
fi

# Ensure configuration folder exists
if ! bashio::fs.directory_exists "$(dirname "${conf}")"; then
    mkdir -p "$(dirname "${conf}")" \
        || bashio::exit.nok "Failed to create qBittorrent configuration directory"
    cp $defconf $conf
fi