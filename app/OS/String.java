package OS;

public class String{
    int currentL,maxL;
    char[] charsA;

    public String(int maxLength){
        maxL = maxLength == 0 ? 1 : maxLength;
        charsA = new char[maxL];
        currentL = 0;
    }

    public void dispose(){
        
    }

    public int length(){
        return currentL;
    }

    public char charAt(int j){
        return charsA[j];
    }

    public void setCharAt(int j, char c){
        if(j < maxL){
            charsA[j] = c;
        }
    }

    public String appendChar(char c){
        if(currentL < maxL){
            charsA[currentL] = c;
            currentL = currentL + 1;
        }
        return this;
    }
    public void eraseLastChar() {
        if(currentL > 0){
            currentL = currentL - 1;
        }
    }
    
    public int intValue() {
        int i = 0;
        int sum = 0;
        boolean neg = false;
        
        if((int)charsA[0] == 45){
            neg = true;
            i = 1;
        }
        while (i < currentL){
            if((int)charsA[i] > 47 & (int)charsA[i] < 58){
                sum = (sum * 10) + ((int)charsA[i] - 48);
                i = i + 1;
            }else{
                i = currentL;
            }
        }
        if(neg){
            return -sum;
        }else{
            return sum;
        }
    }

    public void setInt(int val) {
        currentL = 0;
        if(val < 0){
            val = val * -1;
            appendChar((char)45);
        }else if(val == 0){
            appendChar((char)48);
        }
        setIntCalc(val);
    }

    public void setIntCalc(int val){
        int div;
        int lastNum;
        if(val > 0){
            div = val / 10;
            lastNum = val - (div * 10);
            setIntCalc(div);
            appendChar((char)(lastNum + 48));
        }
    }

    public static char newLine() {
        return 128;
    }

    public static char backSpace() {
        return 129;
    }

    public static char doubleQuote() {
        return 34;
    }
}
