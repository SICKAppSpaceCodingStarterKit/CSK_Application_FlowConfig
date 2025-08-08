# Changelog
All notable changes to this project will be documented in this file.

## Release 2.6.1

### Bugfix
- Legacy bindings of ValueDisplay elements within UI did not work if deployed with VS Code AppSpace SDK
- UI differs if deployed via Appstudio or VS Code AppSpace SDK
- Fullscreen icon of iFrame was visible

## Release 2.6.0

### New features
- Provide version of module via 'OnNewStatusModuleVersion'
- Function 'getParameters' to provide PersistentData parameters
- Function to 'resetModule' to default setup

### Improvements
- New UI design available (e.g. selectable via CSK_Module_PersistentData v4.1.0 or higher), see 'OnNewStatusCSKStyle'
- 'loadParameters' returns its success
- 'sendParameters' can control if sent data should be saved directly by CSK_Module_PersistentData
- Added UI icon and browser tab information

## Release 2.5.0

### Improvements
- Using recursive helper functions to convert Container <-> Lua table
- Update to EmmyLua annotations
- Usage of lua diagnostics
- Documentation updates

## Release 2.4.0

### Improvements
- Using internal moduleName variable to be usable in merged apps instead of _APPNAME, as this did not work with PersistentData module in merged apps.

## Release 2.3.0

### Improvements
- ParameterName available on UI
- Loading only required APIs ('LuaLoadAllEngineAPI = false') -> less time for GC needed
- Update of helper funcs to support 4-dim tables for PersistentData

## Release 2.2.0

### Improvements
- Check if modules is able to run on device (CROWN is available...) at another position - UI and Serves will still be loaded now
- Prepared for all CSK user levels: Operator, Maintenance, Service, Admin
- Changed status type of user levels from string to bool
- Renamed page folder accordingly to module name

## Release 2.1.0

### New features
- Added support for userlevels, required userlevel is Maintenance

## Release 2.0.0

### New features
- Update handling of persistent data according to CSK_PersistentData module ver. 2.0.0

## Release 1.0.0
- Initial commit