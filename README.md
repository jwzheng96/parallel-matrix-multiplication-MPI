## 编译
依赖环境：

```
1、g++
2、mpi
```
上述依赖环境可以通过安装open-mpi来直接安装，mac环境下通过
```
brew install open-mpi
```
运行编译脚本

```
bash make.sh
```
## 运行
需要输入三个参数给m,k,n赋值
运行串行算法：

```
./single 1000 1000 1000
```
运行并行算法：

```
mpirun -np 4 parallel 5000 5000 5000
```
运行改进后的并行算法：

```
mpirun -np 8 parallel_improve 5000 5000 5000
```



