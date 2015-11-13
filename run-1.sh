export LD_LIBRARY_PATH=~/bin/LIB64
export OMP_NUM_THREADS=1
ulimit -s unlimited
mkdir burner-1
cp burner.fds burner-1
cd burner-1
~/bin/fds burner.fds &> stdout.log

