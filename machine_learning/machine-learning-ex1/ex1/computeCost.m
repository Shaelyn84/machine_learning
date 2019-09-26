function J = computeCost(X, y, theta)
data = load('ex1data1.txt');
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
#y = data(:,2);
m = length(y); % number of training examples
#X = [ones(m,1), data(:,1)];

#theta = zeros(2,1);
% You need to return the following variables correctly 


% ====================== YOUR CODE HERE ======================
h = X * theta;
error = h - y;
error_sqr = error.^2;
q = sum(error_sqr);
J = q / (2*m);


% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.





% =========================================================================

end
