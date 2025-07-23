# RTVRTM Python 3 Implementation

A modern Python 3 port of the classic Rock the Vote/Rock the Mode (RTVRTM) plugin for Movie Battles II servers.

## Overview

This is a faithful Python 3 conversion of the original RTVRTM 3.6c script, maintaining 100% compatibility with existing configurations and server setups while bringing the benefits of modern Python to Movie Battles II server administration.

## Why Python 3?

The original RTVRTM script was written for Python 2, which reached end-of-life on January 1, 2020. This port was created to:

- **Future-proof server administration** - Python 2 is no longer supported or receiving security updates
- **Maintain compatibility** - Modern Linux distributions no longer ship with Python 2 by default
- **Leverage modern features** - Better Unicode support, improved error handling, and enhanced performance
- **Ensure long-term viability** - Continue using RTVRTM on current and future server environments

## Features

All original RTVRTM functionality is preserved:

### Rock the Vote (RTV)
- Player-initiated map voting
- Configurable vote thresholds and timing
- Primary and secondary map support
- Map nomination system
- Recently played map filtering

### Rock the Mode (RTM)
- Game mode voting (Open, Semi-Authentic, Full-Authentic, Duel, Legends)
- Mode-specific configurations
- Automatic mode rotation

### Administration Features
- Admin voting override capabilities
- Comprehensive logging and monitoring
- RCON integration for seamless server control
- Flood protection and anti-spam measures
- Configurable round and time limits

### Voting System
- Multiple voting options per round
- Vote extension capabilities
- Skip voting for administrators
- Automatic and manual voting triggers

## Installation

### Requirements
- Python 3.6 or higher
- Movie Battles II dedicated server
- RCON access to your server

### Quick Setup

1. **Download the script:**
```bash
git clone https://github.com/[your-username]/rtvrtm-python3.git
cd rtvrtm-python3
```

2. **Configure your server:**
```bash
cp rtvrtm.cfg.example rtvrtm.cfg
nano rtvrtm.cfg
```

3. **Set up your map lists:**
```bash
nano maps.txt          # Primary maps
nano secondary_maps.txt # Secondary/community maps
```

4. **Run the script:**
```bash
python3 rtvrtm.py -c rtvrtm.cfg
```

## Configuration

The configuration format is **identical** to the original Python 2 version. Existing `.cfg` files work without modification.

### Basic Configuration Example

```ini
[rtvrtm]
# Server connection
mbii_folder = /path/to/MBII
address = 127.0.0.1:29070
bind = 127.0.0.1
rcon_password = your_rcon_password
log_file = games.log

# RTV Settings
rtv = 1
rtv_rate = 60.0
rtv_voting = 1 30
rtv_minimum_votes = 51.0

# RTM Settings  
rtm = 7
rtm_rate = 60.0
rtm_voting = 1 30
rtm_minimum_votes = 51.0

# Map Settings
automatic_maps = 0
pick_secondary_maps = 2
```

### Map Lists

**maps.txt** - Primary rotation maps:
```
mb2_dotf
mb2_deathstar
mb2_jeditemple
mb2_kamino
mb2_cloudcity
```

**secondary_maps.txt** - Community/secondary maps:
```
mb2_cmp_arctic
mb2_cmp_arena
mb2_ctf_dotf
mb2_cmp_endor
```

## Migration from Python 2

### Zero Configuration Changes Required

If you're currently using the Python 2 version:

1. **Stop your existing RTVRTM**
2. **Replace the script** with this Python 3 version
3. **Start with the same configuration** - no changes needed!

Your existing:
- `rtvrtm.cfg` file works as-is
- `maps.txt` and `secondary_maps.txt` are unchanged
- All voting settings and thresholds remain the same
- RCON configuration stays identical

### Compatibility Notes

- **100% feature compatible** - All original commands and functionality preserved
- **Same configuration format** - Existing config files work without modification
- **Identical server messages** - Players won't notice any difference
- **Same performance characteristics** - Voting thresholds and timing unchanged

## Commands

All original player commands work exactly the same:

| Command | Description |
|---------|-------------|
| `!rtv` | Rock the vote for map change |
| `!unrtv` | Remove your RTV vote |
| `!rtm` | Rock the mode for game mode change |
| `!unrtm` | Remove your RTM vote |
| `!nominate <map>` | Nominate a map for voting |
| `!maplist 1` | Show primary maps |
| `!maplist 2` | Show secondary maps |
| `!modelist` | Show available game modes |
| `!1`, `!2`, `!3`, `!4` | Vote for option 1-4 during voting |

## Advanced Features

### Admin Commands
- Admin override voting
- Force map/mode changes
- Skip voting phases
- Extended voting controls

### Automation
- Automatic map rotation
- Time and round-based voting triggers
- Recently played map filtering
- Load balancing between primary/secondary maps

### Monitoring
- Comprehensive logging
- Real-time vote tracking
- Performance monitoring
- Error reporting and debugging

## Troubleshooting

### Common Issues

**Script won't start:**
```bash
# Check Python version
python3 --version

# Verify configuration
python3 rtvrtm.py -c rtvrtm.cfg --test
```

**RCON connection failed:**
- Verify `rcon_password` in configuration
- Check server address and port
- Ensure RCON is enabled on your server

**Maps not loading:**
- Verify `maps.txt` and `secondary_maps.txt` exist
- Check file permissions
- Ensure map names match exactly

### Debug Mode

Run with verbose logging:
```bash
python3 rtvrtm.py -c rtvrtm.cfg -v
```

## Technical Improvements

While maintaining complete compatibility, this Python 3 version includes:

### Under the Hood Enhancements
- **Better Unicode handling** - Improved support for international characters
- **Enhanced error reporting** - More detailed exception information
- **Modern networking** - Updated socket handling and connection management
- **Improved performance** - Optimized string operations and memory usage
- **Better logging** - Enhanced debug output and error tracking

### Code Quality
- **Type safety** - Better handling of data types and conversions
- **Exception handling** - More robust error recovery
- **Memory management** - Improved garbage collection and resource cleanup
- **Security** - Updated to use secure coding practices

## Contributing

Contributions are welcome! Please:

1. Fork the repository
2. Create a feature branch
3. Test thoroughly with your MB2 server
4. Submit a pull request

## License

This project maintains the same license as the original RTVRTM script.

## Credits

- **Original RTVRTM**: Created by klax
- **Python 3 Port**: Modernized for current server environments by SealTeamRicks
- **Community**: Thanks to the Movie Battles II community for continued support
- **Clan**: CloneArmy Clan for Patients

## Support

For issues, feature requests, or questions:
- Create an issue on GitHub
- Join the Movie Battles II Discord community
- Check the original RTVRTM documentation

---

**Note**: This Python 3 implementation is designed to be a drop-in replacement for the original Python 2 version. Server administrators can upgrade with confidence knowing their existing configurations and player experience will remain unchanged.