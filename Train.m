load('data')
net=patternnet(3);
net.divideParam.trainRatio=1;
net.divideParam.testRatio=0;
net.trainParam.epochs=1000;
net.trainParam.goal=0;
net.trainParam.min_grad=1e-26;
net=train(net,p,targets);
