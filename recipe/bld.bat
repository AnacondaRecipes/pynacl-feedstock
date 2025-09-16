rem https://github.com/pyca/pynacl/issues/165
set PYNACL_SODIUM_LIBRARY_NAME=sodium
set SODIUM_INSTALL=system

python -m pip install . --no-deps --ignore-installed --no-build-isolation
if errorlevel 1 exit 1
