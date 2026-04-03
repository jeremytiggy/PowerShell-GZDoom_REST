# Powershell-GZDoom_REST
This is a REST interface for GZDoom External-Pipe edition. 
This allows you to customize Categorized Actions to send data into the GZDoom console from a Streaming Platform like Tikfinity, Streamer.bot, et al.
The actions are loaded at runtime externally from the file 'GZDoom_REST_API_Actions_vx.x.ps1'. This allows for modularity of Action files for different game profiles.
This API, 'GZDoom_REST_vX.X.ps1', was written to be modified further for use with different streaming applications.
In the future, this will include Streamer.bot. Tikfinity was considered first because of community need.

Example Application Directions:
1. Have Tikfinity installed and running.
2. Unzip the example scripts and PK3 file to a directory.
3. Unzip the modified GZDoom External-Pipe edition application to a different directory.
4. Depending on what your set up is...
a. To get started the fastest, use the directory and configuration file as is. The 'gzdoom_portable.ini' contains an autoload instruction for the 'addons' directory. Place the PK3 there to automatically load on startup.
b. If you're using a loader like DoomRunner, add the PK3 to the load order.
c. You can successfully overwrite any GZDoom v4.14.2 installation by just replacing the 'gzdoom.exe' file with the one from the archive, and it will add Pipe functionality. Make sure to add the ExternalPipeSettingsMenu.pk3 from the addons directory to that load order.
5. Start up GZDoom External Pipe edition, wait until the menu loads. Start or load a game.
6. Run the Powershell script 'Tikfinity3rdPartyActions_GZDoom_REST_vx.x.ps1'. Try to start up in normal automatic mode. If unsuccessful, try the debug mode to gather more information.
7. Switch back to Tikfinity. Create or modify an action. Select Third Party Action. You should 'GZDoom Tikfinity API' and a version number.
8. Select the Category and Action from the list.
9. Click Test, and switch back to GZDoom to verify that it works.
10. To add or modify actions, edit the file 'GZDoom_REST_API_Actions_vx.x.ps1'.
11. To find out more about data placeholders, check out the function 'REST_API_Application-Specific-Action' in the main Powershell script.

Version History
 - v1.3: Streamlined Start-up procedure
 - v1.1: Updates to GZDoom External-Pipe 
