<%--
//作者:陳柏瑄
//學號:110816025
//操作說明:如MS Windows 的小算盤程式
//參考至上學期作業:https://github.com/tracklesstraveler/JavaPractice/blob/master/H7_110816025.java
//符合標準:
//1. 支援整數加減乘除計算
//2. 支援小數 
//3. 其他特別有用功能
//    (1)取log、ln
//    (2)a的b次方
//自評:100
--%>
<%@ page contentType="text/html; charset=utf-8" import="java.util.regex.*, java.lang.Math"%>
<HTML>
<HEAD>
<title>MS Calcultor</title>
</HEAD>
<body>
<%! 
    StringBuilder output = new StringBuilder("0"); 
    String numIn = "", oprIn = "";
    double val = 0;
    char opt = ' ';
    boolean finish = true, continous = false, point = false;
    double cal(double x, String input, char opt) { // 計算值
        double y = Double.parseDouble(input.toString());
        if (opt == '+')
            return x + y;
        else if (opt == '-')
            return x - y;
        else if (opt == '*')
            return x * y;
        else if (opt == '/')
            return x / y;
        else if (opt == '%')
            return x % y;
        else if (opt == '^')
            return Math.pow(x, y);
        return y;
    }
    StringBuilder printValue(StringBuilder input, double val){
        input.setLength(0);
        if (Pattern.matches("[-]?[\\d]+[.][0]*", String.valueOf(val))) //判斷是否有小數點負號
            return input.append(String.valueOf((int) val)); //強制型態轉換
        else
            return input.append(String.valueOf(val)); //直接印出
    }
%><%
    //取得輸入
    numIn = request.getParameter("num");
    oprIn= request.getParameter("opr");
    //判別輸入式數字或運算子
    if (numIn != null) {
        char[] num = numIn.toCharArray();
        //判別是否輸入為0
        if (num[0] == '0') {
            //判別是否有輸入過
            if (continous) {
                //判斷0有出現一次
                if (Pattern.matches("[0]*", output.toString())){
                    output.setLength(0); //直接輸出0
                    output.append("0");
                }
                else
                    output.append("0"); //加在後面
            }
            else {
                output.setLength(0); //直接輸出0
                output.append("0");
                continous = true; //標記之前有按過按鍵
            }
            finish = true; //確認(暫時)輸入完整
        }
        //判斷是否有輸入過且輸入不為"0"
        else if (continous) {
            //判斷0有出現一次
            if (Pattern.matches("[0]*", output.toString()))
                output.setCharAt(0, num[0]); //直接印數字
            else
                output.append(num[0]); //加在後面
        }
        //之前沒按過
        else {
            output.setLength(0); //歸零
            output.append(num[0]); //加在後面
            continous = true;
        }
        finish = true; //確認(暫時)輸入完整
        num[0] = ' ';
    }
    else if (oprIn != null) {
        char[] opr = oprIn.toCharArray();
        //確認輸入是否為清除鍵
        if (opr[0] == 'C') {
            output.setLength(0); //重設所有的值
            output.append("0");
            point = false;
            val = 0;
        }
        //確認是否為倒退鍵
        else if(opr[0] == '<') {
            StringBuilder strb = new StringBuilder();
            for (int i = 0; i < (output.length() - 1); i++) // 複製到輸出的長度減1
                strb.append(output.charAt(i));
            if (strb.toString().equals("")) { //如果只有一位直接歸零
                output.setLength(0);
                output.append("0");
                point = false;
            }
            else{
                output.setLength(0); //初始化輸出
                output.append(strb.toString()); //加在後面
            }
        }
        //確認是否為小數點
        else if(opr[0] == '.'){
            // 輸入過加在後面
            if (continous)
                output.append(".");
            //沒輸入過，輸出設為0.
            else {
                output.setLength(0);
                output.append("0.");
                continous = true;
            }
            point = true;
            finish = true;
        }
        //判斷之負號是否出現、或是有數字加小數點、或是純數字
        else if (Pattern.matches("([-]?\\d+[.]\\d*)|(\\d+)", output.toString())) {
            //取log、ln
            if (opr.length > 1 && opr[0] != '1' && opr[0] != 'x') {
                if (opr[0] == 'l' && opr[1] == 'o')
                    val = Math.log10(Double.parseDouble(output.toString()));
                else if (opr[0] == 'l' && opr[1] == 'n')
                    val = Math.log(Double.parseDouble(output.toString()));
            }
            // 1 / x
            else if (opr[0] == '1')
                val = 1 / Double.parseDouble(output.toString());
            else //計算值
                val = cal(val, output.toString(), opt);
            output = printValue(output, val); //印出值
            if (opr[0] == '+') //更改運算子
                opt = '+';
            else if (opr[0] == '-') //更改運算子
                opt = '-';
            else if (opr[0] == '*') //更改運算子
                opt = '*';
            else if (opr[0] == '/') //更改運算子
                opt = '/';
            else if (opr[0] == '%') //更改運算子
                opt = '%';
            else if (opr[0] == 'x') //更改運算子
                opt = '^';
            else if (opr[0] == '=') //更改運算子
                opt = '=';
            continous = false; //確認最後一個不是輸入數字
            point = false; //小數點重設
        }
    }
%>
<div style="width: 500px;height: 340px;position: absolute;top: 50%;left: 50%;margin: -170px 0 0 -250px;">
<FORM method=post name=form1 action="H1_110816025.jsp">
    <textarea name="outcome" row = "1" readonly=true style="width:480px;height:100px;font-size:80px;text-align:right;text-valign:bottom;border:2px blue none;resize:none;border:3px black double;overflow:hidden;"><%=output%></textarea>
    <br>
    <INPUT name=opr type=submit value="1/x" style="width:120px;height:40px;border:1px black solid;"><INPUT name=opr type=submit value="x^y" style="width:120px;height:40px;border:1px black solid;"><INPUT name=opr type=submit value="log(x)" style="width:120px;height:40px;border:1px black solid;"><INPUT name=opr type=submit value="ln(x)" style="width:120px;height:40px;border:1px black solid;">
    <br>
    <INPUT name=opr type=submit value="C" style="width:120px;height:40px;border:1px black solid;"><INPUT name=opr type=submit value="<" style="width:120px;height:40px;border:1px black solid;"><INPUT name=opr type=submit value="%" style="width:120px;height:40px;border:1px black solid;"><INPUT name=opr type=submit value="/" style="width:120px;height:40px;border:1px black solid;">
    <br>
    <INPUT name=num type=submit value="7" style="width:120px;height:40px;border:1px black solid;"><INPUT name=num type=submit value="8" style="width:120px;height:40px;border:1px black solid;"><INPUT name=num type=submit value="9" style="width:120px;height:40px;border:1px black solid;"><INPUT name=opr type=submit value="*" style="width:120px;height:40px;border:1px black solid;">
    <br>
    <INPUT name=num type=submit value="4" style="width:120px;height:40px;border:1px black solid;"><INPUT name=num type=submit value="5" style="width:120px;height:40px;border:1px black solid;"><INPUT name=num type=submit value="6" style="width:120px;height:40px;border:1px black solid;"><INPUT name=opr type=submit value="-" style="width:120px;height:40px;border:1px black solid;">
    <br>
    <INPUT name=num type=submit value="1" style="width:120px;height:40px;border:1px black solid;"><INPUT name=num type=submit value="2" style="width:120px;height:40px;border:1px black solid;"><INPUT name=num type=submit value="3" style="width:120px;height:40px;border:1px black solid;"><INPUT name=opr type=submit value="+" style="width:120px;height:40px;border:1px black solid;">
    <br>
    <INPUT name=opr type=submit value="." style="width:120px;height:40px;border:1px black solid;"><INPUT name=num type=submit value="0" style="width:120px;height:40px;border:1px black solid;"><INPUT name=opr type=submit value="=" style="width:240px;height:40px;border:1px black solid;">
</FORM>
</div>
</body>
</HTML>