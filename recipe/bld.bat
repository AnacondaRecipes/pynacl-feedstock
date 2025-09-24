rem https://github.com/pyca/pynacl/issues/165
set PYNACL_SODIUM_LIBRARY_NAME=sodium
set SODIUM_INSTALL=system
set PYNACL_SODIUM_STATIC=1
%PYTHON% -m pip install . -vv --no-deps --no-build-isolation --ignore-installed
if errorlevel 1 exit 1
