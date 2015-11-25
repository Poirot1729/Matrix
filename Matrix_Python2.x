'''
Matrix Calculator
Python 3.x

Made by:
Ebey Abraham
Ayaan Das
Christine 
Faima
Divya
'''

import os
ch='y'
flag=0

#Function to print matrix
def pr(c):
        for i in range(len(c)):
                for j in range(len(c[0])):
                        print(c[i][j],'\t',end=' ')
                print()

while ch=='y':
        x=os.system('cls')
        print("================================================================================\n")

        print("MATRIX CALCULATOR")
        print("\n================================================================================\n")
        print("1. Matrix ")
        print("2. Determinant")
        print("3. Exit")
        print("\n================================================================================\n")

        x=int(input("Enter your choice: "))
        if x>3:
                print("Invalid Choice")
                input()
                x=os.system('cls')
                exit()
        k=os.system('cls')

#Matrix 
        if x==1:
                
                x=os.system('cls')
                print("================================================================================\n")
                print("MATRIX CALCULATOR")
                print("\n================================================================================\n")
#initialize Matrix A
                r=int(input("Enter no. of rows of matrix A: "))
                c=int(input("Enter no. of coloumns of matrix A: "))
                a=[[0 for row in range(r)] for col in range(c)]
                print("Matrix A")
                for i in range(r):
                        for j in range(c):
                                a[i][j]=int(input())
                k=os.system('cls')
                print("Matrix A:")
                print("================================================================================\n")
                print("MATRIX CALCULATOR")
                print("\n================================================================================\n")
                pr(a)
                input()
                k=os.system('cls')
#initialize matrix B
                print("================================================================================\n")
                print("MATRIX CALCULATOR")
                print("\n================================================================================\n")
                r=int(input("Enter no. of rows of matrix B: "))
                c=int(input("Enter no. of coloumns of matrix B: "))
                b=[[0 for row in range(c)] for col in range(r)]
                print("Matrix B")
                for i in range(r):
                        for j in range(c):
                                b[i][j]=int(input())
                k=os.system('cls')
                print("Matrix B:")
                print("================================================================================\n")
                print("MATRIX CALCULATOR")
                print("\n================================================================================\n")
                pr(b)
                input()
                k=os.system('cls')
                
                while ch=='y':
                        x=os.system('cls')
                        print("================================================================================\n")
                        print("MATRIX CALCULATOR")
                        print("\n================================================================================\n")
                        print("1. Addition")
                        print("2. Subtraction")
                        print("3. Multiplication")
                        print("4. Exit")
                        print("\n================================================================================\n")
                        x=int(input("Enter your choice: "))
                
                        if x==1:
#calculate matA+MatB
                                if len(a)!=len(b) or len(a[0])!=len(b[0]):
                                        print("Cannot perform operation")
                                        input()
                                        continue
                                #initialize matrix C
                                c=[[0 for row in range(len(a))] for col in range(len(a))]
                                for i in range(3):
                                        for j in range(3):
                                                c[i][j]+=a[i][j]+b[i][i]
                        elif x==2:
#calculate matA-MatB
                                if len(a)!=len(b) or len(a[0])!=len(b[0]):
                                        print("Cannot perform operation")
                                        input()
                                        continue
                                #initialize matrix C
                                c=[[0 for row in range(len(a))] for col in range(len(a))]
                                for i in range(3):
                                        for j in range(3):
                                                c[i][j]+=a[i][j]-b[i][i]
                        elif x==3:
#calculate matA*MatB
                                if len(a[0])!=len(b):
                                        print("Cannot perform operation")
                                        input()
                                        continue
                                #initialize matrix C
                                c=[[0 for row in range(len(b[0]))] for col in range(len(a))]
                                for i in range(len(a)):
                                        for j in range(len(b[0])):
                                                for k in range(len(b)):
                                                        c[i][j]+=a[i][k]*b[k][j]
                        elif x==4:
                                flag=10
                                break
                        else:
                                print("Invalid choice")
                                flag=1
                        if flag!=1:
                                x=os.system('cls')
                                print("================================================================================\n")
                                print("MATRIX CALCULATOR")
                                print("\n================================================================================\n")
#print Matrix A
                                print("Matrix A:",'\n')
                                pr(a)

#print matrix B
                                print("\nMatrix B:",'\n')
                                pr(b)

#print result
                                print("\nResultant Matrix C",'\n')
                                pr(c)
                                input()
                        ch=input("Continue?(y/n)")
	

        elif x==2:
#initialize Matrix A
                r=int(input("Enter size matrix A: "))
                a=[[0 for row in range(r)] for col in range(r)]
                print("Matrix A")
                for i in range(r):
                        for j in range(r):
                                a[i][j]=int(input())
                from copy import deepcopy
#Function to find minor matrix
                def minor(matrix,i):
                        minor = deepcopy(matrix)
                        del minor[0]                                                            #Delete first row
                        for b in list(range(len(minor))):                                       #Delete column i
                                del minor[b][i]
                        return minor

                def det(A):
                        if len(A) == 1:                                                         #Base case on which recursion ends
                                return A[0][0]
                        else:
                                determinant = 0
                                for x in list(range(len(A))):                                   #Iterates along first row finding cofactors
                                        determinant += A[0][x] * (-1)**(2+x) * det(minor(A,x)) #Adds successive elements times their cofactors
                                return determinant
                print('Determinant of\n ')
                pr(a)
                print('\nis',det(a))
                
        elif x==3:
                k=os.system('cls')
                print("THANK YOU!")
                input()
                k=os.system('cls')
                exit()

        if flag!=10:
                ch=input("Go to main menu?(y/n)")
        x=os.system('cls')
