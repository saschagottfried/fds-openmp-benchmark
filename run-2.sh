export LD_LIBRARY_PATH=~/bin/LIB64
export OMP_NUM_THREADS=2
ulimit -s unlimited
mkdir burner-2
cp burner.fds burner-2
cd burner-2
~/bin/fds burner.fds >> stdout.log

