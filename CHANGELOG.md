# Changelog

## v2.0.0 (2025-09-22) - KDE Plasma 6 & Modern Linux Support

### Added
- **KDE Plasma 6 Support**: Updated all paths and configurations for KDE Plasma 6.0+
- **User-specific paths**: Added support for `~/.local/share/` XDG directories
  - User Plasma themes, color schemes, Aurorae themes, Konsole themes, icons, wallpapers
- **SDDM enhancements**: Added SDDM user configuration path (`/var/lib/sddm/.config/`)
- **Modern KDE features**: Welcome Center pages, session files (X11/Wayland), user avatars
- **Safety improvements**: Better error handling and timestamp support

### Changed
- **Path organization**: Clear separation between system-wide and user-specific paths
- **Requirements**: Updated to require KDE Plasma 6.0+ for full compatibility
- **Documentation**: Revised installation paths table with KDE Plasma 6 structure

### Fixed
- **Home directory path**: Both backup and apply scripts now use proper `$HOME` expansion

## v1.0.0

### Added or Changed
- Added this changelog :)
- Fixed typos in both templates
- Back to top links
- Added more "Built With" frameworks/libraries
- Changed table of contents to start collapsed
- Added checkboxes for major features on roadmap

### Removed

- Some packages/libraries from acknowledgements I no longer use