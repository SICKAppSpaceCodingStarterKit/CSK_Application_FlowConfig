document.addEventListener('sopasjs-ready', () => {

  const page_CSK_Welcome = document.querySelector('div.sopasjs-ui-navbar-wrapper > div > ul > li:nth-child(3) > a > i');
  page_CSK_Welcome.classList.remove('fa-file');
  page_CSK_Welcome.classList.add('fa-home');

    const page_FlowConfig_Frame = document.querySelector('div.sopasjs-ui-navbar-wrapper > div > ul > li:nth-child(4) > a > i');
  page_FlowConfig_Frame.classList.remove('fa-file');
  page_FlowConfig_Frame.classList.add('fa-share-alt');

  const page_Modules = document.querySelector('div.sopasjs-ui-navbar-wrapper > div > ul > li:nth-child(5) > a > i');
  page_Modules.classList.remove('fa-file');
  page_Modules.classList.add('fa-puzzle-piece');

  const page_Logger = document.querySelector('div.sopasjs-ui-navbar-wrapper > div > ul > li:nth-child(7) > a > i');
  page_Logger.classList.remove('fa-file');
  page_Logger.classList.add('fa-comment-o');

  const page_NetworkConfig = document.querySelector('div.sopasjs-ui-navbar-wrapper > div > ul > li:nth-child(8) > a > i');
  page_NetworkConfig.classList.remove('fa-file');
  page_NetworkConfig.classList.add('fa-plug');

  const page_Power = document.querySelector('div.sopasjs-ui-navbar-wrapper > div > ul > li:nth-child(9) > a > i');
  page_Power.classList.remove('fa-file');
  page_Power.classList.add('fa-bolt');

  const page_DeviceScanner = document.querySelector('div.sopasjs-ui-navbar-wrapper > div > ul > li:nth-child(10) > a > i');
  page_DeviceScanner.classList.remove('fa-file');
  page_DeviceScanner.classList.add('fa-search');

  const page_FileManager = document.querySelector('div.sopasjs-ui-navbar-wrapper > div > ul > li:nth-child(11) > a > i');
  page_FileManager.classList.remove('fa-file');
  page_FileManager.classList.add('fa-files-o');

  const page_PersistentData = document.querySelector('div.sopasjs-ui-navbar-wrapper > div > ul > li:nth-child(12) > a > i');
  page_PersistentData.classList.remove('fa-file');
  page_PersistentData.classList.add('fa-floppy-o');

  const page_FirstLabel = document.querySelector('div.sopasjs-ui-navbar-wrapper > div > ul > li:nth-child(2)');
  const page_App = document.querySelector('div.sopasjs-ui-navbar-wrapper > div > ul > li:nth-child(13)');
  const page_Setup = document.querySelector('div.sopasjs-ui-navbar-wrapper > div > ul > li:nth-child(14) > a');

  page_FirstLabel.remove();
  page_App.remove();
  page_Setup.remove();

  setTimeout(() => {
    document.title = 'SICK AppSpace CSK'
  }, 500);
})