function v = gmean(A)
%GMEAN �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
mn = size(A,1);
v = prod(A, 1).^(1/mn);

end

