import java.util.Vector;
import java.util.Date;

class MessagePassingDemo{
	public static void main(String[] args) throws Exception{
		Producer p = new Producer();
		Consumer c = new Consumer(p);
		p.start();
		c.start();
	}
}

class Producer extends Thread{
	Vector v = new Vector();
	int MAX = 5;
	public void run(){
		while(true){
			try{
				putMessage();
				Thread.sleep(1000);
			}catch(Exception e){}
		}
	}
	public synchronized void putMessage() throws InterruptedException{
		if(v.size() == MAX){
			wait();
		}
		v.addElement(new Date().toString());
		notify();
	}
	public synchronized String getMessage() throws InterruptedException{
		if(v.size() == 0)
			wait();
		String msg = (String)v.firstElement();
		v.removeElement(msg);
		notify();
		return msg;

	}
}
class Consumer extends Thread{

	Producer p;
	Consumer(Producer p){
		this.p = p;
	}
	public void run(){
		while(true){
			try{
				String msg = p.getMessage();
				System.out.println("Got the Mesaage = "+msg);
				Thread.sleep(1000);
			}catch(Exception e){}
		}
	}
}

