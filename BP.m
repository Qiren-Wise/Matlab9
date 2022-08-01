clear all
P = [0 1 2 3 4 5 6 7 8 9 10]; %隐含层是输出层的2倍
t = [0 1 2 3 4 3 2 1 2 3 4]; %列要一致等于样本  1*11维  11个输入数据，每个有1个特征
net = newff([0 10],[5,1],{'tansig''purelin'});
net.trainparam.show = 50;  %每次循环50次
net.trainParam.epochs = 500; %最大循环500次
net.trainparam.goal = 0.01;  %期望目标误差最小值
net = train(net,P,T);        %对网络进行反复训练
Y = sim(net,P)               %仿真
plot(P,T,P,Y,'O')