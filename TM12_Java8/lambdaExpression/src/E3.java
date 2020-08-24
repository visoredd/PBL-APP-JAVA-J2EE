import java.io.*;
import java.util.*;
public class E3 {
	public static void main(String args[]) {
		ArrayList<String> al = new ArrayList<>();
		al.add("Wipro");
		al.add("Technologies");
		al.add("Limited");
		al.add("Industrail");
		al.add("Engineering");
		al.add("Services");
		al.add("Business");
		al.add("Unit");
		al.add("Java_J2EE");
		al.add("Stream");
		al.forEach(n->{
			if(n.length()%2!=0) {
				System.out.println(n);
			}
		});
	}
}
