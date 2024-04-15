package com.craftAssignment;

import java.util.Scanner;

public class MatrixAddition {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
// first we use Scanner to accept value from keyboard
		Scanner in=new Scanner(System.in);
		// one matrix have row and column
		// with this scanner we can accept  number of columns and rows
		System.out.println(" enter a number of rows:");
		int rows=in.nextInt();//read the integer input from the user for the number of rows
		// we do for the column the same as rows 
		System.out.println(" enter the number of column:");
		int columns=in.nextInt();
		// initalize matrix A,B and  results with specfied number of rows and columns
	int [][] A =new int[rows][columns];
	int [][] B= new int[rows][columns];
    int [][]result=new int[rows][columns];
    // then we enter the element of matrix A that we insert value of column and row 
    // to insert values we use loop
    System.out.println(" element of matrix A:");
    for(int i=0; i<rows; i++){
      for (int j=0; j<columns; j++){
    	  A[i][j] = in.nextInt();// read the elements of matrix A
    	  }
      }
    //	then we do  for B also the same
    System.out.println("element of matrix B:");
    	  for(int i=0;i<rows; i++) {
    		  for(int j=0; j< columns;j++) {
    			 B[i][j]=in.nextInt();
    		  }
    	  }
    	  // then we do sum or matrix addtion
    	 //  using loop to add matrix A and B
    	  for(int i=0; i<rows; i++) {
    		  for (int j=0;j<columns; j++) {
    	 result[i][j]=A[i][j]+B[i][j];
    		  }
    	  }
    	  // then after we add our matrix we have to display our matrix
    	  System.out.println("sum of matrix");
    	  // to display our values we use loop again
    	  for(int i=0; i<rows;i++) {
    		  for(int j=0;j<columns; j++) {
    			  System.out.print(result[i][j] + "\t" );  
    		  }
    		  System.out.println();
    	  }
    	
    }
	
    
    }

