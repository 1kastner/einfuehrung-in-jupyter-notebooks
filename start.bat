set ANACONDA_ROOT=C:\Users\%USERNAME%\Anaconda3
IF NOT EXIST %ANACONDA_ROOT% PAUSE

set ENV_SPECIFIC_ROOT=%ANACONDA_ROOT%\envs\intro-jupyter-notebooks
IF NOT EXIST %ENV_SPECIFIC_ROOT% PAUSE

set PATH=%ENV_SPECIFIC_ROOT%\Scripts;%ENV_SPECIFIC_ROOT%;%ANACONDA_ROOT%\Scripts;%ANACONDA_ROOT%;%PATH%

call activate intro-jupyter-notebooks && jupyter lab || pause
