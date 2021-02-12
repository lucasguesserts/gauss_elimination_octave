function x = metodo_nosso(A, B)
    % para k=1:n-1
    % para i=k+1:n
    % para j=1:n+1
    % Li=Li-(A(i,k)/A(k,k))Lk
    % matriz concatenada
	A = [A B];
	n = size(A,1);
    % fazendo escalonamento (triangularização)
	for k=1:n-1
	   for i=k+1:n
		   % escolher melhor linha k
		   A = funcao_troca(k,n,A);
		aux = (A(i,k)/A(k,k));
		A(i,k) = 0;
			for j=1:n+1
				A(i,j) = A(i,j) - aux * A(k,j);
			end
		end
	end

	% fazendo a retrosubtituição
	% para i = n
	x(n) = A(n,n+1) / A(n,n);
	for i=n-1:-1:1
		somatorio = 0;
		for j=i+1:n
			somatorio = somatorio + A(i,j) * x(j);
		end
		x(i) = (A(i,n+1)-somatorio) / A(i,i);
	end
	x = transpose(x);
end
