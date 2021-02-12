format long
A=[0 2 1;
   1 0 2;
  -4 2 1]
B=[3;2;1]
#vamos resolver o sistema Ax=B
#x=A^-1*B
#x=inv(A)*B
#x= A\B
#metodo nosso
x=metodo_nosso(A,B) #fakta  
residuos=max(abs(A*x-B))
