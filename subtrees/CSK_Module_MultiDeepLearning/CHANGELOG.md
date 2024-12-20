# Changelog
All notable changes to this project will be documented in this file.

## Release 5.0.0

### New features
- Supports FlowConfig feature to set images to process / provide results
- Provide version of module via 'OnNewStatusModuleVersion'
- Function 'getParameters' to provide PersistentData parameters
- Check if features of module can be used on device and provide this via 'OnNewStatusModuleIsActive' event / 'getStatusModuleActive' function
- Function to 'resetModule' to default setup

### Improvements
- New UI design available (e.g. selectable via CSK_Module_PersistentData v4.1.0 or higher), see 'OnNewStatusCSKStyle'
- check if instance exists if selected
- check if models exist in selected folder
- 'loadParameters' returns its success
- 'sendParameters' can control if sent data should be saved directly by CSK_Module_PersistentData
- Changed log level of some messages from 'info' to 'fine'
- Sample images converted to JPG
- Added UI icon and browser tab information

### Bugfix
- Never deregistered from events
- Error if module is not active but 'getInstancesAmount' was called
- processImageNUM did not work after deregistering from event to process images

## Release 4.1.0

### New features
- Added event based usage of the handleOnNewImageProcessingScores function

### Improvements
- Merged function scope of 'processImageWithScoresNUM' into 'processImageNUM' (most contend was identical), please always use 'processImageNUM'
- Check for device and firmware to prevent incompatibilities
- Adapted level of log messages

## Release 4.0.0

### Improvements
- Renamed abbreviations (Id-ID)
- Renamed 'OnNewSelectedObject' to 'OnNewSelectedInstance'
- Using recursive helper functions to convert Container <-> Lua table

## Release 3.3.0

### Improvements
- Update to EmmyLua annotations
- Usage of lua diagnostics
- Documentation updates

## Release 3.2.0

### New features
- Event "OnNewFullResultWithImageNUM" provides content regarding measured result, class, score and image

### Improvements
- Using internal moduleName variable to be usable in merged apps instead of _APPNAME, as this did not work with PersistentData module in merged apps.

## Release 3.1.0

### New features
- Making use of dynamic viewerIDs -> only one single viewer for all instances
- Configuration of "RegisteredEvent" now also available on UI
- Possible to forward image incl. result (e.g. to save it with result name on FTP) (setForwardImage, OnNewResultWithImageNUM)
- New function to reset instances

### Improvements
- Using now "setInstance" instead of "setSelectedDnnObject" function (naming issue)
- Naming of UI elements and adding some mouse over info texts
- Appname added to log messages
- Renamed page folder accordingly to module name
- Loading only required APIs ('LuaLoadAllEngineAPI = false') -> less time for GC needed
- Update of helper funcs to support 4-dim tables for PersistentData
- Renamed event "OnNewParametersName" to "OnNewParameterName" (consistent to other modules)
- Added ENUM
- Minor edits, docu, added log messages

### Bugfix
- UI events notified after pageLoad after 300ms instead of 100ms to not miss

## Release 3.0.0

### New features
- Compatible with PersistentData ver 3.0.0 to save camera instances within Parameter binary file
- PersistentData Parametername now configurable via UI
- Possible to add new cameras during runtime (see "addInstance() )

### Improvements
- Renaming of "objects" to "instances" (e.g. multiRemoteCamerasObjects -> multiRemoteCameras_Instances)
- Events/Functions for instances are created now dynamically (sample entries available in docu)
- Forwarding thread internal results to UI via "OnNewValueToForward[NUM]"-event
- added all UserLevels

### Bugfix
- UI did not work

## Release 2.1.0

### New features
- Added an second processing function to get scores for all classes
- Added support for user levels, required user level for the whole UI is Maintenance

## Release 2.0.0

### New features
- Update handling of persistent data according to CSK_PersistentData module ver. 2.0.0

## Release 1.0.0
- Initial commit