# Changelog
All notable changes to this project will be documented in this file.

## Release 4.2.1

### Bugfix
- Legacy bindings of ValueDisplay elements within UI did not work if deployed with VS Code AppSpace SDK
- UI differs if deployed via Appstudio or VS Code AppSpace SDK
- Fullscreen icon of iFrame was visible
- Status change of "Internal log handling" was not logged

## Release 4.2.0

### New features
- Provide version of module via 'OnNewStatusModuleVersion'
- Function 'getParameters' to provide PersistentData parameters
- Check if features of module can be used on device and provide this via 'OnNewStatusModuleIsActive' event / 'getStatusModuleActive' function

### Improvements
- New UI design available (e.g. selectable via CSK_Module_PersistentData v4.1.0 or higher), see 'OnNewStatusCSKStyle'
- 'loadParameters' returns its success
- 'sendParameters' can control if sent data should be saved directly by CSK_Module_PersistentData
- Changed log level of some messages from 'info' to 'fine'
- Added UI icon and browser tab information

## Release 4.1.0

### Improvements
- Added log level 'FINE', 'FINER', 'FINEST'

## Release 4.0.0

### Improvements
- Renamed function 'reloadLogsInUi' to 'reloadLogsInUI'
- Using recursive helper functions to convert Container <-> Lua table

## Release 3.3.0

### Improvements

- Update to EmmyLua annotations
- Usage of lua diagnostics
- Documentation updates
- Load and show temp log on UI by page reload if FileSink is disabled and callbackSink is active

## Release 3.2.0

### New features
- setCallbackSinkActive: Function to configure if internal callback sink should be used to process incoming log messages

### Improvements
- Minor code restructure to separate temp log and file log
- Module name added to log message

## Release 3.1.0

### Improvements
- Minor UI edits
- Using internal moduleName variable to be usable in merged apps instead of _APPNAME, as this did not work with PersistentData module in merged apps.

## Release 3.0.0

### New features
- App name changed ('CSK_1stModule_Logger') to start as first app (starting order is different on SAE, so logs of global scope in other CSK modules were missed)
- Setting max size of the logging file

### Improvements
- Manual refresh of Log messages in UI in FileSinkMode to prevent continuous load of (especially bigger) log file
- Naming of UI elements and adding some mouse over info texts
- App name added to log messages
- Added ENUM
- Minor edits, docu, added log messages

### Bugfix
- Internal log messages in Controller-script were not recognized
- UI events notified after pageLoad after 300ms instead of 100ms to not miss

## Release 2.0.0
- Initial commit

### New features
- Make configuration parameters editable via Crown/UI (filepath, log level, setConsoleSinkEnabled, fileSinkActive, attachToEngineLogger)
- Possible to save configuration parameters as persistent data
- Handling of persistent data according to CSK_PersistentData module ver. 2.0.0

## Release 1.0.0
- Initial commit
