echo off

REM (this is a comment) Change the following string to your CoppeliaSim intallation location
SET vrepLocation=C:\Program Files\CoppeliaRobotics\CoppeliaSimEdu
REM Do not modify anything after this comment-
SET luaLocation=%vrepLocation%
SET modelLocation=%vrepLocation%\models
SET sceneLocation=%vrepLocation%\scenes
 
SET nexModel=%modelLocation%\VR-Interface
SET nextScene=%sceneLocation%\VR-Interface

SET current=%~dp0
SET luaSource=%current%Scripts
SET modelSource=%current%Models
SET sceneSource=%current%Scene
echo %current%
echo %luaSource%
echo %modelSource%
echo %sceneSource%

mkdir "%nextScene%"
robocopy "%sceneSource%" "%nextScene%" /COPYALL /E

mkdir "%nexModel%"
robocopy "%modelSource%" "%nexModel%" /COPYALL /E

robocopy "%luaSource%" "%luaLocation%" /COPYALL /E