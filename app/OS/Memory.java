package OS;

public class Memory {
    static int[] ram;
    static PixelDrawer pixelDrawer;
    static int nextFreeAddress = 0;
    public Memory(){
        ram = new int[32767];
        ram[24576] = 0;
        pixelDrawer = new PixelDrawer();
    }

    public static int peek(int address){
        return ram[address];
    }

    public static void poke(int address, int value){
        ram[address] = value;
        if(address > 16383 && address < 24576){
            pixelDrawer.setPixel(address, value);
        }
        
    }

    public static int alloc(int size){
        int baseAddress = nextFreeAddress;
        nextFreeAddress += size;
        return baseAddress;
    }
    public static void deAlloc(Object o){
        return;
    }
}
