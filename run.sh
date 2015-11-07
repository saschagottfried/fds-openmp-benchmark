export LD_LIBRARY_PATH=~/bin/LIB64
ulimit -s unlimited
mkdir burner-1
cp burner-1.fds burner-1
cd burner-1
~/bin/fds ../burner-1.fds >> stdout.log

