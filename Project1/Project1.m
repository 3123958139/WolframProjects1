f[n_] :=
    Module[ {k = 500},(*ֻͬʱ��ʾ500������*)
        (*���˱�̹淶����*)
        x = Accumulate[(*��Ϊ���������Ϻ������ϣ����Ե�һ��[]��*)
                RandomChoice[{-1,1}, n](*���һ��������һ���ڵĲ��ô�[]������һ�е����[]*)
                ];
        data = Table[{i, x[[i]]}, {i, n}];
        fig = Animate[
                ListPlot[data[[i;;i+k-1]], Joined -> True, Filling -> Bottom],(*����̫���Ļ���һ��������ͬһ�У�������������*)
                    {i, 1, n-k, 1},
                    AnimationRate -> 10
                ];
        (*��������*)
        Export["E:\\GitHub\\WolframProjects1\\Project1\\fig.gif", fig];
    ]