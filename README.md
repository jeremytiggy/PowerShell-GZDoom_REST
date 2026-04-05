# Powershell-GZDoom_REST
This is a REST interface for GZDoom External-Pipe edition. 
This allows you to customize Categorized Actions to send data into the GZDoom console from a Streaming Platform like Tikfinity, Streamer.bot, et al.
The actions are loaded at runtime externally from the file 'GZDoom_REST_API_Actions_vx.x.ps1'. This allows for modularity of Action files for different game profiles.
This API, 'GZDoom_REST_vX.X.ps1', was written to be modified further for use with different streaming applications.
In the future, this will include Streamer.bot. Tikfinity was considered first because of community need.

Start-up Instructions:

1. Requires a functioning, configured installation of Tikfinity. Start it up, but do not go Live.
2. Run the Installer, make sure "Create desktop shortcuts" is selected.
3. Using it's desktop shortcut, Open the special version of GZDoom External Pipe v4.14.2 . Wait until it is fully loaded, all the way to the menu.
4. Using it's desktop shortcut, open up Tikfinity-GZDoom (black and white icon with "TFGZ" in the Doom 2016 font).
5. When the program asks you of you'd like to start up in debug or normal, hit enter.
6. Wait until it finishes loading and shows magenta text "Waiting for incoming HTTP requests..."
7. The system is now ready to receive commands from Tikfinity

Tikfinity Third Party Actions test (TFGZ application MUST be running)
1. Create or modify an Action.
2. Scroll down to the checkbox for "Third Party Action"
3. Select the checkbox.
4. "Connected with GZDom Tikfinity API" should appear to the right.
5. Select a category and action. For example, "Summon Friendly DOOM Monster In-Front-Of/Nearby Player", "Cacodemon".
6. Click the "> Test" button below the selection.
7. Switch back to GZDoom, and see if the action was successful.

Version History
 - v1.3: Streamlined Start-up procedure
 - v1.1: Updates to GZDoom External-Pipe 
