# Hass.io Add-on: qBittorrent

## About

qBittorrent is a bittorrent client programmed in C++ / Qt that uses libtorrent (sometimes called libtorrent-rasterbar) by Arvid Norberg.

It aims to be a good alternative to all other bittorrent clients out there. qBittorrent is fast, stable and provides unicode support as well as many features.

## Installation

The installation of this add-on is pretty straightforward and not different in
comparison to installing any other Hass.io add-on.

1. [Add Hass.io add-on repository][repository] to your Hass.io instance.
1. Install the "qBittorrent" add-on.
1. Update the add-on config when you agree to qBittorrent legal notice below.
1. Save the add-on configuration.
1. Start the "qBittorrent" add-on.
1. Change default password via web interface

## Legal notice

qBittorrent is a file sharing program. When you run a torrent, its data will be made available to others by means of upload. Any content you share is your sole responsibility.

## Configuration

**Note**: _Remember to restart the add-on when the configuration is changed._

Example add-on configuration:

```json
{
  "legal_notice_accepted": false
}
```

**Note**: _This is just an example, don't copy and paste it! Create your own!_

## Contributing

This is an active open-source project. We are always open to people who want to
use the code or contribute to it.

Thank you for being involved! :heart_eyes:

[repository]: https://github.com/MrYadro/addon-qbittorrent