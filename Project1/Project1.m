f[n_] :=
    Module[ {k = 500},(*只同时显示500个数据*)
        (*个人编程规范如下*)
        x = Accumulate[(*因为有两个以上函数复合，所以第一个[]打开*)
                RandomChoice[{-1,1}, n](*最后一个函数在一行内的不用打开[]，超过一行的需打开[]*)
                ];
        data = Table[{i, x[[i]]}, {i, n}];
        fig = Animate[
                ListPlot[data[[i;;i+k-1]], Joined -> True, Filling -> Bottom],(*参数太长的话第一个参数放同一行，其他参数换行*)
                    {i, 1, n-k, 1},
                    AnimationRate -> 10
                ];
        (*导出动画*)
        Export["E:\\GitHub\\WolframProjects1\\Project1\\fig.gif", fig];
    ]