function solution = gaussElimination(matrix, independent)
	expandedMatrix = [matrix, independent];
	numberOfRows = size(matrix,1);
	for row = 1 : (numberOfRows-1)
		expandedMatrix = pivotMatrix(expandedMatrix, row);
		expandedMatrix = eliminateMatrixRow(expandedMatrix, row);
	end
	solution = backwardSubstitution(expandedMatrix);
end
