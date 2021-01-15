function [residual] = calcResidual(pars,XX,neuronNum,inputNum,func, alpha)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
%
rpars = reshape(pars,[neuronNum,inputNum+1]);
w = rpars(:,1:end-1);
u = rpars(:,end);
approxFunc = zeros(size(XX));
residual = 0;
for i = 1:numel(XX)
    buf = zeros([neuronNum,1]);
    for j = 1:neuronNum
        buf(j) = u(j)*func(XX(i), w(j,:));
    end
    approxFunc(i) = sum(buf);
    residual = residual + (sin(XX(i)) - approxFunc(i))^2;
end
residual = residual + alpha * sum(pars.^2);
end

