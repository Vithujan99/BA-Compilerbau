package OS;

import java.util.concurrent.TimeUnit;

public class Sys {
    public Sys(){
        new Memory();
        new Math();
        new Screen();
        new Output();
        new Keyboard();
    }

    public static void halt(){
        while(true){}
    }

    //duration in milliseconds
    public static void wait(int duration){
        try {
            TimeUnit.MILLISECONDS.sleep(duration);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public static void error(int errorCode){
        Output.printString("ERR");
        Output.printInt(errorCode);
        halt();
    }
}
