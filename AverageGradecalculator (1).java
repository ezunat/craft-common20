package com.craftAssignment;

import java.util.Scanner;

public class AverageGradecalculator {

	
		// TODO Auto-generated method stub
		public static void main(String[] args) {
			// TODO Auto-generated method stub
			Scanner sc = new Scanner(System.in);

	        // Prompt user to enter the number of subjects
	        System.out.print("Enter the number of subjects: ");
	        int numSubjects = sc.nextInt();

	        // Array to store scores of each subject
	        int[] scores = new int[numSubjects];

	        // Prompt user to enter scores for each subject
	        for (int i = 0; i < numSubjects; i++) {
	            System.out.print("Enter the score for subject " + (i + 1) + ": ");
	            scores[i] = sc.nextInt();
	        }

	        // to Calculate the total score we use inhanced loop
	        int totalScore = 0;
	        for (int score : scores) {
	            totalScore += score;// or we can do totalScore=totalScore+scores
	        }

	        // Calculate the average grade
	        double averageGrade = (double) totalScore / numSubjects;

	        // Display the average grade
	        System.out.println("Average grade: " + averageGrade);

		
	}

}
