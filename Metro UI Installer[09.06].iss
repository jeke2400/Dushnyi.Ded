// - Metro UI Installer
// - FMXInno.dll 06-June-2024
// - audiofeel
// - Last Edit: 09-June-2024

#define GameName       "GTA ViceCity"
#define MyAppPublisher "RePack by DarkSTALKER"
#define InstallDir     "GTA ViceCity ModEdition"
#define MyAppVersion   "1.13.7"
#define MyAppURL       "https://rbds.my1.ru"

#define Genre          "Action"
#define NeedSize       "7600"
#define UnpackNeedSize "1048"
#define ReleaseDate    "05.07.2024"
#define OS             "Windows 7 / 8 / 10"
#define DX             "11"
#define CPU            "Intel(R) Core(TM) i5"
#define RAM            "2048"
#define GPURAM         "2048"
#define GPU            "GeForce GT 1030"
#define Splash
#define Music
//#define LockScreen
          #define GameExe1
#ifdef GameExe1
#define GameExe1Name   GameName
#define GameExe1File   "Vice City.exe"
#endif

#define Redist1
#ifdef Redist1
#define Redist1Name    "DirectX"
#define Redist1Path    "Redist/DirectX-11.exe"
#define Redist1Key     "/Q"
#endif

#define Redist2
#ifdef Redist2
#define Redist2Name    "Microsoft Visual C++ x64"
#define Redist2Path    "Redist/Microsoft Visual C++ x64.exe"
#define Redist2Key     "/Q"
#endif

#define Font1 "AttackGraffiti.ttf"
#define Font1Name "AttackGraffiti"
#define Font2 "mexcellent.ttf"
#define Font2Name "mexcellent"
#define MyIconFile "GTAVICE.ico"
#define srep

#define DiskPassword   "123test123"

#define Data1          "data1.bin"
#define Data2          "data2.bin"
#define Data3          "data3.bin"
#define Data4          "data4.bin"

#include               "Modules\FMXInnoHandle.iss"

[Setup]
AllowNoIcons=Yes
AppId={{11EE1DE3-698E-4CB9-956B-BFDF626D2587}
AppName={#GameName}
AppPublisher={#MyAppPublisher}
AppVersion={#MyAppVersion}
Compression=lzma2/ultra64
DefaultDirName={sd}\Games\{#InstallDir}
DefaultGroupName={#MyAppPublisher}\{#GameName}
DirExistsWarning=No
DisableProgramGroupPage=False
DisableReadyPage=True
DisableWelcomePage=True
ExtraDiskSpaceRequired={#DoCalculationExternal(NeedSize + '*1024*1024')}
InternalCompressLevel=ultra64
OutputBaseFilename=GTA ViceCity
//SetupIconFile=F:\Для Репаков\Проги\RePack material\Work\Files\MyIconFile\GTAVICE.ico
ShowLanguageDialog=True
SolidCompression=False
UninstallDisplayIcon={app}\{#GameExe1File}
UninstallDisplayName={#GameName}
UninstallFilesDir={app}\Uninstall
UsePreviousAppDir=False
UsePreviousGroup=False
UsePreviousLanguage=False

[Files]
Source: "Modules\FMXInno.dll"; Flags: dontcopy 
Source: "Files\icn\*"; Flags: dontcopy 
Source: "Files\img\*"; Flags: dontcopy 
Source: "Files\txt\infoRU.txt"; Flags: dontcopy ; Languages: "russian"
Source: "Files\txt\longinfoRU.txt"; Flags: dontcopy ; Languages: "russian"
Source: "Files\txt\infoEN.txt"; Flags: dontcopy ; Languages: "english"
Source: "Files\txt\longinfoEN.txt"; Flags: dontcopy ; Languages: "english"
Source: "Files\Font\AttackGraffiti.ttf"; Flags: dontcopy
Source: "Files\Font\mexcellent.ttf"; Flags: dontcopy
Source: "Files\Images\Cursor\Cur.ani"; DestDir: "{tmp}"; Flags: dontcopy;
#ifdef Music
  Source: "Files\music\*"; Flags: dontcopy 
#endif
#ifdef Splash
  Source: "Files\splash\*"; Flags: dontcopy 
#endif
Source: "Files\style\*"; Flags: dontcopy 
Source: "Files\txt\*"; Flags: dontcopy 
Source: "Plugin\FluentApi\FluentApi.dll"; DestDir: {app}\Uninstall

Source: "Unpack\english.ini"; Flags: dontcopy; Languages: "english"
Source: "Unpack\russian.ini"; Flags: dontcopy; Languages: "russian"
Source: "Unpack\arc.ini"; Flags: dontcopy 
Source: "Unpack\cls.ini"; Flags: dontcopy 
Source: "Unpack\facompress.dll"; Flags: dontcopy 
Source: "Unpack\unarc.dll"; Flags: dontcopy 
#ifdef srep
  Source: "Unpack\srep\cls-srep.dll"; Flags: dontcopy 
  Source: "Unpack\srep\cls-srep_x64.exe"; Flags: dontcopy 
#endif

[Icons]
#ifdef GameExe1
  Name: "{group}\{#GameExe1Name}"; Filename: "{app}\{#GameExe1File}"; Check: CreateShortcuts2
  Name: "{commondesktop}\{#GameExe1Name}"; Filename: "{app}\{#GameExe1File}"; Check: CreateShortcuts1
#endif
Name: {group}\Uninstall; Filename: {uninstallexe}; Flags: createonlyiffileexists

[Languages]
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[CustomMessages]
russian.ALabel2=Удалить игру
russian.ALabel3=Характеристики
russian.ALabel4=Перейти на страницу установки
russian.ALabel7=Перейти на официальный сайт
russian.ALabel8=- Описание -
russian.ALabel9=- Скриншоты -
russian.ALabel10=Проверка системных требований
russian.ALabel11=Рекомендуемые системные требования для игры и характеристики Вашего ПК и Windows
russian.ALabel12=Рекомендуемая
russian.ALabel13=Рекомендуемые системные требования
russian.ALabel14=Ваша конфигурация
russian.ALabel15=Характеристика устройства и Windows
russian.ACombineText1=ОС:
russian.ACombineText2=DirectX:
russian.ACombineText3=Память:
russian.ACombineText4=Видео Память:
russian.ACombineText5=Процессор:
russian.ACombineText6=Графика:
russian.ALabel16=Выберите папку для установки
russian.DirBrowse=Выберите папку из списка и нажмите "ОК"
russian.DirBrowseNF=Новая папка
russian.DirBrowseCancel=Отмена
russian.ALabel17=Чтобы установить {#GameName} на другой диск или в другую папку, кликните значок поиска и укажите путь для установки
russian.ALabel18=Информация о диске
russian.ALabel19A=Требуемое место :
russian.ALabel19B=(Для распаковки необходимо около:
russian.ALabel20=Доступное место :
russian.ALabel20A=(Останется место после установки:
russian.ALabel21=Выбор дополнительных задач и создание ярлыков
russian.ALabel22=Чтобы изменить ярлык в меню "Пуск", кликните значок поиска и укажите местоположение для ярлыка в меню "Пуск"
russian.ALabel23=Настройки дополнительных задач и ярлыков
russian.ALabel24=Создать ярлык на Рабочем столе
russian.ALabel25=Создать ярлык в меню "Пуск"
russian.ALabel26=Установка основных файлов
russian.ALabel27=Осталось:
russian.ALabel28=Прошло:
russian.AMemo3=Выполняем основную установку
russian.AMemo3A=Извлекается
russian.AMemo3B=Создание ярлыков и установка файлов конфигурации
russian.ALabel29=Завершение установки
russian.ALabel29ERR=Ошибка при установке
russian.ALabel30=Игра успешно установлена
russian.ALabel30ERR=Извините, что-то пошло не так
russian.ALabel31=Для запуска игры
russian.ALabel31ERR=Вы можете выполнить повторный запуск, ниже приведены общие причины
russian.ALabel31A=• Используйте ярлык на Рабочем столе
russian.ALabel31AERR=• Антивирус удалил важный установочный файл
russian.ALabel31B=• или в папке Меню "Пуск"
russian.ALabel31BERR=• Возможно, это ошибка Вашего компьютера
russian.ALabel31C=• Вы можете перейти в каталог игры, чтобы запустить ее
russian.ALabel31CERR=• Поврежденный или отсутствующий архив
russian.ALabel32=Время установки:
russian.ALabel32ERR=Нажмите кнопку повторного запуска, что бы перезапустить установку
russian.ALabel33=Хотите закрыть этот инсталятор?
russian.ALabel34=Вы перешли на страницу отмены
russian.ALabel34A=• Будут удалены все установленные данные
russian.ALabel34B=• Будут удалены все настройки, связанные с игрой
russian.ALabel34C=• Вы можете установить {#GameName} позже, если захотите
russian.WebERR=В интернете Вас не хватает. Давайте вернем Вас в интернет! Проверьте сетевые кабели, модем и маршрутизаторы
russian.UninsERR=Эта версия {#GameName} не установлена на Вашем компьютере или удалена
russian.ISArcERR=ISArcEx Error%nНе найдено ни одного архива для распаковки

english.ALabel2=Remove this game
english.ALabel3=Specification
english.ALabel4=Get to installation page
english.ALabel7=Go to Official Site
english.ALabel8=- Description -
english.ALabel9=- ScreenShot -
english.ALabel10=This Game should work on this PC
english.ALabel11=Check the minimum requirement to play. For the best experience, your pc should meet recommended requirement
english.ALabel12=Recommended
english.ALabel13=Recommended system requirements
english.ALabel14=Your configuration
english.ALabel15=Device and Windows features
english.ACombineText1=OS:
english.ACombineText2=DirectX:
english.ACombineText3=Memory:
english.ACombineText4=Video Memory:
english.ACombineText5=Processor:
english.ACombineText6=Graphics:
english.ALabel16=Pick out folder for installation location
english.DirBrowse=Select a folder in the list below, then click OK
english.DirBrowseNF=New folder
english.DirBrowseCancel=Cancel
english.ALabel17=To install {#GameName} in different drive or folder, click search icon and set another folder for installation
english.ALabel18=Disk Description
english.ALabel19A=Required space :
english.ALabel19B=(Approximately size needed for installation :
english.ALabel20=Free space :
english.ALabel20A=(After installation you have :
english.ALabel21=Configuration of Task and Shortcut
english.ALabel22=To change startmenu shortcut, click search icon and set location for startmenu shortcut
english.ALabel23=Task and Shortcut Settings
english.ALabel24=Create Desktop icon
english.ALabel25=Create Startmenu icon
english.ALabel26=Perfoming main installation
english.ALabel27=Remaining Time:
english.ALabel28=Elapsed Time:
english.AMemo3=Perfoming main installation
english.AMemo3A=Extracting
english.AMemo3B=Creating shortcut and installing config files
english.ALabel29=Completing the installation
english.ALabel29ERR=Error while installing
english.ALabel30=Successfully Finished
english.ALabel30ERR=Sorry, Something went wrong
english.ALabel31=Let me help you to run the game
english.ALabel31ERR=Let me help you to re-run the installation correctly - Common reasons are below
english.ALabel31A=• You can run the game by clicking desktop shortcut
english.ALabel31AERR=• Anti-virus removed my important installation file
english.ALabel31B=• You can run it via startmenu shortcut
english.ALabel31BERR=• May be error from your pc
english.ALabel31C=• Also you can go to the game directory to run it
english.ALabel31CERR=• Corrupted or missing installation file
english.ALabel32=Total time taken is :
english.ALabel32ERR=Click the Re-run button restart the installer
english.ALabel33=Wanna close this installer?
english.ALabel34=You entered into close action
english.ALabel34A=• Which will erase installed data
english.ALabel34B=• Which will removes registry and other game regarding setting
english.ALabel34C=• But you can install this version of {#GameName} later, if u want
english.WebERR=There are not enough of you on the Internet. Let's get you back online! Check network cables, modems, and routers
english.UninsERR=This version of {#GameName} is not installed on your computer or has been deleted
english.ISArcERR=ISArcEx Error%nNo archive was found for unpacking

[UninstallDelete]
Type: filesandordirs; Name: "{app}"

[Code]
var
  AForm: FForm;
#ifdef Splash
  ASplashScreen: FSplashScreen;
#endif
#ifdef Music
  MusicPlayer: IXBass;
#endif
  UninstallExe: String;
  AImage: array [1..31] of FImage;
  AGaussianBlur: FGaussianBlur;
  ARectangle: array [1..37] of FRectangle;
  ALabel: array [1..36] of FLabel;
  ALayout: array [1..11] of FLayout;
  AMemo: array [1..3] of FMemo;
  AVertScrollBox: array [1..2] of FVertScrollBox;
  ALine: array [0..6] of FLine;
  BLine: array [0..6] of FLine;
  AOSInfo: FOSInfo;
  ACpuUsage: FCpuUsage;
  ARamUsage: FRamUsage;
  AGPUInfo: FGPUInfo;
  ACombineText: array [1..12] of FCombineText;
  ACircle: array [1..4] of FCircle;
  AEdit: array [1..2] of FEdit;
  AFluentDirBrowse: FFluentDirBrowse;
  AFluentStartBrowse: FFluentStartBrowse;
  ADiskUsage: FDiskUsage;
  ASwitch: array [1..3] of FSwitch;
  AListBox: FListBox;
  AListBoxItem: array [1..2] of FListBoxItem;
  AProgressBar: FProgressBar;
  ACustomFluentWindow: FCustomFluentWindow;
  AFillRGBEffect: FFillRGBEffect;
  AButton: FButton;
#ifdef LockScreen
  ALockScreen: FLockScreen;
#endif

procedure FMXInnoInit;
var
  i: Integer;
begin
  AForm:= InitFormHandle;
#ifdef Splash
  ASplashScreen:= InitSplashHandle;
#endif
#ifdef Music
  MusicPlayer:= InitXBass;
#endif
  for i:= 1 to 31 do
    AImage[i]:= InitImageHandle;
  AGaussianBlur:= InitGaussinaBlurHandle;
  for i:= 1 to 37 do
    ARectangle[i]:= InitRectangleHandle;
  for i:= 1 to 36 do
    ALabel[i]:= InitLabelHandle;
  for i:= 1 to 11 do
    ALayout[i]:= InitLayoutHandle;
  for i:= 1 to 3 do
    AMemo[i]:= InitMemoHandle;
  for i:= 1 to 2 do
    AVertScrollBox[i]:= InitVertScrollBoxHandle;
  for i:= 0 to 6 do
    ALine[i]:= InitLineHandle;
  for i:= 0 to 6 do
    BLine[i]:= InitLineHandle;
  AOSInfo:= InitOSInfo;
  ACpuUsage:= InitCpuUsage;
  ARamUsage:= InitRamUsage;
  AGPUInfo:= InitGPUInfo;
  for i:= 1 to 12 do
    ACombineText[i]:= InitCombineTextHandle;
  for i:= 1 to 4 do
    ACircle[i]:= InitCircleHandle;
  for i:= 1 to 2 do
    AEdit[i]:= InitEditHandle;
  AFluentDirBrowse:= InitFluentDirBrowse;
  AFluentStartBrowse:= InitFluentStartBrowse;
    ADiskUsage:= InitDiskUsage;
  for i:= 1 to 3 do
    ASwitch[i]:= InitSwitchHandle;
  AListBox:= InitListBoxHandle;
  for i:= 1 to 2 do
    AListBoxItem[i]:= InitListBoxItemHandle;
  AProgressBar:= InitProgressBarHandle;
  ACustomFluentWindow:= InitCustomFluentWindow;
  AFillRGBEffect:= InitFillRGBEffectHandle;
  AButton:= InitButtonHandle;
#ifdef LockScreen
  ALockScreen:= InitLockScreen;
#endif
end;

function InitializeSetup: Boolean;
begin
  FMXInnoInit;
  ExtractTemporaryFile('{#Font1}');
  ExtractTemporaryFile('{#Font2}');
  AddFontResource2(ExpandConstant('{tmp}\{#Font1}'));
  AddFontResource2(ExpandConstant('{tmp}\{#Font2}'));
  Result:= True;
end;

function ShellExecute(hwnd: HWND; lpOperation: string; lpFile: string; lpParameters: string; lpDirectory: string; nShowCmd: Integer): THandle;
  external 'ShellExecuteW@shell32.dll stdcall';

function ProgressCallback(OverallPct, CurrentPct, DiskTotalMB, DiskExtractedMB: Integer; DiskName, CurrentFile, RemainsTimeS, ElapsedTimeS, CurSpeed, AvgSpeed: WideString): longword;
var
  S: WideString;
begin
  AProgressBar.Value(OverallPct);
  ALabel[27].Text(CustomMessage('ALabel27') + ' ' + RemainsTimeS);
  ALabel[28].Text(CustomMessage('ALabel28') + ' ' + ElapsedTimeS);
  ALabel[32].Text(CustomMessage('ALabel32') + ' ' + ElapsedTimeS);
  S:= CustomMessage('AMemo3A') + ' ' + CurrentFile;
  if (length(CurrentFile) > 0) and (AMemo[3].LineStrings(AMemo[3].LineCount - 1) <> S) then
  begin
    AMemo[3].AddLine(S);
  end;
  Result:= ISArcExCancel;
end;

procedure ShowMessage(const Title: String);
begin
  ALabel[36].Text(Title);
  ACustomFluentWindow.Show;
  SetWin11FormCorners(ACustomFluentWindow.ParentHandleHWND, ctw11Sharp);
end;

function CreateShortcuts1: Boolean;
begin
  Result := (not ISArcExError) and ASwitch[1].ISSwitchedOn;
end;

function CreateShortcuts2: Boolean;
begin
  Result := (not ISArcExError) and ASwitch[2].ISSwitchedOn;
end;

procedure DirUpdateOnChange;
begin
  ADiskUsage.SetDir(WizardForm.DirEdit.Text);
  if StrToInt('{#NeedSize}') > Round(ADiskUsage.FreeSpace) then
  begin
    ALabel[20].Text(CustomMessage('ALabel20') + ' ' + MbOrTb(ADiskUsage.FreeSpace, 0) + ' ' + CustomMessage('ALabel20A') + '0 Mb');
    ARectangle[31].Enabled(False);
  end else
  begin
    ALabel[20].Text(CustomMessage('ALabel20') + ' ' + MbOrTb(ADiskUsage.FreeSpace, 0) + ' ' + CustomMessage('ALabel20A') + ' ' + MbOrTb(ADiskUsage.FreeSpace - {#NeedSize}, 0) + ')');
    ARectangle[31].Enabled(True);
  end;
end;

function Uninstall: Boolean;
begin
  if RegKeyExists(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#StringChange(SetupSetting("AppId"), "{{", "{")}_is1') then
    Result:= False
  else
    Result:= True;
end;

procedure CancelButtonClick(CurPageID: Integer; var Cancel, Confirm: Boolean);
begin
  Confirm:= False;
end;

procedure OnClick(Sender: TObject);
var
  ErrorCode: Integer;
  ADir: WideString;
begin
  case Sender of

    //Call=CancelForm
    TObject(ARectangle[2].GetObject):
    begin
      if WizardForm.CurPageID = wpFinished then
        WizardForm.NextButton.OnClick(Sender)
      else
      begin
        if WizardForm.CurPageID = wpInstalling then
          ISArcExSuspendProc;

        ALayout[2].AnimateOpacity(0, 0.5, 0);
        ALayout[2].Visible(False);
        ALayout[1].Visible(True);
        ALayout[1].AnimateOpacity(1, 0.5, 0);
      end;
    end;

    TObject(ARectangle[3].GetObject):
    begin
      MinimizeWindowCustomAnimated(mapBottom);
      pMinimizeWindow(WizardForm.Handle);
    end;
  #ifdef Music
    TObject(ARectangle[4].GetObject):
    begin
      if MusicPlayer.IsPaused then
      MusicPlayer.Resume
    else
      MusicPlayer.Pause;
    end;
  #endif
    TObject(ARectangle[5].GetObject):
    begin
      ALayout[3].AnimateOpacity(0, 0.5, 0);
      ALayout[3].Visible(False);
      ALayout[4].Visible(True);
      ALayout[4].AnimateOpacity(1, 0.5, 0);
    end;

    TObject(ARectangle[11].GetObject):
    begin
      ALayout[4].AnimateOpacity(0, 0.5, 0);
      ALayout[4].Visible(False);
      ALayout[3].Visible(True);
      ALayout[3].AnimateOpacity(1, 0.5, 0);
    end;

    TObject(ARectangle[7].GetObject):
    begin
      ALayout[3].AnimateOpacity(0, 0.5, 0);
      ALayout[3].Visible(False);
      ALayout[6].Visible(True);
      ALayout[6].AnimateOpacity(1, 0.5, 0);
    end;

    TObject(ARectangle[14].GetObject):
    begin
      ALayout[6].AnimateOpacity(0, 0.5, 0);
      ALayout[6].Visible(False);
      ALayout[3].Visible(True);
      ALayout[3].AnimateOpacity(1, 0.5, 0);
    end;

    TObject(AImage[10].GetObject):
    begin
      ALayout[3].AnimateOpacity(0, 0.5, 0);
      ALayout[3].Visible(False);
      ALayout[7].Visible(True);
      ALayout[7].AnimateOpacity(1, 0.5, 0);
    end;

    TObject(ALabel[7].GetObject):
    begin
      if IsConnectedToInternet2 then
        ShellExec('open', '{#MyAppURL}', '', '', SW_SHOW, ewNoWait, ErrorCode)
      else
      ShowMessage(CustomMessage('WebERR'));
    end;

    TObject(ARectangle[32].GetObject):
    begin
      if ALayout[8].IsVisible then
      begin
        ALayout[7].AnimateOpacity(0, 0.5, 0);
        ALayout[7].Visible(False);
        ALayout[3].Visible(True);
        ALayout[3].AnimateOpacity(1, 0.5, 0);
      end else
      if WizardForm.CurPageID = wpFinished then
        WizardForm.NextButton.OnClick(Sender)
      else
      WizardForm.BackButton.OnClick(Sender);
    end;

    TObject(ARectangle[31].GetObject):
      WizardForm.NextButton.OnClick(Sender);

    TObject(AEdit[1].GetSearchBtnObject):
    begin
      AFluentDirBrowse.DoBrowse(ADir);
      WizardForm.DirEdit.Text:= ADir;
      AEdit[1].Text(MinimizePathName(WizardForm.DirEdit.Text, WizardForm.DirEdit.Font, WizardForm.DirEdit.Width));
      DirUpdateOnChange;
    end;

    TObject(AEdit[2].GetSearchBtnObject):
    begin
      AFluentStartBrowse.DoBrowse(ADir);
      WizardForm.GroupEdit.Text:= ADir;
      AEdit[2].Text(MinimizePathName(WizardForm.GroupEdit.Text, WizardForm.GroupEdit.Font, WizardForm.GroupEdit.Width));
    end;

    TObject(ASwitch[1].GetObject):
    begin
    if ASwitch[1].ISSwitchedOn then
      ALabel[24].Enabled(True)
    else
      ALabel[24].Enabled(False);
    end;

    TObject(ASwitch[2].GetObject):
    begin
      if ASwitch[2].ISSwitchedOn then
      begin
        AEdit[2].Enabled(True);
        ALabel[25].Enabled(True);
      end else
      begin
        AEdit[2].Enabled(False);
        ALabel[25].Enabled(False);
      end;
    end;

    //CancelForm=NoBtn
    TObject(ARectangle[36].GetObject):
    begin
      if WizardForm.CurPageID = wpInstalling then
      begin
        AImage[25].LoadPicture(ExtractAndLoad('pause.png'), iwStretch);
        ISArcExCancel:= 0;
        ISArcExResumeProc;
      end;

      ALayout[1].AnimateOpacity(0, 0.5, 0);
      ALayout[1].Visible(False);
      ALayout[2].Visible(True);
      ALayout[2].AnimateOpacity(1, 0.5, 0);
    end;

    //CancelForm=YesBtn
    TObject(ARectangle[37].GetObject):
    begin
      if WizardForm.CurPageID = wpInstalling then
      begin
        ISArcExCancel:= 1;
        ISArcExResumeProc;

        ALayout[1].AnimateOpacity(0, 0.5, 0);
        ALayout[1].Visible(False);
        ALayout[2].Visible(True);
        ALayout[2].AnimateOpacity(1, 0.5, 0);
      end else
      WizardForm.CancelButton.OnClick(Sender);
    end;

    //Pause Btn
    TObject(AImage[25].GetObject):
    begin
      if ISArcExIsSuspended then
      begin
        ISArcExResumeProc;
        AImage[25].LoadPicture(ExtractAndLoad('pause.png'), iwStretch);
      end else
      begin
        ISArcExSuspendProc;
        AImage[25].LoadPicture(ExtractAndLoad('play.png'), iwStretch);
      end;
    end;

    TObject(ARectangle[6].GetObject):
    begin
      if Uninstall = true then
        ShowMessage(CustomMessage('UninsERR'))
      else
      begin
        if RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#StringChange(SetupSetting("AppId"), "{{", "{")}_is1', 'UninstallString', UninstallExe) then
          Exec(RemoveQuotes(UninstallExe), '', '', SW_SHOW, ewNoWait, ErrorCode);
        if Uninstall = true then
          AImage[8].LoadPicture(ExtractAndLoad('uninstallicon1.png'), iwStretch)
        else
          AImage[8].LoadPicture(ExtractAndLoad('uninstallicon0.png'), iwStretch);
      end;
    end;

    TObject(AButton.GetObject):
      ACustomFluentWindow.Close;
  end;
end;

procedure OnMouseEnter(Sender: TObject);
begin
  case Sender of
    TObject(ARectangle[2].GetObject):
      ARectangle[2].FillColor(ALRed);

    TObject(ARectangle[3].GetObject):
      ARectangle[3].FillColor($645D5B59);
  #ifdef Music
    TObject(ARectangle[4].GetObject):
      ARectangle[4].FillColor($645D5B59);
  #endif
    TObject(ARectangle[5].GetObject):
      ARectangle[5].AnimateColor(FllColor, FMXColorSetOpacity($FF000000, 0.5), 0.2);

    TObject(ARectangle[6].GetObject):
      ARectangle[6].FillColor(ALBlack);

    TObject(ARectangle[7].GetObject):
      ARectangle[7].FillColor(ALBlack);

    TObject(AImage[10].GetObject):
      ARectangle[9].AnimateColor(FllColor, FMXColorSetOpacity($FF000000, 0.5), 0.2);

    TObject(ALabel[7].GetObject):
      ALabel[7].Color($FF7DB7E5);

    TObject(ARectangle[11].GetObject):
      ARectangle[11].FillColor(FMXColorSetOpacity(ALBlackOlive, 0.8));

    TObject(ARectangle[14].GetObject):
      ARectangle[14].FillColor(FMXColorSetOpacity(ALBlackOlive, 0.8));

    TObject(ARectangle[31].GetObject):
      ARectangle[31].FillColor(ALBlack);

    TObject(ARectangle[32].GetObject):
      ARectangle[32].FillColor(ALBlack);

    TObject(ARectangle[36].GetObject):
      ARectangle[36].FillColor(ALBlack);

    TObject(ARectangle[37].GetObject):
      ARectangle[37].FillColor(ALBlack);
  end;
end;

procedure OnMouseLeave(Sender: TObject);
begin
  case Sender of
    TObject(ARectangle[2].GetObject):
      ARectangle[2].FillColor(ALNull);

    TObject(ARectangle[3].GetObject):
      ARectangle[3].FillColor(ALNull);
  #ifdef Music
    TObject(ARectangle[4].GetObject):
      ARectangle[4].FillColor(ALNull);
  #endif
    TObject(ARectangle[5].GetObject):
      ARectangle[5].AnimateColor(FllColor, $00000000, 0.2);

    TObject(ARectangle[6].GetObject):
      ARectangle[6].FillColor($FF1F1F1F);

    TObject(ARectangle[7].GetObject):
      ARectangle[7].FillColor($FF1F1F1F);

    TObject(AImage[10].GetObject):
      ARectangle[9].AnimateColor(FllColor, $00000000, 0.2);

    TObject(ALabel[7].GetObject):
      ALabel[7].Color($FF1F88DD);

    TObject(ARectangle[11].GetObject):
      ARectangle[11].FillColor(FMXColorSetOpacity(ALBlackOlive, 0.5));

    TObject(ARectangle[14].GetObject):
      ARectangle[14].FillColor(FMXColorSetOpacity(ALBlackOlive, 0.5));

    TObject(ARectangle[31].GetObject):
      ARectangle[31].FillColor($FF1F1F1F);

    TObject(ARectangle[32].GetObject):
      ARectangle[32].FillColor($FF1F1F1F);

    TObject(ARectangle[36].GetObject):
      ARectangle[36].FillColor($FF1F1F1F);

    TObject(ARectangle[37].GetObject):
      ARectangle[37].FillColor($FF1F1F1F);
  end;
end;

procedure FMXDesigning;
var
  i: Integer;
begin
  AForm.FCreateImageForm(WizardForm.Handle, ExtractAndLoad('form.jpg'), 1);
  AForm.LoadStyleFromFile(ExtractAndLoad('style.fsf'));

  AForm.SetCursor(ExtractAndLoad('Cur.ani'));

  AImage[1].FCreate(AForm.Handle);
  AImage[1].Align(Client);
  AImage[1].LoadPicture(ExtractAndLoad('img1.jpg'), iwStretch);
  AImage[1].HitTest(False);

  AGaussianBlur.FCreate(AImage[1].Handle);
  AGaussianBlur.BlurAmount(0.8);

  ARectangle[1].FCreate(AForm.Handle);
  ARectangle[1].SetBounds(0, 0, 933, 582);
  ARectangle[1].FillColor(ALNull);
  ARectangle[1].StrokeColor($8C3A3A3A);
  ARectangle[1].StrokeSetting(1, scFlat, sdSolid, sjMiter);
  ARectangle[1].HitTest(False);
              
  AImage[2].FCreate(AForm.Handle);
  AImage[2].SetBounds(24, 9, 30, 30);
  AImage[2].LoadPicture(ExtractAndLoad('titleicon.png'), iwStretch);
  AImage[2].HitTest(False);

  ALabel[1].FCreate(AForm.Handle, '{#GameName}');
  ALabel[1].FontSetting('{#Font1Name}', 14, ALWhite);
  ALabel[1].TextSetting(False, txLeading, txLeading)
  ALabel[1].AutoSize(True);
  ALabel[1].Position(75, 16);

  ALayout[1].FCreate(AForm.Handle);
  ALayout[1].Align(Client);
  ALayout[1].Opacity(0);
  ALayout[1].Visible(False);

  ALayout[2].FCreate(AForm.Handle);
  ALayout[2].Align(Client);
  ALayout[2].Opacity(1);
  ALayout[2].Visible(True);

  ARectangle[2].FCreate(ALayout[2].Handle);
  ARectangle[2].SetBounds(887, 1, 46, 32);
  ARectangle[2].FillColor(ALNull);
  ARectangle[2].OnMouseEnter(@OnMouseEnter);
  ARectangle[2].OnMouseLeave(@OnMouseLeave);
  ARectangle[2].OnClick(@OnClick);

  AImage[3].FCreate(ARectangle[2].Handle);
  AImage[3].Align(Center);
  AImage[3].Width(15);
  AImage[3].Height(15);
  AImage[3].LoadPicture(ExtractAndLoad('exit.png'), iwStretch);
  AImage[3].HitTest(False);

  ARectangle[3].FCreate(ALayout[2].Handle);
  ARectangle[3].SetBounds(840, 1, 46, 32);
  ARectangle[3].FillColor(ALNull);
  ARectangle[3].OnMouseEnter(@OnMouseEnter);
  ARectangle[3].OnMouseLeave(@OnMouseLeave);
  ARectangle[3].OnClick(@OnClick);

  AImage[4].FCreate(ARectangle[3].Handle);
  AImage[4].Align(Center);
  AImage[4].Width(15);
  AImage[4].Height(15);
  AImage[4].LoadPicture(ExtractAndLoad('minimize.png'), iwStretch);
  AImage[4].HitTest(False);
#ifdef Music
  ARectangle[4].FCreate(ALayout[2].Handle);
  ARectangle[4].SetBounds(794, 1, 46, 32);
  ARectangle[4].FillColor(ALNull);
  ARectangle[4].OnMouseEnter(@OnMouseEnter);
  ARectangle[4].OnMouseLeave(@OnMouseLeave);
  ARectangle[4].OnClick(@OnClick);

  AImage[5].FCreate(ARectangle[4].Handle);
  AImage[5].Align(Center);
  AImage[5].Width(18);
  AImage[5].Height(18);
  AImage[5].LoadPicture(ExtractAndLoad('music.png'), iwStretch);
  AImage[5].HitTest(False);
#endif
  ALayout[3].FCreate(ALayout[2].Handle);
  ALayout[3].SetBounds(25, 50, 888, 510);
  ALayout[3].Opacity(1);
  ALayout[3].Visible(True);

  AImage[6].FCreate(ALayout[3].Handle);
  AImage[6].SetBounds(0, 0, 887, 335);
  AImage[6].LoadPicture(ExtractAndLoad('AppInfoWindow.jpg'), iwStretch);
  AImage[6].HitTest(False);

  ARectangle[5].FCreate(AImage[6].Handle);
  ARectangle[5].Align(Client);
  ARectangle[5].FillColor($00000000);
  ARectangle[5].OnMouseEnter(@OnMouseEnter);
  ARectangle[5].OnMouseLeave(@OnMouseLeave);
  ARectangle[5].OnClick(@OnClick);

  AImage[7].FCreate(AImage[6].Handle);
  AImage[7].Align(Center);
  AImage[7].Margins(0, 180, 0, 0)
  AImage[7].Height(130);
  AImage[7].Width(200);
  AImage[7].HitTest(False);

  ARectangle[6].FCreate(ALayout[3].Handle);
  ARectangle[6].SetBounds(0, 339, 293, 81);
  ARectangle[6].FillColor($FF1F1F1F);
  ARectangle[6].OnMouseEnter(@OnMouseEnter);
  ARectangle[6].OnMouseLeave(@OnMouseLeave);
  ARectangle[6].OnClick(@OnClick);

  AImage[8].FCreate(ARectangle[6].Handle);
  AImage[8].SetBounds(12, 25, 30, 30);
  AImage[8].HitTest(False);
  if Uninstall = True then
    AImage[8].LoadPicture(ExtractAndLoad('uninstallicon0.png'), iwStretch)
  else
  AImage[8].LoadPicture(ExtractAndLoad('uninstallicon1.png'), iwStretch);

  ALabel[2].FCreate(ARectangle[6].Handle, CustomMessage('ALabel2'));
  ALabel[2].FontSetting('{#Font1Name}', 14, ALWhite);
  ALabel[2].TextSetting(False, txLeading, txLeading)
  ALabel[2].AutoSize(True);
  ALabel[2].Position(47, 28);

  ARectangle[7].FCreate(ALayout[3].Handle);
  ARectangle[7].SetBounds(0, 424, 293, 81);
  ARectangle[7].FillColor($FF1F1F1F);
  ARectangle[7].OnMouseEnter(@OnMouseEnter);
  ARectangle[7].OnMouseLeave(@OnMouseLeave);
  ARectangle[7].OnClick(@OnClick);

  AImage[9].FCreate(ARectangle[7].Handle);
  AImage[9].SetBounds(12, 25, 30, 30);
  AImage[9].LoadPicture(ExtractAndLoad('systeminfoicon.png'), iwStretch);
  AImage[9].RotationAngle(- 55);
  AImage[9].HitTest(False);

  ALabel[3].FCreate(ARectangle[7].Handle, CustomMessage('ALabel3'));
  ALabel[3].FontSetting('{#Font1Name}', 14, ALWhite);
  ALabel[3].TextSetting(False, txLeading, txLeading)
  ALabel[3].AutoSize(True);
  ALabel[3].Position(47, 29);

  ARectangle[8].FCreate(ALayout[3].Handle);
  ARectangle[8].SetBounds(296, 339, 294, 166);
  ARectangle[8].FillColor($81030303);

  AMemo[1].FCreate(ARectangle[8].Handle, True);
  AMemo[1].SetBounds(0, 0, 294, 166);
  if ActiveLanguage = 'russian' then
    AMemo[1].LoadFromfile(ExtractAndLoad('InfoRU.txt'))
  else
    AMemo[1].LoadFromfile(ExtractAndLoad('InfoEN.txt'));
  AMemo[1].FontSetting('{#Font1Name}', 12, ALWhite);
  AMemo[1].WordWrap(True);
  AMemo[1].ReadOnly(True);
  AMemo[1].ScrollAnimation(True);

  AImage[10].FCreate(ALayout[3].Handle);
  AImage[10].SetBounds(593, 339, 294, 166);
  AImage[10].LoadPicture(ExtractAndLoad('Install.jpg'), iwStretch);
  AImage[10].OnMouseEnter(@OnMouseEnter);
  AImage[10].OnMouseLeave(@OnMouseLeave);
  AImage[10].OnClick(@OnClick);

  ARectangle[9].FCreate(AImage[10].Handle);
  ARectangle[9].Align(Client);
  ARectangle[9].FillColor($00000000);
  ARectangle[9].HitTest(False);

  ALabel[4].FCreate(AImage[10].Handle, CustomMessage('ALabel4'));
  ALabel[4].FontSetting('{#Font1Name}', 14, ALWhite);
  ALabel[4].TextSetting(False, txLeading, txLeading)
  ALabel[4].SetBounds(0, 140, 294, 22);

  ALayout[4].FCreate(ALayout[2].Handle);
  ALayout[4].SetBounds(25, 50, 888, 510);
  ALayout[4].Opacity(0);
  ALayout[4].Visible(False);

  ARectangle[10].FCreate(ALayout[4].Handle);
  ARectangle[10].Align(Top);
  ARectangle[10].Height(200);
  ARectangle[10].FillColor(ALBlack);
  ARectangle[10].HitTest(False);

  AImage[11].FCreate(ARectangle[10].Handle);
  AImage[11].SetBounds(10, 10, 145, 180);
  AImage[11].LoadPicture(ExtractAndLoad('Cover.jpg'), iwStretch);

  ALabel[5].FCreate(ARectangle[10].Handle, '{#GameName}');
  ALabel[5].FontSetting('{#Font2Name}', 14, ALWhite);
  ALabel[5].TextSetting(False, txLeading, txLeading)
  ALabel[5].AutoSize(True);
  ALabel[5].Position(160, 10);

  ALabel[6].FCreate(ARectangle[10].Handle, '{#MyAppPublisher} ' + #9679 + ' {#Genre} ' + #9679 + ' {#ReleaseDate}');
  ALabel[6].FontSetting('{#Font2Name}', 14, ALWhite);
  ALabel[6].TextSetting(False, txLeading, txLeading)
  ALabel[6].AutoSize(True);
  ALabel[6].Position(160, 60);

  ALabel[7].FCreate(ARectangle[10].Handle, CustomMessage('ALabel7'));
  ALabel[7].FontSetting('{#Font2Name}', 14, ALWhite);
  ALabel[7].TextSetting(False, txLeading, txLeading)
  ALabel[7].AutoSize(True);
  ALabel[7].Position(160, 90);
  ALabel[7].HitTest(True);
  ALabel[7].Cursor(crHandPoint);
  ALabel[7].OnMouseEnter(@OnMouseEnter);
  ALabel[7].OnMouseLeave(@OnMouseLeave);
  ALabel[7].OnClick(@OnClick);

  ARectangle[11].FCreate(ARectangle[10].Handle);
  ARectangle[11].SetBounds(828, 0, 60, 200);
  ARectangle[11].FillColor(FMXColorSetOpacity(ALBlackOlive, 0.5));
  ARectangle[11].OnMouseEnter(@OnMouseEnter);
  ARectangle[11].OnMouseLeave(@OnMouseLeave);
  ARectangle[11].OnClick(@OnClick);

  AImage[12].FCreate(ARectangle[11].Handle);
  AImage[12].Align(Center);
  AImage[12].SetBounds(0, 0, 30, 30);
  AImage[12].LoadPicture(ExtractAndLoad('next.png'), iwStretch);
  AImage[12].HitTest(False);

  ARectangle[12].FCreate(ALayout[4].Handle);
  ARectangle[12].Align(Top);
  ARectangle[12].Height(310);
  ARectangle[12].FillColor($81030303);

  AVertScrollBox[1].FCreate(ARectangle[12].Handle);
  AVertScrollBox[1].SetBounds(0, 0, 888, 310);
  AVertScrollBox[1].SmoothScroll(True);

  ALayout[5].FCreate(AVertScrollBox[1].Handle);
  ALayout[5].SetBounds(0, 0, 888, 870);

  ALabel[8].FCreate(ALayout[5].Handle, CustomMessage('ALabel8'));
  ALabel[8].FontSetting('{#Font2Name}', 40, ALWhite);
  ALabel[8].TextSetting(False, txLeading, txLeading)
  ALabel[8].SetBounds(0, 14, 888, 50);

  AMemo[2].FCreate(ALayout[5].Handle, True);
  AMemo[2].SetBounds(10, 70, 858, 230);
  if ActiveLanguage = 'russian' then
    AMemo[2].LoadFromfile(ExtractAndLoad('longinfoRU.txt'))
  else
    AMemo[2].LoadFromfile(ExtractAndLoad('longinfoEN.txt'));
  AMemo[2].FontSetting('{#Font1Name}', 14, ALWhite);
  AMemo[2].WordWrap(True);
  AMemo[2].ReadOnly(True);
  AMemo[2].ScrollAnimation(True);

  ALabel[9].FCreate(ALayout[5].Handle, CustomMessage('ALabel9'));
  ALabel[9].FontSetting('{#Font2Name}', 40, ALWhite);
  ALabel[9].TextSetting(False, txLeading, txLeading)
  ALabel[9].SetBounds(0, 315, 888, 50);

  AImage[13].FCreate(ALayout[5].Handle);
  AImage[13].SetBounds(60, 380, 355, 200);
  AImage[13].LoadPicture(ExtractAndLoad('ss1.jpg'), iwStretch);
  AImage[13].HitTest(False);

  AImage[14].FCreate(ALayout[5].Handle);
  AImage[14].SetBounds(460, 380, 355, 200);
  AImage[14].LoadPicture(ExtractAndLoad('ss2.jpg'), iwStretch);
  AImage[14].HitTest(False);

  AImage[15].FCreate(ALayout[5].Handle);
  AImage[15].SetBounds(60, 620, 355, 200);
  AImage[15].LoadPicture(ExtractAndLoad('ss3.jpg'), iwStretch);
  AImage[15].HitTest(False);

  AImage[16].FCreate(ALayout[5].Handle);
  AImage[16].SetBounds(460, 620, 355, 200);
  AImage[16].LoadPicture(ExtractAndLoad('ss4.jpg'), iwStretch);
  AImage[16].HitTest(False);

  ALayout[6].FCreate(ALayout[2].Handle);
  ALayout[6].SetBounds(25, 50, 888, 510);
  ALayout[6].Opacity(0);
  ALayout[6].Visible(False);

  ARectangle[13].FCreate(ALayout[6].Handle);
  ARectangle[13].Align(Top);
  ARectangle[13].Height(200);
  ARectangle[13].FillColor(ALBlack);
  ARectangle[13].HitTest(False);

  ALabel[10].FCreate(ARectangle[13].Handle, CustomMessage('ALabel10'));
  ALabel[10].FontSetting('{#Font2Name}', 25, ALWhite);
  ALabel[10].TextSetting(False, txLeading, txLeading)
  ALabel[10].AutoSize(True);
  ALabel[10].Position(10, 33);

  ALabel[11].FCreate(ARectangle[13].Handle, CustomMessage('ALabel11'));
  ALabel[11].FontSetting('{#Font1Name}', 16, ALWhite);
  ALabel[11].TextSetting(False, txLeading, txLeading)
  ALabel[11].AutoSize(False);
  ALabel[11].AutoSize(True);
  ALabel[11].Position(10, 84);

  ARectangle[14].FCreate(ARectangle[13].Handle);
  ARectangle[14].SetBounds(828, 0, 60, 200);
  ARectangle[14].FillColor(FMXColorSetOpacity(ALBlackOlive, 0.5));
  ARectangle[14].OnMouseEnter(@OnMouseEnter);
  ARectangle[14].OnMouseLeave(@OnMouseLeave);
  ARectangle[14].OnClick(@OnClick);

  AImage[17].FCreate(ARectangle[14].Handle);
  AImage[17].Align(Center);
  AImage[17].SetBounds(0, 0, 30, 30);
  AImage[17].LoadPicture(ExtractAndLoad('next.png'), iwStretch);
  AImage[17].HitTest(False);

  ARectangle[15].FCreate(ALayout[6].Handle);
  ARectangle[15].Align(Top);
  ARectangle[15].Height(310);
  ARectangle[15].FillColor($81030303);
  ARectangle[15].HitTest(False);

  for i:= 0 to 6 do
  begin
    ALine[i].FCreate(ARectangle[15].Handle);
    ALine[i].StrokeColor(ALWhite);
    ALine[i].Left(10);
    ALine[i].Top(50);
    ALine[i].Width(418);
    ALine[i].Height(1);
    ALine[i].Opacity(0.3);
    ALine[i].LineStyle(LLInner, LTTop);
    ALine[i].ShortenLine(True);
    if i > 0 then
      ALine[i].Top(ALine[i].GetTop + 35 * i);
  end;

  for i:= 0 to 6 do
  begin
    BLine[i].FCreate(ARectangle[15].Handle);
    BLine[i].StrokeColor(ALWhite);
    BLine[i].Left(459);
    BLine[i].Top(50);
    BLine[i].Width(418);
    BLine[i].Height(1);
    BLine[i].Opacity(0.3);
    BLine[i].LineStyle(LLInner, LTTop);
    BLine[i].ShortenLine(True);
    if i > 0 then
      BLine[i].Top(BLine[i].GetTop + 35 * i);
  end;

  ALabel[12].FCreate(ARectangle[15].Handle, CustomMessage('ALabel12'));
  ALabel[12].FontSetting('{#Font2Name}', 15, ALWhite);;
  ALabel[12].TextSetting(False, txLeading, txLeading)
  ALabel[12].AutoSize(True);
  ALabel[12].Position(10, 5);

  ALabel[13].FCreate(ARectangle[15].Handle, CustomMessage('ALabel13'));
  ALabel[13].FontSetting('{#Font1Name}', 15, ALWhite);
  ALabel[13].TextSetting(False, txLeading, txLeading)
  ALabel[13].AutoSize(True);
  ALabel[13].Position(10, 25);

  ALabel[14].FCreate(ARectangle[15].Handle, CustomMessage('ALabel14'));
  ALabel[14].FontSetting('{#Font2Name}', 15, ALWhite);
  ALabel[14].TextSetting(False, txLeading, txLeading)
  ALabel[14].AutoSize(True);
  ALabel[14].Position(459, 5);

  ALabel[15].FCreate(ARectangle[15].Handle, CustomMessage('ALabel15'));
  ALabel[15].FontSetting('{#Font1Name}', 15, ALWhite);
  ALabel[15].TextSetting(False, txLeading, txLeading)
  ALabel[15].AutoSize(True);
  ALabel[15].Position(459, 25);

  ACombineText[1].FCreate(ARectangle[15].Handle, 10, 58, CustomMessage('ACombineText1'), '{#OS}', -1, False);
  ACombineText[2].FCreate(ARectangle[15].Handle, 10, 93, CustomMessage('ACombineText2'), '{#DX}', -1, False);
  ACombineText[3].FCreate(ARectangle[15].Handle, 10, 128, CustomMessage('ACombineText3'), MbOrTb({#RAM}, 0), -1, False);
  ACombineText[4].FCreate(ARectangle[15].Handle, 10, 163, CustomMessage('ACombineText4'), MbOrTb({#GPURAM}, 0), -1, False);
  ACombineText[5].FCreate(ARectangle[15].Handle, 10, 198, CustomMessage('ACombineText5'), '{#CPU}', -1, False);
  ACombineText[6].FCreate(ARectangle[15].Handle, 10, 233, CustomMessage('ACombineText6'), '{#GPU}', -1, False);
  ACombineText[7].FCreate(ARectangle[15].Handle, 459, 58, CustomMessage('ACombineText1'), AOSInfo.Caption, -1, False);
  ACombineText[8].FCreate(ARectangle[15].Handle, 459, 93, CustomMessage('ACombineText2'), GetDirectXVersion(True), -1, False);
  ACombineText[9].FCreate(ARectangle[15].Handle, 459, 128, CustomMessage('ACombineText3'), MbOrTb(ARamUsage.TotalRam, 0), -1, False);
  ACombineText[10].FCreate(ARectangle[15].Handle, 459, 163, CustomMessage('ACombineText4'), MbOrTb(AGPUInfo.GPUMemory, 0), -1, False);
  ACombineText[11].FCreate(ARectangle[15].Handle, 459, 198, CustomMessage('ACombineText5'), ACpuUsage.Name, -1, False);
  ACombineText[12].FCreate(ARectangle[15].Handle, 459, 233, CustomMessage('ACombineText6'), AGPUInfo.GPUName, -1, False);

  for i:= 1 to 12 do
  begin
    ACombineText[i].Text1Setting('{#Font2Name}', 15, ALWhite, False);
    ACombineText[i].Text1ShadowSetting(ALNull, 0 ,0);
    ACombineText[i].Text1HorzAlign(txLeading);
    ACombineText[i].Text2Setting('{#Font1Name}', 15, ALWhite, False);
    ACombineText[i].Text2ShadowSetting(ALNull, 0 ,0);
    ACombineText[i].Text2HorzAlign(txTrailing);
    AForm.AddMouseDownControls(ACombineText[i].Handle1);
    AForm.AddMouseDownControls(ACombineText[i].Handle2);
  end;

  ALayout[7].FCreate(ALayout[2].Handle);
  ALayout[7].SetBounds(25, 50, 888, 510);
  ALayout[7].Opacity(0);
  ALayout[7].Visible(False);

  ARectangle[16].FCreate(ALayout[7].Handle);
  ARectangle[16].SetBounds(0, 0, 50, 230);
  ARectangle[16].FillColor($81030303);
  ARectangle[16].HitTest(False);

  ACircle[1].FCreate(ARectangle[16].Handle);
  ACircle[1].SetBounds(5, 10, 40, 40);
  ACircle[1].FillColor(ALBlack);
  ACircle[1].StrokeColor(ALBlack);
  ACircle[1].StrokeSetting(2, scFlat, sdSolid, sjRound);
  ACircle[1].HitTest(False);

  AImage[18].FCreate(ACircle[1].Handle);
  AImage[18].Align(Center);
  AImage[18].SetBounds(0, 0, 22, 22);
  AImage[18].LoadPicture(ExtractAndLoad('page1.png'), iwStretch);
  AImage[18].HitTest(False);

  ACircle[2].FCreate(ARectangle[16].Handle);
  ACircle[2].SetBounds(5, 67, 40, 40);
  ACircle[2].FillColor(ALBlack);
  ACircle[2].StrokeColor(ALBlack);
  ACircle[2].StrokeSetting(2, scFlat, sdSolid, sjRound);
  ACircle[2].HitTest(False);

  AImage[19].FCreate(ACircle[2].Handle);
  AImage[19].Align(Center);
  AImage[19].SetBounds(0, 0, 22, 22);
  AImage[19].LoadPicture(ExtractAndLoad('page2.png'), iwStretch);
  AImage[19].HitTest(False);

  ACircle[3].FCreate(ARectangle[16].Handle);
  ACircle[3].SetBounds(5, 124, 40, 40);
  ACircle[3].FillColor(ALBlack);
  ACircle[3].StrokeColor(ALBlack);
  ACircle[3].StrokeSetting(2, scFlat, sdSolid, sjRound);
  ACircle[3].HitTest(False);

  AImage[20].FCreate(ACircle[3].Handle);
  AImage[20].Align(Center);
  AImage[20].SetBounds(0, 0, 22, 22);
  AImage[20].LoadPicture(ExtractAndLoad('page3.png'), iwStretch);
  AImage[20].HitTest(False);

  ACircle[4].FCreate(ARectangle[16].Handle);
  ACircle[4].SetBounds(5, 180, 40, 40);
  ACircle[4].FillColor(ALBlack);
  ACircle[4].StrokeColor(ALBlack);
  ACircle[4].StrokeSetting(2, scFlat, sdSolid, sjRound);
  ACircle[4].HitTest(False);

  AImage[21].FCreate(ACircle[4].Handle);
  AImage[21].Align(Center);
  AImage[21].SetBounds(0, 0, 22, 22);
  AImage[21].LoadPicture(ExtractAndLoad('page5.png'), iwStretch);
  AImage[21].HitTest(False);

  ALayout[8].FCreate(ALayout[7].Handle);
  ALayout[8].SetBounds(64, 0, 823, 485);
  ALayout[8].Opacity(0);
  ALayout[8].Visible(False);

  ARectangle[17].FCreate(ALayout[8].Handle);
  ARectangle[17].SetBounds(0, 0, ALayout[8].GetWidth, 425);
  ARectangle[17].FillColor($81030303);
  ARectangle[17].HitTest(False);

  ARectangle[18].FCreate(ALayout[8].Handle);
  ARectangle[18].SetBounds(0, 425, 708, 60);
  ARectangle[18].FillColor($81030303);
  ARectangle[18].HitTest(False);

  ARectangle[19].FCreate(ARectangle[17].Handle);
  ARectangle[19].SetBounds(0, 0, ARectangle[17].GetWidth, 50);
  ARectangle[19].FillColor(ALBlack);
  ARectangle[19].HitTest(False);

  ALabel[16].FCreate(ARectangle[19].Handle, CustomMessage('ALabel16'));
  ALabel[16].FontSetting('{#Font1Name}', 15, ALWhite);
  ALabel[16].TextSetting(False, txLeading, txLeading);
  ALabel[16].AutoSize(True);
  ALabel[16].Position(12, 15);

  AEdit[1].FCreate(ARectangle[17].Handle);
  AEdit[1].SetBounds(12, 60, 797, 32);
  AEdit[1].CanFocus(False);
  AEdit[1].AddSearchButton(@OnClick);
  AEdit[1].Text(MinimizePathName(WizardForm.DirEdit.Text, WizardForm.DirEdit.Font, WizardForm.DirEdit.Width));

  AFluentDirBrowse.FCreateBlankForm($FF1F1F1F, CustomMessage('DirBrowse'), WizardForm.DirEdit.Text, '');
  AFluentDirBrowse.EditFontSettings('{#Font1Name}', 12, ALWhite);
  AFluentDirBrowse.TextFontSettings('{#Font1Name}', 15, ALWhite);
  AFluentDirBrowse.ChangeBtnTitle(CustomMessage('DirBrowseNF'), 'OK', CustomMessage('DirBrowseCancel'));
  AFluentDirBrowse.ButtonColors(1, ALBlackOlive, ALBlack);
  AFluentDirBrowse.ButtonColors(2, ALBlackOlive, ALBlack);
  AFluentDirBrowse.ButtonColors(3, ALBlackOlive, ALBlack);
  AFluentDirBrowse.ButtonCornerCurve(1, 0);
  AFluentDirBrowse.ButtonCornerCurve(2, 0);
  AFluentDirBrowse.ButtonCornerCurve(3, 0);
  SetWin11FormCorners(AFluentDirBrowse.HandleHWND, ctw11Sharp);

  ALabel[17].FCreate(ARectangle[17].Handle, CustomMessage('ALabel17'));
  ALabel[17].FontSetting('{#Font1Name}', 13, ALRed);
  ALabel[17].TextSetting(False, txLeading, txLeading)
  ALabel[17].AutoSize(True);
  ALabel[17].Position(12, 100);

  ALabel[18].FCreate(ARectangle[17].Handle, CustomMessage('ALabel18'));
  ALabel[18].FontSetting('{#Font2Name}', 16, ALWhite);
  ALabel[18].TextSetting(False, txLeading, txLeading)
  ALabel[18].AutoSize(True);
  ALabel[18].Position(12, 141);

  ARectangle[20].FCreate(ARectangle[17].Handle);
  ARectangle[20].SetBounds(12, 170, 797, 4);
  ARectangle[20].FillColor(ALWhite);
  ARectangle[20].Opacity(0.3);
  ARectangle[20].HitTest(False);

  AImage[22].FCreate(ARectangle[17].Handle);
  AImage[22].SetBounds(12, 192, 30, 30);
  AImage[22].LoadPicture(ExtractAndLoad('drive.png'), iwStretch);
  AImage[22].HitTest(False);

  ALabel[19].FCreate(ARectangle[17].Handle, CustomMessage('ALabel19A') + ' ' + MbOrTb({#NeedSize}, 0) + ' ' + CustomMessage('ALabel19B')+ ' ' + MbOrTb({#UnpackNeedSize} + {#NeedSize}, 0) + ')');
  ALabel[19].FontSetting('{#Font1Name}', 14, ALWhite);
  ALabel[19].TextSetting(False, txLeading, txLeading)
  ALabel[19].AutoSize(True);
  ALabel[19].Position(55, 185);

  ALabel[20].FCreate(ARectangle[17].Handle, CustomMessage('ALabel20'));
  ALabel[20].FontSetting('{#Font1Name}', 14, ALWhite);
  ALabel[20].TextSetting(False, txLeading, txLeading)
  ALabel[20].AutoSize(True);
  ALabel[20].Position(55, 210);

  ALayout[9].FCreate(ALayout[7].Handle);
  ALayout[9].SetBounds(64, 0, 823, 485);
  ALayout[9].Opacity(0);
  ALayout[9].Visible(False);

  ARectangle[21].FCreate(ALayout[9].Handle);
  ARectangle[21].SetBounds(0, 0, ALayout[9].GetWidth, 425);
  ARectangle[21].FillColor($81030303);
  ARectangle[21].HitTest(False);

  ARectangle[22].FCreate(ALayout[9].Handle);
  ARectangle[22].SetBounds(0, 425, 708, 60);
  ARectangle[22].FillColor($81030303);
  ARectangle[22].HitTest(False);

  ARectangle[23].FCreate(ARectangle[21].Handle);
  ARectangle[23].SetBounds(0, 0, ARectangle[21].GetWidth, 50);
  ARectangle[23].FillColor(ALBlack);
  ARectangle[23].HitTest(False);

  ALabel[21].FCreate(ARectangle[23].Handle, CustomMessage('ALabel21'));
  ALabel[21].FontSetting('{#Font1Name}', 14, ALWhite);
  ALabel[21].TextSetting(False, txLeading, txLeading)
  ALabel[21].AutoSize(True);
  ALabel[21].Position(12, 15);

  AEdit[2].FCreate(ARectangle[21].Handle);
  AEdit[2].SetBounds(12, 60, 797, 32);
  AEdit[2].CanFocus(False);
  AEdit[2].AddSearchButton(@OnClick);
  AEdit[2].Text(MinimizePathName(WizardForm.GroupEdit.Text, WizardForm.GroupEdit.Font, WizardForm.GroupEdit.Width));

  AFluentStartBrowse.FCreateBlankForm($FF1F1F1F, CustomMessage('DirBrowse'), WizardForm.GroupEdit.Text, '');
  AFluentStartBrowse.EditFontSettings('{#Font1Name}', 12, ALWhite);
  AFluentStartBrowse.TextFontSettings('{#Font1Name}', 15, ALWhite);
  AFluentStartBrowse.ChangeBtnTitle(CustomMessage('DirBrowseNF'), 'OK', CustomMessage('DirBrowseCancel'));
  AFluentStartBrowse.ButtonColors(1, ALBlackOlive, ALBlack);
  AFluentStartBrowse.ButtonColors(2, ALBlackOlive, ALBlack);
  AFluentStartBrowse.ButtonColors(3, ALBlackOlive, ALBlack);
  SetWin11FormCorners(AFluentStartBrowse.HandleHWND, ctw11Sharp);

  ALabel[22].FCreate(ARectangle[21].Handle, CustomMessage('ALabel22'));
  ALabel[22].FontSetting('{#Font1Name}', 13, ALRed);
  ALabel[22].TextSetting(False, txLeading, txLeading);
  ALabel[22].AutoSize(True);
  ALabel[22].Position(12, 100);

  ALabel[23].FCreate(ARectangle[21].Handle, CustomMessage('ALabel23'));
  ALabel[23].FontSetting('{#Font2Name}', 16, ALWhite);
  ALabel[23].TextSetting(False, txLeading, txLeading)
  ALabel[23].AutoSize(True);
  ALabel[23].Position(12, 141);

  ARectangle[24].FCreate(ARectangle[21].Handle);
  ARectangle[24].SetBounds(12, 170, 797, 4);
  ARectangle[24].FillColor(ALWhite);
  ARectangle[24].Opacity(0.3);
  ARectangle[24].HitTest(False);

  AImage[23].FCreate(ARectangle[21].Handle);
  AImage[23].SetBounds(12, 192, 30, 30);
  AImage[23].LoadPicture(ExtractAndLoad('shortcut.png'), iwStretch);
  AImage[23].HitTest(False);

  ASwitch[1].FCreate(ARectangle[21].Handle, True);
  ASwitch[1].Left(55);
  ASwitch[1].Top(185);
  ASwitch[1].OnClick(@OnClick);

  ALabel[24].FCreate(ARectangle[21].Handle, CustomMessage('ALabel24'));
  ALabel[24].FontSetting('{#Font2Name}', 16, ALWhite);
  ALabel[24].TextSetting(False, txLeading, txLeading)
  ALabel[24].AutoSize(True);
  ALabel[24].Position(106, 184);

  ASwitch[2].FCreate(ARectangle[21].Handle, True);
  ASwitch[2].Left(55);
  ASwitch[2].Top(210);
  ASwitch[2].OnClick(@OnClick);

  ALabel[25].FCreate(ARectangle[21].Handle, CustomMessage('ALabel25'));
  ALabel[25].FontSetting('{#Font2Name}', 16, ALWhite);
  ALabel[25].TextSetting(False, txLeading, txLeading)
  ALabel[25].AutoSize(True);
  ALabel[25].Position(106, 209);

  AListBox.FCreate(ARectangle[21].Handle);
  AListBox.SetBounds(12, 240, 797, 170);
  AListBox.ItemHeight(32);
  AListBox.ShowCheckboxes(True);
  AListBox.BeginUpdate;
#ifdef Redist1
  AListBoxItem[1].FCreate(AListBox.Handle);
  AListBoxItem[1].Text('{#Redist1Name}');
  AListBoxItem[1].Selectable(False);
  AListBox.AddItem(AListBoxItem[1].Handle);
#endif
#ifdef Redist2
  AListBoxItem[2].FCreate(AListBox.Handle);
  AListBoxItem[2].Text('{#Redist2Name}');
  AListBoxItem[2].Selectable(False);
  AListBox.AddItem(AListBoxItem[2].Handle);
#endif
  AListBox.EndUpdate;

  ALayout[10].FCreate(ALayout[7].Handle);
  ALayout[10].SetBounds(64, 0, 823, 485);
  ALayout[10].Opacity(0);
  ALayout[10].Visible(False);

  ARectangle[25].FCreate(ALayout[10].Handle);
  ARectangle[25].SetBounds(0, 0, ALayout[9].GetWidth, 425);
  ARectangle[25].FillColor($81030303);
  ARectangle[25].HitTest(False);

  ARectangle[26].FCreate(ALayout[10].Handle);
  ARectangle[26].SetBounds(0, 425, 708, 60);
  ARectangle[26].FillColor($81030303);
  ARectangle[26].HitTest(False);

  ARectangle[27].FCreate(ARectangle[25].Handle);
  ARectangle[27].SetBounds(0, 0, ARectangle[17].GetWidth, 50);
  ARectangle[27].FillColor(ALBlack);
  ARectangle[27].HitTest(False);

  ALabel[26].FCreate(ARectangle[27].Handle, CustomMessage('ALabel26'));
  ALabel[26].FontSetting('{#Font1Name}', 15, ALWhite);
  ALabel[26].TextSetting(False, txLeading, txLeading)
  ALabel[26].AutoSize(True);
  ALabel[26].Position(12, 15);

  AImage[24].FCreate(ARectangle[25].Handle);
  AImage[24].SetBounds(25, 70, 35, 35);
  AImage[24].LoadPicture(ExtractAndLoad('download.png'), iwStretch);
  AImage[24].HitTest(False);

  AProgressBar.FCreate(ARectangle[25].Handle);
  AProgressBar.SetBounds(75, 78, 650, 15);
  AProgressBar.Max(1000);

  AImage[25].FCreate(ARectangle[25].Handle);
  AImage[25].SetBounds(740, 80, 15, 15);
  AImage[25].LoadPicture(ExtractAndLoad('pause.png'), iwStretch);
  AImage[25].OnClick(@OnClick);

  ALabel[27].FCreate(ARectangle[25].Handle, CustomMessage('ALabel27'));
  ALabel[27].FontSetting('{#Font1Name}', 15, ALWhite);
  ALabel[27].TextSetting(False, txLeading, txLeading)
  ALabel[27].AutoSize(True);
  ALabel[27].Position(25, 120);

  ALabel[28].FCreate(ARectangle[25].Handle, CustomMessage('ALabel28'));
  ALabel[28].FontSetting('{#Font1Name}', 15, ALWhite);
  ALabel[28].TextSetting(False, txLeading, txLeading)
  if ActiveLanguage = 'russian' then
    ALabel[28].SetBounds(653, 120, 300, 20)
  else
    ALabel[28].SetBounds(624, 120, 300, 20);

  AMemo[3].FCreate(ARectangle[25].Handle, False);
  AMemo[3].SetBounds(25, 150, 750, 260);
  AMemo[3].AddLine(CustomMessage('AMemo3'));
  AMemo[3].FontSetting('{#Font1Name}', 13, ALWhite);
  AMemo[3].CanFocus(False);
  AMemo[3].WordWrap(True);
  AMemo[3].ReadOnly(True);
  AMemo[3].ScrollAnimation(True);
  AMemo[3].ScrollToLastText(True);

  ALayout[11].FCreate(ALayout[7].Handle);
  ALayout[11].SetBounds(64, 0, 823, 485);
  ALayout[11].Opacity(0);
  ALayout[11].Visible(False);

  ARectangle[28].FCreate(ALayout[11].Handle);
  ARectangle[28].SetBounds(0, 0, ALayout[9].GetWidth, 425);
  ARectangle[28].FillColor($81030303);
  ARectangle[28].HitTest(False);

  ARectangle[29].FCreate(ALayout[11].Handle);
  ARectangle[29].SetBounds(0, 425, 708, 60);
  ARectangle[29].FillColor($81030303);
  ARectangle[29].HitTest(False);

  ARectangle[30].FCreate(ARectangle[28].Handle);
  ARectangle[30].SetBounds(0, 0, ARectangle[17].GetWidth, 50);
  ARectangle[30].FillColor(ALBlack);
  ARectangle[30].HitTest(False);

  ALabel[29].FCreate(ARectangle[30].Handle, CustomMessage('ALabel29') + ' ' + '{#GameName}');
  ALabel[29].FontSetting('{#Font1Name}', 15, ALWhite);
  ALabel[29].TextSetting(False, txLeading, txLeading);
  ALabel[29].AutoSize(True);
  ALabel[29].Position(12, 15);

  ALabel[30].FCreate(ARectangle[28].Handle, CustomMessage('ALabel30'));
  ALabel[30].FontSetting('{#Font1Name}', 17, ALWhite);
  ALabel[30].TextSetting(False, txLeading, txLeading)
  ALabel[30].AutoSize(True);
  ALabel[30].Position(12, 60);

  ALabel[31].FCreate(ARectangle[28].Handle, CustomMessage('ALabel31') + #13 +
                                            '   ' + CustomMessage('ALabel31A') + #13 +
                                            '   ' + CustomMessage('ALabel31B') + #13 +
                                            '   ' + CustomMessage('ALabel31C'));
  ALabel[31].FontSetting('{#Font1Name}', 15, ALWhite);
  ALabel[31].TextSetting(False, txLeading, txLeading)
  ALabel[31].AutoSize(True);
  ALabel[31].Position(12, 90);

  ALabel[32].FCreate(ARectangle[29].Handle, CustomMessage('ALabel32'));
  ALabel[32].FontSetting('{#Font1Name}', 15, ALWhite);
  ALabel[32].TextSetting(False, txLeading, txLeading)
  ALabel[32].AutoSize(True);
  ALabel[32].Position(12, 0);

  ARectangle[31].FCreate(ALayout[7].Handle);
  ARectangle[31].SetBounds(832, 430, 55, 55);
  ARectangle[31].FillColor($FF1F1F1F);
  ARectangle[31].OnMouseEnter(@OnMouseEnter);
  ARectangle[31].OnMouseLeave(@OnMouseLeave);
  ARectangle[31].OnClick(@OnClick);

  AImage[26].FCreate(ARectangle[31].Handle);
  AImage[26].Align(Center);
  AImage[26].SetBounds(0, 0, 30, 30);
  AImage[26].LoadPicture(ExtractAndLoad('next.png'), iwStretch);
  AImage[26].HitTest(False);

  ARectangle[32].FCreate(ALayout[7].Handle);
  ARectangle[32].SetBounds(777, 430, 55, 55);
  ARectangle[32].FillColor($FF1F1F1F);
  ARectangle[32].OnMouseEnter(@OnMouseEnter);
  ARectangle[32].OnMouseLeave(@OnMouseLeave);
  ARectangle[32].OnClick(@OnClick);

  AImage[27].FCreate(ARectangle[32].Handle);
  AImage[27].Align(Center);
  AImage[27].SetBounds(0, 0, 30, 30);
  AImage[27].LoadPicture(ExtractAndLoad('next.png'), iwStretch);
  AImage[27].RotationAngle(180);
  AImage[27].HitTest(False);

  ARectangle[33].FCreate(ALayout[1].Handle);
  ARectangle[33].SetBounds(25, 50, 887, 425);
  ARectangle[33].FillColor($81030303);
  ARectangle[33].HitTest(False);

  ARectangle[34].FCreate(ALayout[1].Handle);
  ARectangle[34].SetBounds(25, 475, 772, 60);
  ARectangle[34].FillColor($81030303);
  ARectangle[34].HitTest(False);

  ARectangle[35].FCreate(ARectangle[33].Handle);
  ARectangle[35].SetBounds(0, 0, ARectangle[33].GetWidth, 50);
  ARectangle[35].FillColor(ALBlack);
  ARectangle[35].HitTest(False);

  ALabel[33].FCreate(ARectangle[35].Handle, CustomMessage('ALabel33'));
  ALabel[33].FontSetting('{#Font1Name}', 15, ALWhite);
  ALabel[33].TextSetting(False, txLeading, txLeading)
  ALabel[33].AutoSize(True);
  ALabel[33].Position(12, 15);

  ALabel[34].FCreate(ARectangle[35].Handle, CustomMessage('ALabel34') + #13 +
                                            '   ' + CustomMessage('ALabel34A') + #13 +
                                            '   ' + CustomMessage('ALabel34B') + #13 +
                                            '   ' + CustomMessage('ALabel34C'));
  ALabel[34].FontSetting('{#Font1Name}', 15, ALWhite);
  ALabel[34].TextSetting(False, txLeading, txLeading)
  ALabel[34].AutoSize(True);
  ALabel[34].Position(12, 70);

  ARectangle[36].FCreate(ALayout[1].Handle);
  ARectangle[36].SetBounds(857, 480, 55, 55);
  ARectangle[36].FillColor($FF1F1F1F);
  ARectangle[36].OnMouseEnter(@OnMouseEnter);
  ARectangle[36].OnMouseLeave(@OnMouseLeave);
  ARectangle[36].OnClick(@OnClick);

  AImage[28].FCreate(ARectangle[36].Handle);
  AImage[28].Align(Center);
  AImage[28].SetBounds(0, 0, 30, 30);
  AImage[28].LoadPicture(ExtractAndLoad('next.png'), iwStretch);
  AImage[28].HitTest(False);

  ARectangle[37].FCreate(ALayout[1].Handle);
  ARectangle[37].SetBounds(802, 480, 55, 55);
  ARectangle[37].FillColor($FF1F1F1F);
  ARectangle[37].OnMouseEnter(@OnMouseEnter);
  ARectangle[37].OnMouseLeave(@OnMouseLeave);
  ARectangle[37].OnClick(@OnClick);

  AImage[29].FCreate(ARectangle[37].Handle);
  AImage[29].Align(Center);
  AImage[29].SetBounds(0, 0, 30, 30);
  AImage[29].LoadPicture(ExtractAndLoad('exit.png'), iwStretch);
  AImage[29].HitTest(False);

  ACustomFluentWindow.FCreateBlankForm(AForm.HandleHWND, $FF1F1F1F, '');
  ACustomFluentWindow.Height(175);
  ACustomFluentWindow.Width(506);
  
  AImage[30].FCreate(ACustomFluentWindow.Handle);
  AImage[30].SetBounds(24, 9, 30, 30);
  AImage[30].LoadPicture(ExtractAndLoad('titleicon.png'), iwStretch);
  AImage[30].HitTest(False);

  ALabel[35].FCreate(ACustomFluentWindow.Handle, '{#GameName}');
  ALabel[35].FontSetting('{#Font1Name}', 14, ALWhite);
  ALabel[35].TextSetting(False, txLeading, txLeading)
  ALabel[35].AutoSize(True);
  ALabel[35].Position(75, 16);

  AImage[31].FCreate(ACustomFluentWindow.Handle);
  AImage[31].SetBounds(24, 64, 42, 42);
  AImage[31].LoadPicture(ExtractAndLoad('about.png'), iwStretch);
  AImage[31].HitTest(False);

  AFillRGBEffect.FCreate(AImage[31].Handle);
  AFillRGBEffect.Enabled(True);
  AFillRGBEffect.Color($FF1F88DD);

  ALabel[36].FCreate(ACustomFluentWindow.Handle, '');
  ALabel[36].FontSetting('{#Font1Name}', 14, ALWhite);
  ALabel[36].TextSetting(False, txLeading, txLeading)
  ALabel[36].Opacity(0.9);
  ALabel[36].SetBounds(108, 54, 312, 56);

  AButton.FCreate(ACustomFluentWindow.Handle);
  AButton.SetBounds(218, 136, 84, 25);
  AButton.SetFocus;
  AButton.FontSetting('{#Font1Name}', 14, ALWhite);
  AButton.Text('OK');
  AButton.OnClick(@OnClick);
#ifdef LockScreen
  ALockScreen.FCreate(AForm.Handle, txCenter, False, False);
  ALockScreen.TextTop(- 290);
  ALockScreen.TextLeft(- 290);
  ALockScreen.AutoActivate([AForm.HandleHWND, WizardForm.Handle, AFluentDirBrowse.HandleHWND, AFluentStartBrowse.HandleHWND]);
  ALockScreen.AddText('- {#GameName} -', ''{#Font2Name}', ALWhite, [], 42, 346, 470, False);
  ALockScreen.BackColor(ALBlack);                                                                     
  ALockScreen.Opacity(0.6);
  ALockScreen.AnimationSettings(False, atIn, itLinear, 500, 0.9, 1);
#endif
end;

procedure InitializeWizard();
begin
  EmptyWizardForm(True, 933, 582);
#ifdef Splash
  ASplashScreen.FCreate(WizardForm.Handle, ExtractAndLoad('Splash.png'), '', 600);
  ASplashScreen.Play;
#endif
  FMXDesigning;
  AForm.Show;
#ifdef Music
  MusicPlayer.FCreate(WizardForm.Handle, ExtractAndLoad('music1.mp3'), 1, True, nil);
  MusicPlayer.SetVolume(90);
  MusicPlayer.Play;
#endif
end;

procedure CurPageChanged(CurPageID: Integer);
begin
  ALayout[8].Opacity(0);
  ALayout[8].Visible(False);
  ALayout[9].Opacity(0);
  ALayout[9].Visible(False);
  ALayout[10].Opacity(0);
  ALayout[10].Visible(False);
  ALayout[11].Opacity(0);
  ALayout[11].Visible(False);
  ACircle[1].AnimateColor(StrkColor, ALBlack, 0.5);
  ACircle[2].AnimateColor(StrkColor, ALBlack, 0.5);
  ACircle[3].AnimateColor(StrkColor, ALBlack, 0.5);
  ACircle[4].AnimateColor(StrkColor, ALBlack, 0.5);
#ifdef LockScreen
  ALockScreen.AutoActivateEnabled(False);
#endif
  case CurPageID of
    wpSelectDir:
    begin
      ALayout[8].Visible(True);
      ALayout[8].AnimateOpacity(1, 0.5, 0);
      ACircle[1].AnimateColor(StrkColor, ALWhite, 0.5);
      DirUpdateOnChange;
    #ifdef LockScreen
      ALockScreen.AutoActivateEnabled(True);
    #endif
    end;

    wpSelectProgramGroup:
    begin
      ALayout[9].Visible(True);
      ALayout[9].AnimateOpacity(1, 0.5, 0);
      ACircle[2].AnimateColor(StrkColor, ALWhite, 0.5);
    #ifdef LockScreen
      ALockScreen.AutoActivateEnabled(True);
    #endif
    end;

    wpInstalling:
    begin
      ALayout[10].Visible(True);
      ALayout[10].AnimateOpacity(1, 0.5, 0);
      ACircle[3].AnimateColor(StrkColor, ALWhite, 0.5);
      ARectangle[32].Enabled(False);
      ARectangle[31].Enabled(False);
    end;

    wpFinished:
    begin
      ALayout[11].Visible(True);
      ALayout[11].AnimateOpacity(1, 0.5, 0);
      ACircle[4].AnimateColor(StrkColor, ALWhite, 0.5);
      ARectangle[31].Enabled(True);
    end;
  end;
end;

procedure CurStepChanged(CurStep: TSetupStep);
var
  i, ErrorCode: Integer;
begin
  if CurStep = ssInstall then
  begin
    ISArcExCancel:= 0;
    ISArcExDiskCount:= 0;
    ISArcDiskAddingSuccess:= False;
    ISArcExError:= True;
    if ActiveLanguage = 'russian' then
      ExtractTemporaryFile('russian.ini')
    else
      ExtractTemporaryFile('english.ini');
    ExtractTemporaryFile('unarc.dll');
    ExtractTemporaryFile('arc.ini');
    ExtractTemporaryFile('cls.ini');
    ExtractTemporaryFile('facompress.dll');
  #ifdef srep
    ExtractTemporaryFile('cls-srep.dll');
    ExtractTemporaryFile('cls-srep_x64.exe');
  #endif
  #ifdef lolz
    ExtractTemporaryFile('cls-lolz.dll');
    ExtractTemporaryFile('cls-lolz_x64.exe');
  #endif
  #ifdef bpk
    ExtractTemporaryFile('cls-bpk.dll');
  #endif
  #ifdef msc
    ExtractTemporaryFile('cls-msc.dll');
  #endif

    repeat

    #ifdef Data1
      if FileExists(ExpandConstant('{src}\{#Data1}')) then
      begin
        ISArcDiskAddingSuccess:= ISArcExAddDisks(ExpandConstant('{src}\{#Data1}'), '{#DiskPassword}', ExpandConstant('{app}'));
        if not ISArcDiskAddingSuccess then
          break;
        ISArcExDiskCount:= ISArcExDiskCount + 1;
      end;
    #endif
    #ifdef Data2
      if FileExists(ExpandConstant('{src}\{#Data2}')) then
      begin
        ISArcDiskAddingSuccess:= ISArcExAddDisks(ExpandConstant('{src}\{#Data2}'), '{#DiskPassword}', ExpandConstant('{app}'));
        if not ISArcDiskAddingSuccess then
          break;
        ISArcExDiskCount:= ISArcExDiskCount + 1;
      end;
    #endif
    #ifdef Data3
      if FileExists(ExpandConstant('{src}\{#Data3}')) then
      begin
        ISArcDiskAddingSuccess:= ISArcExAddDisks(ExpandConstant('{src}\{#Data3}'), '{#DiskPassword}', ExpandConstant('{app}'));
        if not ISArcDiskAddingSuccess then
          break;
        ISArcExDiskCount:= ISArcExDiskCount + 1;
      end;
    #endif
    #ifdef Data4
      if FileExists(ExpandConstant('{src}\{#Data4}')) then
      begin
        ISArcDiskAddingSuccess:= ISArcExAddDisks(ExpandConstant('{src}\{#Data4}'), '{#DiskPassword}', ExpandConstant('{app}'));
        if not ISArcDiskAddingSuccess then
          break;
        ISArcExDiskCount:= ISArcExDiskCount + 1;
      end;
    #endif
    #ifdef Data5
      if FileExists(ExpandConstant('{src}\{#Data5}')) then
      begin
        ISArcDiskAddingSuccess:= ISArcExAddDisks(ExpandConstant('{src}\{#Data5}'), '{#DiskPassword}', ExpandConstant('{app}'));
        if not ISArcDiskAddingSuccess then
          break;
        ISArcExDiskCount:= ISArcExDiskCount + 1;
      end;
    #endif
    #ifdef Data6
      if FileExists(ExpandConstant('{src}\{#Data6}')) then
      begin
        ISArcDiskAddingSuccess:= ISArcExAddDisks(ExpandConstant('{src}\{#Data6}'), '{#DiskPassword}', ExpandConstant('{app}'));
        if not ISArcDiskAddingSuccess then
          break;
        ISArcExDiskCount:= ISArcExDiskCount + 1;
      end;
    #endif

    until true;

    if ISArcExDiskCount = 0 then
      ShowMessage(CustomMessage('ISArcERR'));

    if (ISArcDiskAddingSuccess) and ISArcExInit(MainForm.Handle, 1, @ProgressCallback) then
    begin
      repeat
        ISArcExReduceCalcAccuracy(1);
        ISArcExChangeLanguage(ActiveLanguage);
        for i:= 1 to ISArcExDiskCount do
        begin
          ISArcExError:= not ISArcExExtract(i, ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}'));
          if ISArcExError then
            break;
        end;

      until true;

      ISArcExStop;
    end;
  end;
  if (CurStep = ssPostInstall) and ISArcExError then
  begin
    AMemo[3].Clear;
    ALabel[29].Text(CustomMessage('ALabel29ERR') + ' ' +'{#GameName}');
    ALabel[30].Text(CustomMessage('ALabel30ERR'));
    ALabel[31].Text(CustomMessage('ALabel31ERR') + #13 +
                    '   ' + CustomMessage('ALabel31AERR') + #13 +
                    '   ' + CustomMessage('ALabel31BERR') + #13 +
                    '   ' + CustomMessage('ALabel31CERR'));
    ALabel[32].Text(CustomMessage('ALabel32ERR'));
    AImage[21].LoadPicture(ExtractAndLoad('page4.png'), iwStretch);
    AImage[27].LoadPicture(ExtractAndLoad('restart.png'), iwStretch);
    ARectangle[32].Enabled(True);
    Exec2(ExpandConstant('{uninstallexe}'), '/VERYSILENT', False);
    DelTree(ExpandConstant('{app}'), True, True, True);
    RemoveDir(ExpandConstant('{app}'));
  end else
  if (CurStep = ssPostInstall) and (not ISArcExError) then
    AMemo[3].AddLine(CustomMessage('AMemo3B'));
#ifdef Redist1
  if AListBoxItem[1].IsChecked then
  Exec(ExpandConstant('{src}\Redist\{#Redist1Path}'), '{#Redist1Key}', '', SW_HIDE, ewWaitUntilTerminated, ErrorCode);
#endif
#ifdef Redist2
  if AListBoxItem[2].IsChecked then
  Exec(ExpandConstant('{src}\Redist\{#Redist2Path}'), '{#Redist2Key}', '', SW_HIDE, ewWaitUntilTerminated, ErrorCode);
#endif
end;

procedure DeinitializeSetup();
begin
  FMXInnoShutDown;
  DeleteFMXFont(ExpandConstant('{tmp}\{#Font1 }'));
  DeleteFMXFont(ExpandConstant('{tmp}\{#Font2 }'));
end;

function EnableFluent(const WinHandle: HWND; DarkTheme, NoBorders, NoTitleBar: Boolean; Opacity: Single; BrightnessPct: Byte): Integer;
  external 'faC1222296@{tmp}\FluentApi.dll stdcall uninstallonly delayload';

function InitializeUninstall: Boolean;
begin
  Result:= FileCopy(ExpandConstant('{app}\Uninstall\FluentApi.dll'), ExpandConstant('{tmp}\FluentApi.dll'), False);
  if not Result then
    MsgBox('FluentApi.dll  did not found!', mbError, MB_OK);
end;

procedure InitializeUninstallProgressForm;
begin
  with UninstallProgressForm do
  begin
    ClientWidth:= ScaleX(500);
    ClientHeight:= ScaleY(150);
    InnerNotebook.Hide;
    OuterNotebook.Hide;
    CancelButton.Hide;
    Bevel.Hide;
    PageNameLabel.Hide;
    Position:= poDesktopCenter;
    Color:= clNone;
    Caption:= '';
    ProgressBar.Parent:= UninstallProgressForm;
    ProgressBar.Top:= ScaleY(100);
    ProgressBar.Width:= ScaleX(430);
    ProgressBar.Left:= (ClientWidth - ProgressBar.Width) div 2;
    ProgressBar.Height:= ScaleY(18);
  end;
  with TLabel.Create(nil) do
  begin
    Parent:= UninstallProgressForm;
    AutoSize:= True;
    Left:= UninstallProgressForm.PageNameLabel.Left;
    Top:= ScaleY(20);
    Caption:= UninstallProgressForm.PageNameLabel.Caption;
    Font.Size:= 13;
    Font.Name:= '{#Font1Name}';
    Font.Color:= clMaroon;
  end;
  with TLabel.Create(nil) do
  begin
    Parent:= UninstallProgressForm;
    WordWrap:= True;
    Left:= UninstallProgressForm.PageDescriptionLabel.Left - ScaleX(2);
    Top:= ScaleY(55);
    Width:= UninstallProgressForm.ProgressBar.Width;
    Height:= UninstallProgressForm.PageDescriptionLabel.Height  + ScaleY(45);
    Caption:= UninstallProgressForm.PageDescriptionLabel.Caption;
    Font.Size:= 10;
    Font.Name:= '{#Font1Name}';
    Font.Color:= $00EAEAEA;
  end;
  EnableFluent(UninstallProgressForm.Handle, True, False, True, 0.56, 0);
end;

