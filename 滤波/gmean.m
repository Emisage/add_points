function v = gmean(A)
%GMEAN 此处显示有关此函数的摘要
%   此处显示详细说明
mn = size(A,1);
v = prod(A, 1).^(1/mn);

end

