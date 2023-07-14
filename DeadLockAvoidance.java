class DeadLockAvoidance {
	public static Object object1 = new Object();
	public static Object object2 = new Object();
	public static void main(String[] a) throws Exception {
		Thread t1 = new Thread1();
		Thread t2 = new Thread2();
		t1.start();
		t1.join();
		t2.start();
	}
	private static class Thread1 extends Thread {
		public void run() {
			synchronized (object1) {
				System.out.println("Thread 1: Holding lock 1...");
				try { Thread.sleep(1000); }
				catch (InterruptedException e) {}
				System.out.println("Thread 1: Waiting for lock 2...");
				try { Thread.sleep(1000); }
				catch (InterruptedException e) {}
				synchronized (object2) {
					System.out.println("Thread 2: Holding lock 1 & 2...");
				}
			}
		}
	}
	private static class Thread2 extends Thread {
		public void run() {
			synchronized (object2) {
				System.out.println("Thread 2: Holding lock 2...");
				try{ Thread.sleep(2000); }
				catch(InterruptedException e) {}
				System.out.println("Thread 2: Waiting for lock 1...");
				try{ Thread.sleep(2000); }
				catch(InterruptedException e) {}
				synchronized (object1) {
					System.out.println("Thread 2: Holding lock 2 & 1...");
				}
			}
		}
	}
}
