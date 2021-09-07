; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!
#define MyAppName 'MarkDown Shell Extensions and Editor'
#define MyAppVersion '1.2.0'

[Setup]
AppName={#MyAppName}
AppPublisher=Ethea S.r.l.
AppVerName={#MyAppName} {#MyAppVersion}
VersionInfoVersion={#MyAppVersion}
AppPublisherURL=https://www.ethea.it/
AppSupportURL=https://github.com/EtheaDev/MarkdownShellExtensions/issues
DefaultDirName={pf}\Ethea\MDShellExtensions
OutputBaseFileName=MDShellExtensionsSetup
DisableDirPage=false
DefaultGroupName=MarkDown Shell Extensions
Compression=lzma
SolidCompression=true
UsePreviousAppDir=false
AppendDefaultDirName=false
PrivilegesRequired=admin
WindowVisible=false
WizardImageFile=WizEtheaImage.bmp
WizardSmallImageFile=WizEtheaSmallImage.bmp
AppContact=info@ethea.it
SetupIconFile=..\Icons\setup.ico
AppID=MDShellExtensions
UsePreviousSetupType=false
UsePreviousTasks=false
AlwaysShowDirOnReadyPage=true
AlwaysShowGroupOnReadyPage=true
ShowTasksTreeLines=true
DisableWelcomePage=False
AppCopyright=Copyright � 2021 Ethea S.r.l.
ArchitecturesInstallIn64BitMode=x64
MinVersion=0,6.0
CloseApplications=force
UninstallDisplayIcon={app}\MDTextEditor.exe

[Languages]
Name: eng; MessagesFile: compiler:Default.isl; LicenseFile: .\License_ENG.rtf
Name: ita; MessagesFile: compiler:Languages\Italian.isl; LicenseFile: .\Licenza_ITA.rtf


[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; Components: Editor

[Files]
Source: "..\Bin32\MDTextEditor.exe"; DestDir: "{app}"; Flags: ignoreversion 32bit; Components: Editor
Source: "..\Bin32\MDShellExtensions32.dll"; DestDir: {app}; Flags : regserver sharedfile noregerror; Components: ShellExtensions
Source: "..\Bin32\libeay32.dll"; DestDir: {app}; Components: ShellExtensions; Flags: ignoreversion 32bit
Source: "..\Bin32\ssleay32.dll"; DestDir: {app}; Components: ShellExtensions; Flags: ignoreversion 32bit

Source: "..\Bin64\MDTextEditor.exe"; DestDir: "{app}"; Flags: ignoreversion 64bit; Components: Editor
Source: "..\Bin64\MDShellExtensions.dll"; DestDir: {app}; Flags : 64bit regserver sharedfile noregerror; Components: ShellExtensions
Source: "..\Bin64\libeay32.dll"; DestDir: {app}; Components: ShellExtensions; Flags: ignoreversion 64bit
Source: "..\Bin64\ssleay32.dll"; DestDir: {app}; Components: ShellExtensions; Flags: ignoreversion 64bit

[Icons]
Name: "{group}\MDTextEditor"; Filename: "{app}\MDTextEditor.exe"; WorkingDir: "{app}"; IconFilename: "{app}\MDTextEditor.exe"; Components: Editor
Name: "{userdesktop}\MDTextEditor"; Filename: "{app}\MDTextEditor.exe"; Tasks: desktopicon; Components: Editor

[Run]
Filename: {app}\MDTextEditor.exe; Description: {cm:LaunchProgram,'MD Text Editor'}; Flags: nowait postinstall skipifsilent; Components: Editor

[Components]
Name: Editor; Description: MarkDown Text Editor; Flags: fixed; Types: custom full
Name: ShellExtensions; Description: MarkDown Shell Extensions (Preview and Thumbnails); Types: custom compact full

[Registry]
Root: "HKCR"; Subkey: ".md"; ValueType: string; ValueData: "Open"; Flags: uninsdeletekey; Components: Editor
Root: "HKCR"; Subkey: "OpenMDEditor"; ValueType: string; ValueData: "MarkDown Text file"; Flags: uninsdeletekey; Components: Editor
Root: "HKCR"; Subkey: "OpenMDEditor\Shell\Open\Command"; ValueType: string; ValueData: """{app}\MDTextEditor.exe"" ""%1"""; Flags: uninsdeletekey; Components: Editor
Root: "HKCR"; Subkey: "OpenMDEditor\DefaultIcon"; ValueType: string; ValueData: "{app}\MDTextEditor.exe,0"; Flags: uninsdeletekey; Components: Editor

[Code]
function InitializeSetup(): Boolean;
begin
   Result:=True;
end;

function GetUninstallString(): String;
var
  sUnInstPath: String;
  sUnInstallString: String;
begin
  sUnInstPath := ExpandConstant('Software\Microsoft\Windows\CurrentVersion\Uninstall\{#emit SetupSetting("AppId")}_is1');
  sUnInstallString := '';
  if not RegQueryStringValue(HKLM, sUnInstPath, 'UninstallString', sUnInstallString) then
    RegQueryStringValue(HKCU, sUnInstPath, 'UninstallString', sUnInstallString);
  Result := sUnInstallString;
end;

function IsUpgrade(): Boolean;
var
  s : string;
begin
  s := GetUninstallString();
  //MsgBox('GetUninstallString '+s, mbInformation, MB_OK);
  Result := (s <> '');
end;

function UnInstallOldVersion(): Integer;
var
  sUnInstallString: String;
  iResultCode: Integer;
begin
// Return Values:
// 1 - uninstall string is empty
// 2 - error executing the UnInstallString
// 3 - successfully executed the UnInstallString

  // default return value
  Result := 0;

  // get the uninstall string of the old app
  sUnInstallString := GetUninstallString();
  if sUnInstallString <> '' then begin
    sUnInstallString := RemoveQuotes(sUnInstallString);
    if Exec(sUnInstallString, '/SILENT /NORESTART /SUPPRESSMSGBOXES', '', SW_HIDE, ewWaitUntilTerminated, iResultCode) then
      Result := 3
    else
      Result := 2;
  end else
    Result := 1;
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
  if (CurStep=ssInstall) then
  begin
    if (IsUpgrade()) then
    begin
      MsgBox(ExpandConstant('An older version of "markDown Shell Extensions"  was detected. The uninstaller will be executed...'), mbInformation, MB_OK);
      UnInstallOldVersion();
    end;
  end;
end;