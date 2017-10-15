@echo off 

echo "install Npm And Run "


:Main
echo "select The Option"
echo " 1 : Install Npm"
echo " 2 : Run Npm "
set /p chk=" Select Your Option : "

IF %chk%==1 (
      echo "Loading ..... .... ... "
    GOTO installer
   
) ELSE IF %chk%==2 (
    echo "Loading ..... .... ... "
    GOTO compandrun
     )
ELSE (
    echo Try Again 
    GOTO Main
)

:installer
    echo "Npm Installer "
    npm install
    GOTO Main
    
:compandrun   
    echo "Compaile and Run"
    npm serve --open  
    GOTO Main


:END
    ECHO DONE