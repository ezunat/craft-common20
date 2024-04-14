package Assignment1;

import java.util.Scanner;

public class AverageGradecal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        // scanner is used to read input from various sources such as the keyboard or a file
		
		Scanner x = new Scanner (System.in);
		
		//prompt user to enter the number of subjects 
		
		  System.out.print("Enter the number of subjects: ");
	        int numSubjects = x.nextInt();
	        
	        // Array to store scores of each subject
	        int[] grades =  new int[numSubjects]; // the size of the array is determined by the variable numSubjects
	        
	        // prompt user to enter scores for each subject
	        for (int i = 0; i < numSubjects; i++) {
	        	System.out.print("Enter the grades for subject " + (i + 1) + " :");
	        	grades[i] = x.nextInt();
	        }
	        
	       // to calculate the total score we use enhanced loop 
	        
	        int totalgrade =0;
	        for (int grade : grades) {
	        	totalgrade += grade;
	        }
	        
	        //calculate the average grade 
	        
	        double averagegrade = (double) totalgrade / numSubjects;
	        
	        // display the average grade
	        
	        System.out.println("Average grade ;" + averagegrade);
	        
	        
	        
	        
	        
	        
	        
	}

}
