set ANACONDA_ROOT=C:\Users\%USERNAME%\Anaconda3
IF NOT EXIST %ANACONDA_ROOT% PAUSE

call %ANACONDA_ROOT%\Scripts\activate intro-jupyter-notebooks && jupyter lab || pause
