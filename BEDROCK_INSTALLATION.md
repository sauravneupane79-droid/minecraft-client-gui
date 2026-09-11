# Minecraft Bedrock Add-On Installation Guide

## Overview
This is a complete Minecraft Bedrock Server add-on that includes a modern client GUI with mods and cheats functionality.

## Installation Steps

### Step 1: Download the Add-On
1. Download the `bedrock-addon` folder from this repository
2. Extract it to your computer

### Step 2: Server Installation

#### Option A: Direct Server Installation
1. Navigate to your Minecraft Bedrock Server directory
2. Locate the `world_name/behavior_packs` folder
3. Copy the `behavior_pack` folder into `behavior_packs`
4. Copy the `resource_pack` folder into the `world_name/resource_packs` folder

#### Option B: Realm Installation
1. On your Realm settings, go to **Behavior Packs**
2. Click **Upload** and select the `behavior_pack` folder
3. Go to **Resource Packs**
4. Click **Upload** and select the `resource_pack` folder
5. Click **Apply** to enable them

### Step 3: Enable the Add-On in World

**In-Game:**
1. Open your world/realm settings
2. Go to **Packs** section
3. Find "Minecraft Client GUI" in both Behavior Packs and Resource Packs
4. Toggle them **ON** and move them to the top
5. Click **Save** and reload the world

**In server.properties:**
```
behavior-pack-validation=false
resource-pack-validation=false
```

## Usage

### Access the Mod Menu
Run this command in the game:
```
/function menu
```

Or access individual mods:

### Available Mods

#### 1. Fly Through Walls
```
/function mods/fly_through_walls
```
- Pass through any block or wall
- Perfect for exploration
- Applies Resistance effect for collision bypass

#### 2. Creative Flight
```
/function mods/creative_flight
```
- Enables flight in any game mode
- Double-tap Space to activate
- Applies flight ability

#### 3. Speed Boost
```
/function mods/speed_boost
```
- Increases movement speed by 3x
- Great for quick traversal
- Applies Speed II effect

#### 4. Night Vision
```
/function mods/night_vision
```
- See perfectly in the dark
- No torches needed
- Lasts indefinitely until disabled

#### 5. X-Ray Vision
```
/function mods/xray
```
- See ores and valuable blocks through walls
- Applies Glowing effect to ores
- Combined with Speed boost

#### 6. Instant Break
```
/function mods/instant_break
```
- Break any block instantly
- No mining delay
- Applies Haste II effect

### Disable All Mods
```
/function mods/disable_all
```
- Removes all active mods
- Clears all effects
- Resets abilities

## File Structure

```
bedrock-addon/
├── behavior_pack/
│   ├── manifest.json
│   └── functions/
│       ├── init.mcfunction
│       ├── menu.mcfunction
│       └── mods/
│           ├── fly_through_walls.mcfunction
│           ├── creative_flight.mcfunction
│           ├── speed_boost.mcfunction
│           ├── night_vision.mcfunction
│           ├── xray.mcfunction
│           ├── instant_break.mcfunction
│           └── disable_all.mcfunction
└── resource_pack/
    ├── manifest.json
    └── ui/
        └── client_gui.json
```

## Server Configuration

### Required Settings

Add to your `server.properties`:

```properties
# Enable command blocks for mod functions
enable-command-blocks=true

# Allow functions to run
function-permission-level=2

# Disable validation if having issues
behavior-pack-validation=false
resource-pack-validation=false
```

### Optional: Operator Only Mods

To restrict mods to operators only:

```mcfunction
# Add this line to each mod function:
require @s administrator
```

## Advanced Configuration

### Custom Mod Duration

Edit the duration value in mcfunction files:
```mcfunction
effect @s speed 999999 2 true  # 999999 = infinite
# Change to specific ticks: 1200 = 60 seconds
```

### Custom Effect Levels

Change the effect amplifier (0 = level 1, 1 = level 2, etc.):
```mcfunction
effect @s speed 999999 2 true  # "2" = Speed III effect
```

## Troubleshooting

### Mods not working?

1. **Check if add-on is enabled:**
   - Go to Settings > Packs
   - Ensure both packs are toggled ON
   - Check that they're at the top of the list

2. **Command blocks not enabled:**
   - In world settings, enable "Command Blocks"
   - Restart the world

3. **Need to reload:**
   ```
   /reload
   ```

4. **Reset everything:**
   ```
   /function mods/disable_all
   ```

### Can't run functions?

- Make sure you're an operator/admin
- Check server.properties has `enable-command-blocks=true`
- Verify the function names are spelled correctly

## Server Admin Commands

```mcfunction
# Initialize on server start
/function init

# Show mod menu
/function menu

# Apply mod to all players
/execute @a ~ ~ ~ function mods/fly_through_walls

# Remove all mods from player
/function mods/disable_all

# Reload all functions
/reload
```

## Updating the Add-On

1. Download the latest version
2. Delete old packs from your server
3. Upload new packs
4. Reload the world: `/reload`
5. Reinitialize: `/function init`

## Support & Issues

For issues:
1. Check the Troubleshooting section
2. Verify all files are in correct locations
3. Ensure server is updated to latest Bedrock version
4. Try `/reload` command
5. Check server logs for errors

## Compatibility

- **Minecraft Bedrock Edition**: 1.20.0+
- **Java Edition**: Not compatible (use mods/plugins instead)
- **Realms**: Fully supported
- **Dedicated Servers**: Fully supported
- **Windows 10/11**: Supported
- **iOS/Android**: Supported (via Realms)
- **Nintendo Switch/Xbox**: Supported (via Realms)

## Performance Notes

- Effects may impact performance on low-end devices
- Disable mods when not needed
- Use `disable_all` function to clear all effects
- Monitor server performance with `/debug start/stop`

## License

Free to use and modify for personal and server use.

## Credits

Minecraft Client GUI Add-On
Built with Minecraft Bedrock Edition API

---

**Enjoy your enhanced Minecraft experience!** ⛏️
