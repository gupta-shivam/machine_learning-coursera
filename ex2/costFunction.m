function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%
K=X*theta;
B=exp(K.*1);
C=B+1;
HX=B./C;
LOG_HX=log(HX.*1);
H=log(1-HX.*1);
z=1-y;
J=((y'*LOG_HX)+(z'*H))/(-1*m);

grad=(1/m)*(X'*(HX-y));






% =============================================================

end
