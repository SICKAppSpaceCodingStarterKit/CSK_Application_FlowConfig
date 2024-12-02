--MIT License
--
--Copyright (c) 2023 SICK AG
--
--Permission is hereby granted, free of charge, to any person obtaining a copy
--of this software and associated documentation files (the "Software"), to deal
--in the Software without restriction, including without limitation the rights
--to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
--copies of the Software, and to permit persons to whom the Software is
--furnished to do so, subject to the following conditions:
--
--The above copyright notice and this permission notice shall be included in all
--copies or substantial portions of the Software.
--
--THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
--IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
--FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
--AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
--LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
--OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
--SOFTWARE.

--**************************************************************************
--**********************Start Global Scope *********************************
--**************************************************************************
local welcomeAppAvailable = SICK_WelcomeApp ~= nil or false -- Check if WelcomeApp runs on the device

-- ************************ UI Events Start ********************************
Script.serveEvent('CSK_Application_FlowConfig.OnNewStatusWelcomeAppAvailable', 'FlowConfigApp_OnNewStatusWelcomeAppAvailable')
Script.serveEvent('CSK_Application_FlowConfig.OnNewStatusCSKStyle', 'FlowConfigApp_OnNewStatusCSKStyle')
Script.serveEvent('CSK_Application_FlowConfig.OnNewStatusModuleVersion', 'FlowConfigApp_OnNewStatusModuleVersion')
-- ************************ UI Events End **********************************

local styleForUI = 'None' -- Optional parameter to set UI style
local moduleVersion = Engine.getCurrentAppVersion() -- Version of module

local tmr = Timer.create()
tmr:setExpirationTime(100)
tmr:setPeriodic(false)

--**************************************************************************
--********************** End Global Scope **********************************
--**************************************************************************
--**********************Start Function Scope *******************************
--**************************************************************************

local function handleOnExpired()
  Script.notifyEvent("FlowConfigApp_OnNewStatusCSKStyle", styleForUI)
  Script.notifyEvent("FlowConfigApp_OnNewStatusWelcomeAppAvailable", welcomeAppAvailable)
  Script.notifyEvent("FlowConfigApp_OnNewStatusModuleVersion", 'v' .. moduleVersion)
end
Timer.register(tmr, 'OnExpired', handleOnExpired)

--- Function to react on UI style change
local function handleOnStyleChanged(theme)
  styleForUI = theme
  Script.notifyEvent("FlowConfigApp_OnNewStatusCSKStyle", styleForUI)
end
Script.register('CSK_PersistentData.OnNewStatusCSKStyle', handleOnStyleChanged)

local function pageCalled()
  tmr:start()
  return ''
end
Script.serveFunction("CSK_Application_FlowConfig.pageCalled", pageCalled)

local function main()
  if not welcomeAppAvailable then
    local suc = File.copy('/resources/CSK_Application_FlowConfig/MainApp.bin', '/public/HomeScreen/MainApp.bin')
    if suc then
      CSK_SensorAppOverview.uploadImage(true)
    end
    CSK_SensorAppOverview.setMainAppName('CSK_Application_FlowConfig')

    if CSK_PersistentData then
      CSK_PersistentData.setUIStyle('CSK_Style')
    end
  end
end
Script.register("Engine.OnStarted", main)

--**************************************************************************
--**********************End Function Scope *********************************
--**************************************************************************