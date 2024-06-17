package OS;
import java.awt.*;
import java.awt.event.*;

import javax.swing.*;

public class PixelDrawer extends JPanel{
    private int[][] pixels;

    public PixelDrawer() {
        JFrame frame = new JFrame("Pixel Drawer");
        pixels = new int[512][256];
        setPreferredSize(new Dimension(511, 255));
        frame.add(this);
        frame.pack();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);

        //KeyListener für Keyboard Input
        frame.addKeyListener(new KeyAdapter() {
            @Override
            public void keyPressed(KeyEvent e) {
                int keyCode = e.getExtendedKeyCode();
                switch (keyCode) {
                    case 16:
                        keyCode = 0;//Shift
                        break;
                    case 20:
                        keyCode = 0;//Feststelltaste
                        break;
                    case 10:
                        keyCode = 128; //new Line
                        break;
                    case 8:
                        keyCode = 129; //backspace
                        break;
                    case 37:
                        keyCode = 130; //left arrow
                        break;
                    case 38:
                        keyCode = 131; //up arrow
                        break;
                    case 39:
                        keyCode = 132; //right arrow
                        break;
                    case 40:
                        keyCode = 133; //down arrow
                        break;
                    case 524:
                        keyCode = 134; //home
                        break;
                    case 35:
                        keyCode = 135; //End
                        break;
                    case 33:
                        keyCode = 136; //page up
                        break;
                    case 34:
                        keyCode = 137; //page down
                        break;   
                    case 155:
                        keyCode = 138; //insert
                        break;
                    case 127:
                        keyCode = 139; //delete
                        break;
                    case 27:
                        keyCode = 140; //delete
                        break;
                    case 112:
                        keyCode = 141;//f1
                        break;
                    case 113:
                        keyCode = 142;//f2
                        break;
                    case 114:
                        keyCode = 143;//f3
                        break;
                    case 115:
                        keyCode = 144;//f4
                        break;
                    case 116:
                        keyCode = 145;//f5
                        break;
                    case 117:
                        keyCode = 146;//f6
                        break;
                    case 118:
                        keyCode = 147;//f7
                        break;
                    case 119:
                        keyCode = 148;//f8
                        break;
                    case 120:
                        keyCode = 149;//f9
                        break;
                    case 121:
                        keyCode = 150;//f10
                        break;
                    case 122:
                        keyCode = 151;//f11
                        break;
                    case 123:
                        keyCode = 152;//f12
                        break;
                    default:
                        keyCode = (int)e.getKeyChar();
                        break;
                }
                Memory.poke(24576, keyCode);
            }
            @Override
            public void keyReleased(KeyEvent e){
                Memory.poke(24576, 0);
            }
        });
        //Frame wartet auf Keyboard Input
        frame.setFocusable(true);
        frame.requestFocusInWindow();
    }

    public void setPixel(int z, int value) {
        Color color;
        int  address = z - 16384;
        int y =  address / 32; //32 * 16 bits in einer Zeile(bei 16416 würde y = 1 sein)
        int startX = (address % 32)*16;
        
        if (startX < 0 || startX >= 512 || y < 0 || y >= 256) {
            return; // Prüft ob die Koordinaten innerhalb des Arrays liegen
        }
        
        java.lang.String bin = Integer.toBinaryString(0x10000 | value).substring(1);
        for (int i = bin.length() - 1; i >= 0; i--){
            char c = bin.charAt(i);
            if(c == '1'){
                color = Color.BLACK;
            }else{
                color = Color.WHITE;
            }
            pixels[startX][y] = color.getRGB();
            startX++;
        }
        repaint();
    }

    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);

        // Hintergrund zeichnen
        g.setColor(Color.WHITE);
        g.fillRect(0, 0, getWidth(), getHeight());

        // Pixel zeichnen
        for (int x = 0; x < pixels.length; x++) {
            for (int y = 0; y < pixels[0].length; y++) {
                if (pixels[x][y] != 0) { // nur Pixel mit Farbwert zeichnen
                    g.setColor(new Color(pixels[x][y]));
                    g.fillRect(x, y, 1, 1);
                }
            }
        }
    }
}
