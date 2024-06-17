package OS;
public class Screen {

    static boolean isColored;
    static Integer[] twoToThe;

    public Screen(){
        isColored = true;
        twoToThe = new Integer[16];
        Integer val = 1;
        for(int i = 0; i < 16; i++){
            twoToThe[i] = val;
            val = val + val;
        }
    }

    public static void clearScreen(){
        for(int i = 16384; i < 24576; i++){
            Memory.poke(i, 0);
        }
    }

    public static void setColor(boolean b) {
        isColored = b;
    }

    public static void drawPixel(int x, int y) {
        //y*32 weil eine Zeile Screen 32 * 16 Bits hat.
        //x divide 16, weil zum bsp x = 15 zu gleichen adresse gehört wie x = 1.
        int address = (y*32) + (x/16);
        int value = Memory.peek(16384+address);
        if(isColored){
            //x&15 um zu bestimmen welcher bit von den 16 bits zu einer 1 werden soll
            value = twoToThe[x&15]|value;
        }else{
            value = (~twoToThe[x&15])&value;
        }
        Memory.poke(16384 + address, value);
    }

    public static void drawLine(int x1, int y1, int x2, int y2){
        int xStart,xEnd,yStart,yEnd;
        int dx = x2 - x1;
        int dy = y2 - y1;
        int a = 0;
        int b = 0;
        int diff = 0;

        //Waagerecht
        if(dy == 0){
            xStart = Math.min(x1,x2);
            xEnd = Math.max(x1,x2);
            while(xStart < (xEnd +1)){
                Screen.drawPixel(xStart,y1);
                xStart = xStart + 1;
            }
        }
        //Senkrecht
        if(dx == 0){
            yStart = Math.min(y1,y2);
            yEnd = Math.max(y1,y2);
            while(yStart < (yEnd +1)){
                Screen.drawPixel(x1,yStart);
                yStart = yStart + 1;
            }
        }
        if(dy > 0){
            //Von oben nach unten rechts
            if(dx > 0){
                while((a < (dx+1)) & (b < (dy+1))){
                    Screen.drawPixel(x1 + a, y1 + b);
                    if(diff < 0){
                        a = a + 1;
                        diff = diff + dy;
                    }else{
                        b = b + 1;
                        diff = diff - dx;
                    }
                }
            }
            //Von oben nach unten links
            if(dx < 0){
                while((a > (dx-1)) & (b < (dy+1))){
                    Screen.drawPixel(x1 + a, y1 + b);
                    if(diff < 0){
                        a = a - 1;
                        diff = diff + dy;
                    }else{
                        b = b + 1;
                        diff = diff + dx;
                    }
                }
            }
        }else{
            //Von unten nach oben rechts
            if(dx > 0){
                while((a < (dx+1)) & (b > (dy-1))){
                    Screen.drawPixel(x1 + a, y1 + b);
                    if(diff < 0){
                        a = a + 1;
                        diff = diff - dy;
                    }else{
                        b = b - 1;
                        diff = diff - dx;
                    }
                }
            }
            //Von unten nach oben links
            if(dx < 0){
                while((a > (dx-1)) & (b > (dy-1))){
                    Screen.drawPixel(x1 + a, y1 + b);
                    if(diff < 0){
                        a = a - 1;
                        diff = diff - dy;
                    }else{
                        b = b - 1;
                        diff = diff + dx;
                    }
                }
            }
        }
    }
    
    public static void drawRectangle(int x1, int y1, int x2, int y2){
        int dx = Math.abs(x2 - x1);
        int startX = Math.min(x1,x2);
        int startY = Math.min(y1,y2);
        int endY = Math.max(y1,y2);
        //Zeichnet senkrechte Linien bis i < dx. dx ist der Abstand zwischen x1 und x2
        for(int i = 0; i <= dx; i++){
            Screen.drawLine(startX + i,startY,startX + i,endY); 
        }
    }

    public static void drawCircle(int x, int y, int r){
        for(int dy = -r; dy < (r+1); dy++){
            int sqrt = Math.sqrt((r*r)-(dy*dy));
            Screen.drawLine(x-sqrt, y+dy, x+sqrt, y+dy);
        }
    }

}
