clear all
P = [0 1 2 3 4 5 6 7 8 9 10]; %��������������2��
t = [0 1 2 3 4 3 2 1 2 3 4]; %��Ҫһ�µ�������  1*11ά  11���������ݣ�ÿ����1������
net = newff([0 10],[5,1],{'tansig''purelin'});
net.trainparam.show = 50;  %ÿ��ѭ��50��
net.trainParam.epochs = 500; %���ѭ��500��
net.trainparam.goal = 0.01;  %����Ŀ�������Сֵ
net = train(net,P,T);        %��������з���ѵ��
Y = sim(net,P)               %����
plot(P,T,P,Y,'O')