package OS;

public class Array {
    private int baseAddress;
    private int size;
    private static Object[] fakeMemory = new Object[32767];

    public Array(int size) {
        this.size = size;
        this.baseAddress = Memory.alloc(size);
    }

    public static Array setBaseAddress(int address){
        Array ret = new Array(100);
        ret.baseAddress = address;
        return ret;
    }

    public int get(int index) {
        if (index < 0 || index >= size) {
            throw new IndexOutOfBoundsException("Array index out of bounds");
        }
        if(fakeMemory[index] != null){
            return 0;
        }else{
            return Memory.peek(baseAddress + index);
        }  
    }

    public void set(int index, int value) {
        if (index < 0 || index >= size) {
            throw new IndexOutOfBoundsException("Array index out of bounds");
        }
        Memory.poke(baseAddress + index, value);
    }

    public void set(int index, String value) {
        if (index < 0 || index >= size) {
            throw new IndexOutOfBoundsException("Array index out of bounds");
        }
        for(int i = 0; i < value.length(); i++){
            int ascii = (int) value.charAt(i); 
            Memory.poke(baseAddress + i, ascii);
        }
    }

    public void set(int index, Object value) {
        if (index < 0 || index >= size) {
            throw new IndexOutOfBoundsException("Array index out of bounds");
        }
        fakeMemory[baseAddress + index] = value;
    }

    public int getBaseAddress(){
        return baseAddress;
    }

    public void dispose() {
        for(int i = baseAddress; i < baseAddress+size; i++){
            Memory.poke(i,0);
            fakeMemory[i] = null;
        }
        return;
    }
}
