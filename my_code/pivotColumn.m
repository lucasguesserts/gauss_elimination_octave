function pivotedMatrix = pivotMatrix(expandedMatrix, currentRow)
	pivotedMatrix = expandedMatrix;
	column = currentRow;
	rowOfBiggerValue                  = getRowOfBiggerValue(expandedMatrix, column);
	pivotedMatrix(currentRow      ,:) = expandedMatrix(rowOfBiggerValue, :);
	pivotedMatrix(rowOfBiggerValue,:) = expandedMatrix(currentRow      , :);
end
