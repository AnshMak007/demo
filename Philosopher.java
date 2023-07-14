import java.util.Date;

public class Philosopher implements Runnable {
    private Object leftFork;
    private Object rightFork;

    public Philosopher (Object LeftFork, Object rightFork) { 
        this.leftFork = leftFork;
        this.rightFork = rightFork;
    }

    private void doAction(String action) throws InterruptedException {
        System.out.println(Thread.currentThread().getName() + action);
        Thread.sleep(((int) (Math.random() * 250)));
    }
    
    public void run() { 
        try {
            while (true) { // thinking 
                doAction(new Date()+" Thinking");
                synchronized (leftFork) { 
                    doAction(new Date()+": Picked up left fork"); 
                    synchronized (rightFork) { 
                        // eating 
                        doAction(new Date() + ": Picked up right fork - eating"); 
                        doAction(new Date() + ": Put down right fork");
                    }
                    // Back to thinking 
                    doAction(new Date() + ": Put down left fork. Back to thinking");

                }
            }
        }catch (InterruptedException e) { 
            Thread.currentThread().interrupt();    
            return;
        }
    }
}