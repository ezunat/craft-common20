package Assignment1;

import java.util.Scanner;

public class GradeAverageDemo {

	public static void main(String[] args) {
		
		Scanner x = new Scanner(System.in);
		
		System.out.println("how many subjects do you have?" );
		int numsubs = x.nextInt();
		double[] scores = new double[numsubs];
		
		double sum = 0;
		for (int i = 0; i < scores.length; i ++) {
			System.out.print("Enter the score for subject " + (i + 1 )+ ":");
			double grades = x.nextInt();
			 
		   sum = sum + grades;
		   	
		}
		
		double averageGrade = sum/numsubs;
		
		System.out.print("Average grade: " + averageGrade);
		
	}

}
