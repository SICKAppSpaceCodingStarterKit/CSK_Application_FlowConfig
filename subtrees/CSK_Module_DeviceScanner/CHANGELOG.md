# Changelog
All notable changes to this project will be documented in this file.

## Release 2.1.1

### Bugfix
- Legacy bindings of ValueDisplay elements within UI did not work if deployed with VS Code AppSpace SDK
- UI differs if deployed via Appstudio or VS Code AppSpace SDK
- Fullscreen icon of iFrame was visible

## Release 2.1.0

### New features
- Provide version of module via 'OnNewStatusModuleVersion'
- Check if features of module can be used on device and provide this via 'OnNewStatusModuleIsActive' event / 'getStatusModuleActive' function

### Improvements
- New UI design available (e.g. selectable via CSK_Module_PersistentData v4.1.0 or higher), see 'OnNewStatusCSKStyle'
- Added UI icon and browser tab information

### Bugfix
- No deselection of device via UI table

## Release 2.0.0

### Improvements
- renamed 'setSubnetMaks' to 'setSubnetMask' / 'OnNewDhcpStatus' to 'OnNewDHCPStatus' / 'getDeviceListJson' to 'getDeviceListJSON'

## Release 1.8.0

### Improvements
- Minor code restructure
- Update to EmmyLua annotations
- Usage of lua diagnostics
- Documentation updates

## Release 1.7.1

### Bugfix
- Removed internal docu of functions if manifest docu is available in parallel
- Added missing docu

## Release 1.7.0

### Improvements
- Using internal moduleName variable to be usable in merged apps instead of _APPNAME, as this did not work with PersistentData module in merged apps.

## Release 1.6.2

### Improvements
- Naming of UI elements and adding some mouse over info texts
- Appname added to log messages
- Minor edits

## Release 1.6.2

### Improvements
- Minor code edits / docu updates

## Release 1.6.0

### Improvements
- Loading only required APIs ('LuaLoadAllEngineAPI = false') -> less time for GC needed
- Updated documentation

## Release 1.5.0

### Improvements
- Prepared for all CSK user levels: Operator, Maintenance, Service, Admin
- Changed status type of user levels from string to bool
- Renamed page folder accordingly to module name
- Updated documentation

## Release 1.4.0

### New features
- Added support for userlevels

## Release 1.3.0

### Improvement
- Add function scope limitiation infos to UI
- Changed "OnNewSearchActive" to "OnNewScanStatus" to respond success of setting new config
- Clear device list on UI ("OnNewDeviceTable") if new scan is triggered
- No auto scan after setting new config

## Release 1.2.1

### Bugfix
- Documentation added (incl. API html-file)
- Minor renaming

## Release 1.2.0

### Improvements
- New function to load/save parameters with SubContainer

## Release 1.1.0

### Improvements
- Interface to scan now selectable
- Show interface where device was found on

## Release 1.0.0
- Initial commit