@ECHO off

echo "Checking for correct Python version"

python3.10 --version

echo .
echo "Create a Python Virtual Environment? [y/n]: "

set /p CreateVEnv=Create a Python Virtual Environment? [y/n]: 
if /I "%CreateVEnv%"=="y" (
    CALL python3.10 -m venv .venv
    CALL cd /d .venv/scripts 
    CALL activate
    CALL cd /d ../..    
    echo Created Virtual Environment at .venv
)

echo .
echo "Installing dev requirements"
pip install -r python-dev-requirements.txt


