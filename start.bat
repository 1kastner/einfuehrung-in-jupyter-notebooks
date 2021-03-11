set ANACONDA_ROOT=C:\Users\%USERNAME%\Anaconda3

set PATH=%ANACONDA_ROOT%\envs\intro-jupyter-notebooks\Scripts;%ANACONDA_ROOT%\envs\intro-jupyter-notebooks;%PATH%;%ANACONDA_ROOT%\Scripts

call activate intro-jupyter-notebooks && jupyter lab || pause
