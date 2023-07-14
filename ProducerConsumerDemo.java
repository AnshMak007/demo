//Implementation of Producer Consumer Problem in Java

import java.util.*;
import java.lang.*;
class ProducerConsumerDemo{
	public static void main(String[] args) throws Exception{
		PC pc = new PC();
		Thread t1 = new Thread(){
			public void run(){
				try{
					pc.produce();
				}catch(Exception e){}
			}
		};
		Thread t2 = new Thread(){
			public void run(){
				try{
					pc.consume();
				}catch(Exception e){}
			}
		};

		t1.start();
		t2.start();

		t1.join();
		t2.join();
	}
}

class PC{

	LinkedList<Integer> list = new LinkedList<Integer>();
	int capacity = 4;

	public void produce() throws Exception{
		int value=0;
		while(true){
			synchronized(this){
				if(list.size() == 4)
					notify();	
				if(list.size() == capacity)
					wait();

				list.add(value);
				System.out.println("Producer produced : "+value);
				value++;
				Thread.sleep(1000);

				notify();
			}
		}
	}
	public void consume() throws Exception{
		int value=0;
		while(true){
			synchronized(this){

				if(list.size() == 0)
					notify();
				if(list.size() == 0)
					wait();

				list.removeFirst();
				System.out.println("Consumer consumed : "+value);
				value++;
				Thread.sleep(1000);

				notify();
			}
		}
	}
}
