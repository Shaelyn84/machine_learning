function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 

grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
h = sigmoid(X * theta);
h1 = log(h);
h2 = log(1-h);
cost1 = -(y' * h1 + h2' * (1-y))/m
theta(1) = 0;
thetaf = theta' * theta;
theta_item = lambda / (2 * m) * thetaf
J = cost1 + theta_item
grad = ((X' * (h-y)) / m) + (lambda/m * theta)





% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
