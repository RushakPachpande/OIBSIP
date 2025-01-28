import java.util.Timer;

import java.util.TimerTask;



public class TimerManager {

    private Timer timer;

    private int secondsRemaining;



    public TimerManager(int durationInSeconds) {

        this.secondsRemaining = durationInSeconds;

        this.timer = new Timer();

    }



    public void start(Runnable onTimeUp) {

        timer.scheduleAtFixedRate(new TimerTask() {

            @Override

            public void run() {

                if (secondsRemaining > 0) {

                    System.out.println("Time left: " + secondsRemaining + " seconds");

                    secondsRemaining--;

                } else {

                    timer.cancel();

                    System.out.println("Time's up!");

                    onTimeUp.run();

                }

            }

        }, 0, 1000);

    }



    public void stop() {

        timer.cancel();

        System.out.println("Timer stopped.");

    }

}
