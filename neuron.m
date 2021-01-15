function out = neuron(x,w)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
y = x*w(1)+w(2);
out = 1/(1+exp(-y));
end

