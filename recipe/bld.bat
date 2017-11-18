rem https://github.com/pyca/pynacl/issues/165
set SODIUM_INSTALL=system
set PYNACL_SODIUM_STATIC=1
set LIB="%LIBRARY_LIB%";%LIB%
set INCLUDE="%LIBRARY_INCLUDE%";%INCLUDE%
python setup.py install --single-version-externally-managed --record record.txt
if errorlevel 1 exit 1
