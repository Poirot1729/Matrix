import os
x=os.system('cls')
print "================================================================================\n"

print "MATRIX CALCULATOR"
print "\n================================================================================\n"
print "1. Matrix Multiplication"

print "2. Determinant"

print "\n================================================================================\n"

x=input("Enter your choice: ")
if x>2:
	print "Invalid Choice"
	input()
	x=os.system('cls')
	exit()

#initialize Matrix A
n=input("Enter size of matrix: ")
a=[[0 for row in range(n)] for col in range(n)]
print "Matrix A"
for i in range(n):
	for j in range(n):
		a[i][j]=input()
if x==1:

#initialize matrix B
	b=[[0 for row in range(3)] for col in range(3)]
	print "Matrix B"
	for i in range(3):
		for j in range(3):
			b[i][j]=input()

#initialize matrix C
	c=[[0 for row in range(3)] for col in range(3)]

#calculate matA*MatB
	for i in range(3):
		for j in range(3):
			for k in range(3):
    				c[i][j]+=a[i][k]*b[k][j]

	x=os.system('cls')
#print Matrix A
	print("Matrix A:",'\n')
	for i in range(3):
		for j in range(3):
			print a[i][j],'\t',
		print

#print matrix B
	print "Matrix B:",'\n'
	for i in range(3):
		for j in range(3):
			print b[i][j],'\t',
		print

#print result
	print "Resultant Matrix C",'\n'
	for i in range(3):
		for j in range(3):
			print c[i][j],'\t',
		print
	

elif x==2:
	from copy import deepcopy
	if len(a)==2:
		det=a[0][0]*a[1][1]-a[1][0]*a[0][1]
	else:
		def minor(a,x):
			min=0
			mat=deepcopy(a)
			del mat[0]
			del mat[0][x]
			del mat[1][x]
			min=mat[0][0]*mat[1][1]-mat[1][0]*mat[0][1]
			return min

		det =0
		k=1
		for i in range(3):
			det+=k*a[0][i]*minor(a,i)
			k*=-1
	print det
	input()		

print "================================================================================"
input()
