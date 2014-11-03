rem rhq-ant input properties:
rem rhq.deploy.dir is the root installation directory
rem rhq.deploy.clean=true deletes everything in the deployment directory

if "%OS%" == "Windows_NT" setlocal
if "%OS%" == "Windows_NT" (
  set "DIRNAME=%~dp0%"
) else (
  set DIRNAME=.\
)

if "x%JAVA_HOME%" == "x" (
  echo Please set your JAVA_HOME environment variable
  goto END_OF_START
)

set PATH=%CD%\installer\bin;%JAVA_HOME%\bin;%PATH%;
echo "==================="
echo %PATH%
echo "==================="
rhq-ant -Drhq.deploy.dir=\tmp\jboss-demos\fuse-fsi-demo -Drhq.deploy.clean="false"

:END_OF_START
