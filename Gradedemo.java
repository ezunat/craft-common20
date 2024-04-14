package Assignment1;



public class Gradedemo {

	public static void main(String[] args) {
		// initialize an array of floating-point numbers
		

		int [] grades = {85, 90, 78};
		 for(int i = 0 ; i < 3; i++) {
			 System.out.println(grades[i]);
		 }
		
		// calculate the average
		
		double sum = 0;
		for (double grad : grades) {sum += grad;}
		
		//calculate the average
		
		double average = sum / 3;
		
		//print the average
		
		
		System.out.println("Average:" + average);

	}

}
