function Z = projectData(X, U, K)
%PROJECTDATA Computes the reduced data representation when projecting only 
%on to the top k eigenvectors
%   Z = projectData(X, U, K) computes the projection of 
%   the normalized inputs X into the reduced dimensional space spanned by
%   the first K columns of U. It returns the projected examples in Z.
%

% You need to return the following variables correctly.
Z = zeros(size(X, 1), K);
m = size(X, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the projection of the data using only the top K 
%               eigenvectors in U (first K columns). 
%               For the i-th example X(i,:), the projection on to the k-th 
%               eigenvector is given as follows:
%                    x = X(i, :)';
%                    projection_k = x' * U(:, k);
%

%loop through examples - each row
for i = 1:m
	x = X(i, :)';	%' 		n by 1

	%loop through valid Eigenvectors in U
	%for k = 1:K
	%	projection_k = x' * U(:, k); n by 1

	z = U(:, 1:K)' * x; % K by n * n by 1 is K by 1
	Z(i, :) = z';
endfor


% =============================================================

end
