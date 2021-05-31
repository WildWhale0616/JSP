<%--
//�@��:���fޱ
//�Ǹ�:110816025
//�ާ@����:�pMS Windows ���p��L�{��
//�ѦҦܤW�Ǵ��@�~:https://github.com/tracklesstraveler/JavaPractice/blob/master/H7_110816025.java
//�ŦX�з�:
//1. �䴩��ƥ[����p��
//2. �䴩�p�� 
//3. ��L�S�O���Υ\��
//    (1)��log�Bln
//    (2)a��b����
//�۵�:100
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
    double cal(double x, String input, char opt) { // �p���
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
        if (Pattern.matches("[-]?[\\d]+[.][0]*", String.valueOf(val))) //�P�_�O�_���p���I�t��
            return input.append(String.valueOf((int) val)); //�j��A�ഫ
        else
            return input.append(String.valueOf(val)); //�����L�X
    }
%><%
    //���o��J
    numIn = request.getParameter("num");
    oprIn= request.getParameter("opr");
    //�P�O��J���Ʀr�ιB��l
    if (numIn != null) {
        char[] num = numIn.toCharArray();
        //�P�O�O�_��J��0
        if (num[0] == '0') {
            //�P�O�O�_����J�L
            if (continous) {
                //�P�_0���X�{�@��
                if (Pattern.matches("[0]*", output.toString())){
                    output.setLength(0); //������X0
                    output.append("0");
                }
                else
                    output.append("0"); //�[�b�᭱
            }
            else {
                output.setLength(0); //������X0
                output.append("0");
                continous = true; //�аO���e�����L����
            }
            finish = true; //�T�{(�Ȯ�)��J����
        }
        //�P�_�O�_����J�L�B��J����"0"
        else if (continous) {
            //�P�_0���X�{�@��
            if (Pattern.matches("[0]*", output.toString()))
                output.setCharAt(0, num[0]); //�����L�Ʀr
            else
                output.append(num[0]); //�[�b�᭱
        }
        //���e�S���L
        else {
            output.setLength(0); //�k�s
            output.append(num[0]); //�[�b�᭱
            continous = true;
        }
        finish = true; //�T�{(�Ȯ�)��J����
        num[0] = ' ';
    }
    else if (oprIn != null) {
        char[] opr = oprIn.toCharArray();
        //�T�{��J�O�_���M����
        if (opr[0] == 'C') {
            output.setLength(0); //���]�Ҧ�����
            output.append("0");
            point = false;
            val = 0;
        }
        //�T�{�O�_���˰h��
        else if(opr[0] == '<') {
            StringBuilder strb = new StringBuilder();
            for (int i = 0; i < (output.length() - 1); i++) // �ƻs���X�����״�1
                strb.append(output.charAt(i));
            if (strb.toString().equals("")) { //�p�G�u���@�쪽���k�s
                output.setLength(0);
                output.append("0");
                point = false;
            }
            else{
                output.setLength(0); //��l�ƿ�X
                output.append(strb.toString()); //�[�b�᭱
            }
        }
        //�T�{�O�_���p���I
        else if(opr[0] == '.'){
            // ��J�L�[�b�᭱
            if (continous)
                output.append(".");
            //�S��J�L�A��X�]��0.
            else {
                output.setLength(0);
                output.append("0.");
                continous = true;
            }
            point = true;
            finish = true;
        }
        //�P�_���t���O�_�X�{�B�άO���Ʀr�[�p���I�B�άO�¼Ʀr
        else if (Pattern.matches("([-]?\\d+[.]\\d*)|(\\d+)", output.toString())) {
            //��log�Bln
            if (opr.length > 1 && opr[0] != '1' && opr[0] != 'x') {
                if (opr[0] == 'l' && opr[1] == 'o')
                    val = Math.log10(Double.parseDouble(output.toString()));
                else if (opr[0] == 'l' && opr[1] == 'n')
                    val = Math.log(Double.parseDouble(output.toString()));
            }
            // 1 / x
            else if (opr[0] == '1')
                val = 1 / Double.parseDouble(output.toString());
            else //�p���
                val = cal(val, output.toString(), opt);
            output = printValue(output, val); //�L�X��
            if (opr[0] == '+') //���B��l
                opt = '+';
            else if (opr[0] == '-') //���B��l
                opt = '-';
            else if (opr[0] == '*') //���B��l
                opt = '*';
            else if (opr[0] == '/') //���B��l
                opt = '/';
            else if (opr[0] == '%') //���B��l
                opt = '%';
            else if (opr[0] == 'x') //���B��l
                opt = '^';
            else if (opr[0] == '=') //���B��l
                opt = '=';
            continous = false; //�T�{�̫�@�Ӥ��O��J�Ʀr
            point = false; //�p���I���]
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