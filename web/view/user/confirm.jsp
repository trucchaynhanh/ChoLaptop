<%-- 
    Document   : confirm
    Created on : 4 Jul 2024, 06:43:43
    Author     : yeuda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Xác minh mật khẩu</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .password-form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 300px;
            text-align: center;
        }
        .password-form input {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }
        .password-form button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }
        .password-form button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="password-form">
        <h2>Xác minh mật khẩu</h2>
        <form onsubmit="return verifyPassword()">
            <input type="password" id="passwordInput" placeholder="Nhập mật khẩu" required>
            <br>
            <button type="submit">Xác minh</button>
        </form>
    </div>

    <script>
        function verifyPassword() {
            var password = document.getElementById('passwordInput').value;
            // Thay đổi logic kiểm tra mật khẩu ở đây
            if (password === '${account.password}') {
                alert('Mật khẩu đúng. Bạn sẽ được chuyển hướng đến trang khác.');
                window.location.href = 'authen?action=edit-infor'; // Thay đổi URL của trang muốn chuyển hướng
                return false; // Ngăn form submit để chuyển hướng bằng JavaScript
            } else {
                alert('Mật khẩu không đúng. Vui lòng thử lại.');
                return false; // Ngăn form submit
            }
        }
    </script>
</body>
</html>
