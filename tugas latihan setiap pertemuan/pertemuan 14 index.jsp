<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hitung Luas Trapesium</title>
</head>
<body>

<h2>Menghitung Luas Trapesium</h2>
<hr>

<form method="post">
    Garis Atas (Cm)  :
    <input type="number" name="atas" step="any" required><br><br>

    Garis Bawah (Cm):
    <input type="number" name="bawah" step="any" required><br><br>

    Tinggi (Cm)     :
    <input type="number" name="tinggi" step="any" required><br><br>

    <button type="submit">Hitung</button>
</form>

<hr>

<%
    // Java Code
    if (request.getMethod().equalsIgnoreCase("POST")) {

        double atas = Double.parseDouble(request.getParameter("atas"));
        double bawah = Double.parseDouble(request.getParameter("bawah"));
        double tinggi = Double.parseDouble(request.getParameter("tinggi"));

        double jumlah = atas + bawah;
        double kali = jumlah * tinggi;
        double luas = kali / 2;
%>

<h3>Proses Perhitungan</h3>
<p>Luas = (Garis Atas + Garis Bawah) × Tinggi ÷ 2</p>
<p>Luas = (<%= atas %> + <%= bawah %>) × <%= tinggi %> ÷ 2</p>
<p>Luas = <%= jumlah %> × <%= tinggi %> ÷ 2</p>
<p>Luas = <%= kali %> ÷ 2</p>

<h3>Hasil</h3>
<b>Luas = <%= luas %> Cm²</b>

<%
    }
%>

</body>
</html>
