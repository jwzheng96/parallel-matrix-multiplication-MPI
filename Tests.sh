#!/bin/sh
m=6000
p=6000
n=6000
np=8

echo -e "\n=================== Run tests ===================\n"
echo -e "\nmatrix multiply with single process"
echo "m=$m, p=$p, n=$n"
./single $m $p $n

echo -e "\nmatrix multiply with parallel"
echo "np=$np, m=$m, p=$p, n=$n"
mpirun -np $np --oversubscribe parallel $m $p $n

echo -e "\nmatrix multiply with paralle_improve"
echo "np=$np, m=$m, p=$p, n=$n"
mpirun -np $np --oversubscribe mm_MPI_update $m $p $n

#echo -e "\nTest matrix multiply with paralle_improve"
#
#echo "np=1, m=1000, p=1000, n=1000"
#mpirun -np 1 --oversubscribe paralle_improve 1000 1000 1000
#
#echo "np=2, m=1000, p=1000, n=1000"
#mpirun -np 2 --oversubscribe paralle_improve 1000 1000 1000
#
#echo "np=4, m=1000, p=1000, n=1000"
#mpirun -np 4 --oversubscribe paralle_improve 1000 1000 1000
#
#echo "np=8, m=1000, p=1000, n=1000"
#mpirun -np 8 --oversubscribe paralle_improve 1000 1000 1000
#
#echo "np=16, m=1000, p=1000, n=1000"
#mpirun -np 16 --oversubscribe paralle_improve 1000 1000 1000
#
#echo "np=1, m=2000, p=2000, n=2000"
#mpirun -np 1 --oversubscribe paralle_improve 2000 2000 2000
#
#echo "np=2, m=2000, p=2000, n=2000"
#mpirun -np 2 --oversubscribe paralle_improve 2000 2000 2000
#
#echo "np=4, m=2000, p=2000, n=2000"
#mpirun -np 4 --oversubscribe paralle_improve 2000 2000 2000
#
#echo "np=8, m=2000, p=2000, n=2000"
#mpirun -np 8 --oversubscribe paralle_improve 2000 2000 2000
#
#echo "np=16, m=2000, p=2000, n=2000"
#mpirun -np 16 --oversubscribe paralle_improve 2000 2000 2000
#
#echo "np=1, m=3000, p=3000, n=3000"
#mpirun -np 1 --oversubscribe paralle_improve 3000 3000 3000
#
#echo "np=2, m=3000, p=3000, n=3000"
#mpirun -np 2 --oversubscribe paralle_improve 3000 3000 3000
#
#echo "np=4, m=3000, p=3000, n=3000"
#mpirun -np 4 --oversubscribe paralle_improve 3000 3000 3000
#
#echo "np=8, m=3000, p=3000, n=3000"
#mpirun -np 8 --oversubscribe paralle_improve 3000 3000 3000
#
#echo "np=16, m=3000, p=3000, n=3000"
#mpirun -np 16 --oversubscribe paralle_improve 3000 3000 3000
#
#echo "np=1, m=4000, p=4000, n=4000"
#mpirun -np 1 --oversubscribe paralle_improve 4000 4000 4000
#
#echo "np=2,  m=4000, p=4000, n=4000"
#mpirun -np 2 --oversubscribe paralle_improve 4000 4000 4000
#
#echo "np=4,  m=4000, p=4000, n=4000"
#mpirun -np 4 --oversubscribe paralle_improve 4000 4000 4000
#
#echo "np=8,  m=4000, p=4000, n=4000"
#mpirun -np 8 --oversubscribe paralle_improve 4000 4000 4000
#
#echo "np=16,  m=4000, p=4000, n=4000"
#mpirun -np 16 --oversubscribe paralle_improve 4000 4000 4000
#
#echo "np=1, m=5000, p=5000, n=5000"
#mpirun -np 1 --oversubscribe paralle_improve 5000 5000 5000
#
#echo "np=2, m=2000, p=2000, n=2000"
#mpirun -np 2 --oversubscribe paralle_improve 5000 5000 5000
#
#echo "np=4, m=5000, p=5000, n=5000"
#mpirun -np 4 --oversubscribe paralle_improve 5000 5000 5000
#
#echo "np=8, m=5000, p=5000, n=5000"
#mpirun -np 8 --oversubscribe paralle_improve 5000 5000 5000
#
#echo "np=16, m=5000, p=5000, n=5000"
#mpirun -np 16 --oversubscribe paralle_improve 5000 5000 5000
#
#echo "np=1, m=6000, p=6000, n=6000"
#mpirun -np 1 --oversubscribe paralle_improve 6000 6000 6000
#
#echo "np=2, m=6000, p=6000, n=6000"
#mpirun -np 2 --oversubscribe paralle_improve 6000 6000 6000
#
#echo "np=4, m=6000, p=6000, n=6000"
#mpirun -np 4 --oversubscribe paralle_improve 6000 6000 6000
#
#echo "np=8, m=6000, p=6000, n=6000"
#mpirun -np 8 --oversubscribe paralle_improve 6000 6000 6000
#
#echo "np=16, m=6000, p=6000, n=6000"
#mpirun -np 16 --oversubscribe paralle_improve 6000 6000 6000

echo -e "\n=================== Test complete ===================\n"
