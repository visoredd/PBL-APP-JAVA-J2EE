import java.io.*;
import java.util.*;
class Employee{
	public int id;
	public String name;
	public String address;
	public double salary;
	Employee(int id, String name, String address, double salary){
		this.id=id;
		this.name=name;
		this.address=address;
		this.salary=salary;		
	}
	public void printEmp() {
		System.out.println("ID: "+id+"  Name: "+name+"  Address: "+address+"  Salary: "+salary);
	}
}
public class E2 {
	public static void main(String args[]) {
		ArrayList<Employee> al = new ArrayList<>();
		Employee e1 = new Employee(101,"Madan","Radaur,Haryana",50000);
		Employee e2 = new Employee(102,"Katien","Kurukshetra,Haryana",55000);
		Employee e3 = new Employee(103,"Shree","Yamuna Nagar,Haryana",60000);
		Employee e4 = new Employee(104,"Aman","Panchkula,Haryana",40000);
		Employee e5 = new Employee(105,"Devu","Panipat,Haryana",45000);
		al.add(e1);
		al.add(e2);
		al.add(e3);
		al.add(e4);
		al.add(e5);
		al.forEach(n->n.printEmp());
	}
}
