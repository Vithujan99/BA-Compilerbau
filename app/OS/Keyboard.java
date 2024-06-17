package OS;

public class Keyboard {

    public static char keyPressed() {
        int key = Memory.peek(24576);
        System.out.flush();
        return (char)key;
    }

    public static char readChar() {
        int c;
        while(Keyboard.keyPressed() == 0){
        }
        c = Memory.peek(24576);
        while(Keyboard.keyPressed() == c){
        }
        Output.printChar((char)c);
        return (char)c;
    }

    public static String readLine(String message) {
        Output.printString(message);
        String str = new String(100);
        while (true) {
            char c = readChar();
            if (c == String.newLine()) {
                Output.backSpace();
                Output.println();
                return str;
            }
            if (c == String.backSpace()) {
                str.eraseLastChar();
                Output.backSpace();
                Output.backSpace();
            } else {
                str.appendChar(c);
            }
        }
    }

    public static int readInt(String  message) {
        String str = Keyboard.readLine(message);
        return str.intValue();
    }
}
