//作者:陳柏瑄
//學號: 110816025
//參考至：https://github.com/HouariZegai/Calculator/blob/master/src/com/houarizegai/calculator/Calculator.java
//操作說明:如MS Windows 的小算盤程式
//符合標準:
//1. 程式有意義且可以執行
//2. 支僅支援整數運算
//3. 支援小數運算
//差異處：
//1. 更改字體
//2. 直接顯示開根號、取log、x的y次方
//3. 調整視窗大小、顏色
//4. 重新調整Button.addActionListener寫法
//5. 更改數字鍵產生方式
//6. 重新調整程式結構
//7. 新增取log10
//自評:70
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.regex.*;
import javax.swing.*;
import java.lang.Math;

public class H7_110816025 {
    public static void main(String args[]) {
        new Calculaotr();
    }

    public static class Calculaotr {
        private static JFrame frm;
        private static JTextField text;
        private static JButton C, Back, Mod, Div, Mul, Sub, Add, Point, Equal, Square, Power, Ln, btn0, Log;
        private static JButton num[] = new JButton[10];
        private static char opt = ' ';
        private static boolean finish = true, continous = true;
        private static double val = 0;
        int[] x = { 5, 95, 185, 275, 365};
        int[] y = { 10, 90, 170, 250, 330, 410};

        private Calculaotr() {
            WindowGeneration();
            TextFieldGeneration();
            ButtonGeneraiton();
            frm.setVisible(true);
        }

        private void WindowGeneration() { //產生視窗
            frm = new JFrame("MS Calculator");
            frm.setSize(465, 530);
            frm.setBackground(Color.BLUE.darker());
            frm.setLocationRelativeTo(null);
            frm.setResizable(false);
            frm.setLayout(null);
            frm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        }

        private void TextFieldGeneration() { //產生顯示運算結果的textfield
            text = new JTextField("0");
            text.setBounds(x[0], y[0], 440, 70);
            text.setFont(new Font("Segoe UI", Font.PLAIN, 33));
            text.setEditable(false);
            text.setBackground(Color.WHITE);
            text.setHorizontalAlignment(JTextField.RIGHT);
            frm.add(text);
        }

        private void ButtonGeneraiton() { //產生Button
            //產生C鍵
            C = new JButton("C");
            C.setBounds(x[0], y[1], 80, 70);
            C.setFont(new Font("Segoe UI", Font.PLAIN, 33));
            C.setFocusPainted(false);
            C.addActionListener(new ActLis());
            frm.add(C);
            //產生刪除鍵
            Back = new JButton("<=");
            Back.setBounds(x[1], y[1], 80, 70);
            Back.setFont(new Font("Segoe UI", Font.PLAIN, 33));
            Back.setFocusPainted(false);
            Back.addActionListener(new ActLis());
            frm.add(Back);
            //產生取餘數鍵
            Mod = new JButton("%");
            Mod.setBounds(x[2], y[1], 80, 70);
            Mod.setFont(new Font("Segoe UI", Font.PLAIN, 33));
            Mod.setFocusPainted(false);
            Mod.addActionListener(new ActLis());
            frm.add(Mod);
            //產生除鍵
            Div = new JButton("/");
            Div.setBounds(x[3], y[1], 80, 70);
            Div.setFont(new Font("Segoe UI", Font.PLAIN, 33));
            Div.setFocusPainted(false);
            Div.addActionListener(new ActLis());
            frm.add(Div);
            //產生乘鍵
            Mul = new JButton("*");
            Mul.setBounds(x[3], y[2], 80, 70);
            Mul.setFont(new Font("Segoe UI", Font.PLAIN, 33));
            Mul.setFocusPainted(false);
            Mul.addActionListener(new ActLis());
            frm.add(Mul);
            //產生減鍵
            Sub = new JButton("-");
            Sub.setBounds(x[3], y[3], 80, 70);
            Sub.setFont(new Font("Segoe UI", Font.PLAIN, 33));
            Sub.setFocusPainted(false);
            Sub.addActionListener(new ActLis());
            frm.add(Sub);
            //產生加鍵
            Add = new JButton("+");
            Add.setBounds(x[3], y[4], 80, 70);
            Add.setFont(new Font("Segoe UI", Font.PLAIN, 33));
            Add.setFocusPainted(false);
            Add.addActionListener(new ActLis());
            frm.add(Add);
            //產生小數點鍵
            Point = new JButton(".");
            Point.setBounds(x[0], y[5], 80, 70);
            Point.setFont(new Font("Segoe UI", Font.PLAIN, 33));
            Point.setFocusPainted(false);
            Point.addActionListener(new ActLis());
            frm.add(Point);
            //產生0鍵
            btn0 = new JButton("0");
            btn0.setBounds(x[1], y[5], 80, 70);
            btn0.setFont(new Font("Segoe UI", Font.PLAIN, 33));
            btn0.setFocusPainted(false);
            btn0.addActionListener(new ActLis());
            frm.add(btn0);
            //產生等於鍵
            Equal = new JButton("=");
            Equal.setBounds(x[2], y[5], 170, 70);
            Equal.setFont(new Font("Segoe UI", Font.PLAIN, 33));
            Equal.setFocusPainted(false);
            Equal.addActionListener(new ActLis());
            frm.add(Equal);
            //產生開根號鍵
            Square = new JButton("√");
            Square.setBounds(x[4], y[1], 80, 70);
            Square.setFont(new Font("Segoe UI", Font.PLAIN, 33));
            Square.setFocusPainted(false);
            Square.addActionListener(new ActLis());
            frm.add(Square);
            //產生x的y次方鍵
            Power = new JButton("x^y");
            Power.setBounds(x[4], y[2], 80, 70);
            Power.setFont(new Font("Segoe UI", Font.PLAIN, 28));
            Power.setFocusPainted(false);
            Power.addActionListener(new ActLis());
            frm.add(Power);
            //產生Ln鍵
            Ln = new JButton("ln");
            Ln.setBounds(x[4], y[3], 80, 70);
            Ln.setFont(new Font("Segoe UI", Font.PLAIN, 28));
            Ln.setFocusPainted(false);
            Ln.addActionListener(new ActLis());
            frm.add(Ln);
            //產生Log鍵
            Log = new JButton("log");
            Log.setBounds(x[4], y[4], 80, 70);
            Log.setFont(new Font("Segoe UI", Font.PLAIN, 28));
            Log.setFocusPainted(false);
            Log.addActionListener(new ActLis());
            frm.add(Log);
            //產生數字鍵
            /*   
            |   C  <-   %   /   |   y[1] => i
            |   7   8   9   *   |   y[2]
            |   4   5   6   -   |   y[3]
            |   1   2   3   +   |   y[4]
            |   .   0     =     |   y[5]
            x[0] x[1] x[2] x[3] => j  
            */
            for (int i = 2, k = 5; i < 5; i++, k -= 4) {
                for (int j = 0; j < 3; j++) {
                    num[i + j + k] = new JButton(Integer.toString(i + j + k));
                    num[i + j + k].setBounds(x[j], y[i], 80, 70);
                    num[i + j + k].setFont(new Font("Segoe UI", Font.PLAIN, 33));
                    num[i + j + k].setFocusPainted(false);
                    num[i + j + k].addActionListener(new ActLis());
                    frm.add(num[i + j + k]);
                }
            }
        }

        private static class ActLis implements ActionListener { 
            public void actionPerformed(ActionEvent e){ // override actionlistener
                Object btn = e.getSource();
                for (int i = 1; i < 10; i++) { //判斷按下的是否為數字鍵
                    if (btn == num[i]) {
                        if (continous) { //判斷之前是否有按過數字鍵
                            if (Pattern.matches("[0]*", text.getText())) //判斷0有出現一次
                                text.setText(Integer.toString(i)); //直接印數字
                            else //完全沒有0
                                text.setText(text.getText() + Integer.toString(i)); //加在後面
                        }
                        else{ //之前沒按過，直接加在後面
                            text.setText(Integer.toString(i)); //直接印數字
                            continous = true; //標記之前有按過按鍵
                        }
                        finish = true; //確認(暫時)輸入完整
                    }
                }
                if(btn == Mod || btn == Div || btn == Mul || btn == Sub || btn == Add || btn == Equal || btn == Square || btn == Power || btn == Ln || btn == Log) {
                    //如果是取餘數、除法、乘法、減法、加法、等於、開根號、x的y次方、取ln或取log
                    if (Pattern.matches("([-]?\\d+[.]\\d*)|(\\d+)", text.getText())) {
                        //判斷之負號是否出現、或是有數字加小數點、或是純數字
                        if (finish) { //確認輸入完整
                            if (btn == Square) //開根號
                                val = Math.sqrt(Double.parseDouble(text.getText()));
                            else if (btn == Ln) //取ln
                                val = Math.log(Double.parseDouble(text.getText()));
                            else if (btn == Log) // 取log
                                val = Math.log10(Double.parseDouble(text.getText())); 
                            else //計算值
                                val = cal(val, text.getText(), opt);
                            printValue(); //印出值
                            if (btn == Mod) //更改運算子
                                opt = '%';
                            else if(btn == Div) //更改運算子
                                opt = '/';
                            else if(btn == Mul) //更改運算子
                                opt = '*';
                            else if(btn == Sub) //更改運算子
                                opt = '-';
                            else if(btn == Add) //更改運算子
                                opt = '+';
                            else if(btn == Equal) //更改運算子
                                opt = '=';
                            else if(btn == Square) //更改運算子
                                opt = 's';
                            else if(btn == Power) //更改運算子
                                opt = '^';
                            else if(btn == Ln) //更改運算子
                                opt = 'l';  
                            continous = false; //確認最後一個不是輸入數字
                        }
                    }
                }
                else if(btn == btn0){ //如果輸入0
                    if (continous) { //判斷之前是否有按過
                        if (Pattern.matches("[0]*", text.getText())) //判斷0有出現一次
                            text.setText("0"); //直接印0
                        else //完全沒有0
                            text.setText(text.getText() + "0"); //加在後面
                    }
                    else { //之前沒按過，直接加在後面
                        text.setText("0"); //直接印0
                        continous = true; //標記之前有按過按鍵
                    }
                    finish = true; //確認(暫時)輸入完整
                }
                
                else if (btn == Point) { //判斷是否有按小數點
                    if (continous) //判斷之前是否有按過
                        text.setText(text.getText() + "."); //加在後面
                    else { //之前沒按過，直接加在後面
                        text.setText("0."); //直接印0.
                        continous = true; //標記之前有按過按鍵
                    }
                    finish = true; //確認(暫時)輸入完整
                }

                else if (btn == Back) {  //判斷是否有按刪除鍵
                    String str = text.getText();
                    StringBuilder strb = new StringBuilder();
                    for (int i = 0; i < (str.length() - 1); i++) //讀到先前字串倒數第一個數字
                        strb.append(str.charAt(i)); //一個一個加到另一個字串
                    if (strb.toString().equals("")) //如果只有一個數字
                        text.setText("0"); //把字串設成0
                    else
                        text.setText(strb.toString()); //輸出字串
                }

                else if (btn == C) { //判斷是否有按清除鍵
                    text.setText("0"); //把字串設成0
                    opt = ' '; //運算子初始化
                    val = 0; //運算值初始化
                }
            }

            private static void printValue(){ //印出值
                if (Pattern.matches("[-]?[\\d]+[.][0]*", String.valueOf(val))) //判斷是否有小數點負號
                    text.setText(String.valueOf((int) val)); //強制型態轉換
                else
                    text.setText(String.valueOf(val)); //直接印出
            }

            private static double cal(double x, String input, char opt) { //計算值
                double y = Double.parseDouble(input);
                if (opt == '+') //加號
                    return x + y; //回傳a+b
                else if (opt == '-') //減號
                    return x - y; //回傳a-b
                else if (opt == '*') //乘號
                    return x * y;//回傳a*b
                else if (opt == '/') //除號
                    return x / y; //回傳a/b
                else if (opt == '%') //取餘數
                    return x % y; //回傳a%b
                else if (opt == '^') //a的b次方
                    return Math.pow(x, y); //回傳a的b次方
                return y;
            }
        }
    }
}