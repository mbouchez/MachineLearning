function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);
N = size(X, 1);

% You need to return the following variables correctly.
idx = zeros(N, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

for x_index = 1:N
	best_distance = realmax;
	for centroid_index = 1:K
		diff_matrix = X(x_index, :) - centroids(centroid_index, :);
		distance = diff_matrix * diff_matrix';
		if (distance < best_distance)
			best_distance = distance;
			idx(x_index) = centroid_index;
		end
	end
end

% =============================================================

end

