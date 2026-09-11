# Initialize the Client GUI Addon
# Run this function on server startup

title @a subtitle \"§6Minecraft Client GUI Loaded!\"
broadcast \"§a>> Client GUI Add-On Enabled! Use /function client_gui/menu to access mods.\"

# Create scoreboard for mod tracking
scoreboard objectives add mod_state dummy \"Mod States\"
scoreboard objectives add player_level level
