package javaTest;


import static org.junit.Assert.*;

import org.junit.Test;

// ** Book class
// => 맴버필드 3개 정의, 멤버필드 3개를 초기화하는 생성자
// => 접근범위는 default

class Book{
	String author;
	String title;
	int price;
	
	Book(String author, String title, int price){
		this.author=author;
		this.title=title;
		this.price=price;
	}
	
	public boolean isBook(boolean b) {
		return b;
	}
} //Book

//** @ 종류
//=> @Before - @Test - @After
//=> @ 적용 메서드 : non static, void 로 정의 해야 함.

//** org.junit.Assert 가 지원하는 다양한 Test용 Method 
//1) assertEquals(a,b) : a와 b의 값(Value) 이 같은지 확인
//2) assertSame(a,b) : 객체 a와b가 같은 객체임(같은 주소) 을 확인
//3) assertTrue(a) : a가 참인지 확인
//4) assertNotNull(a) : a객체가 Null 이 아님을 확인
//5) assertArrayEquals(a,b) : 배열 a와b가 일치함을 확인


public class Ex01_BookTest {
	 
	//1) assertEquals(a,b) : a와 b의 값(Value) 이 같은지 확인
	public void equalsTest() {
		Book b1 = new Book("Java","정복",9900);
		//assertEquals(b1.author, "Java"); //true : 그린 라인 , 항상 boolean 형식
		assertEquals(b1.author, "자바"); //false : 레드 라인 
	 }
	
	
	//2) assertSame(a,b) : 객체 a와b가 같은 객체임(같은 주소) 을 확인
	public void SameTest() {
		Book b1 = new Book("Java","정복",9900);
		Book b2 = new Book("Java","정복",9900);
		Book b3 = new Book("톨스토이","죄",10000);
		b3=b1; //true
		assertSame(b1, b3); 
	 }
	 
	 //3) assertTrue(a) : a가 참인지 확인
	 public void TrueTest() {
		 Book b1 = new Book("톨스토이","죄",10000);
		 assertTrue(b1.isBook(false)); //레드라인
		 //assertTrue(b1.isBook(true)); //그린라인
	 }
	 
	 //4) assertNotNull(a) : a객체가 Null 이 아님을 확인
	 public void NotNullTest() {
		 Book b1 = new Book("톨스토이","죄",10000);
		 System.out.println("*** b1 = > "+b1);
		 assertNotNull(b1); // 그린라인
	 }
	 
	 @Test
	 //5) assertArrayEquals(a,b) : 배열 a와b가 일치함을 확인
	 public void ArrayEqualsTest() {
		 String[] a1= new String[] {"가","나","다"}; 
		 String[] a2= new String[] {"가","나","다"}; 
		 String[] a3= new String[] {"가","다","나"}; 
		 String[] a4= new String[] {"가","다","라"}; 

		 // 5.1) 두배열의 순서, 값 모두 동일 (a1, a2)
		 assertArrayEquals(a1, a2); // 그린라인
		 // 5.2) 두배열의 순서는 다르고, 값 모두 동일 (a1, a3)
		 assertArrayEquals(a1, a3); //레드라인
		 // 5.3) 모두 다른경우 (a1, a4)
		 assertArrayEquals(a1, a4); //레드라인
	 }	








} //class
