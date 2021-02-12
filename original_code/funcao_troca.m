function A = funcao_troca(k, n, A)
         % pesquisar maior modulo da coluna k a partir da linha k
         maior_valor = abs(A(k,k));
         linha_maior_valor = k;
         for i=k+1:n
             if abs(A(i,k))>maior_valor
                maior_valor       = abs(A(i,k));
                linha_maior_valor = i;
             end
         end
         % troca de linhas
         aux                    = A(k,:);
         A(k,:)                 = A(linha_maior_valor,:);
         A(linha_maior_valor,:) = aux;
end
