export LD_LIBRARY_PATH=~/bin/LIB64
export OMP_NUM_THREADS=4
ulimit -s unlimited
mkdir burner-4
cp burner.fds burner-4
cd burner-4
~/bin/fds ../burner.fds >> stdout.log

