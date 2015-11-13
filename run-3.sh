export LD_LIBRARY_PATH=~/bin/LIB64
export OMP_NUM_THREADS=3
ulimit -s unlimited
mkdir burner-3
cp burner.fds burner-3
cd burner-3
~/bin/fds burner.fds &> stdout.log

