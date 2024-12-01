<?php

session_start();


include 'includes/db.php';

$error = '';
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    if ($_POST['captcha'] != $_SESSION['captcha_code']) {
        $error = 'El CAPTCHA es incorrecto.';
    } else {

        $username = mysqli_real_escape_string($conn, $_POST['username']);
        $password = md5($_POST['password']); 

 
        $query = "SELECT * FROM usuarios WHERE username = '$username' AND password = '$password'";
        $result = mysqli_query($conn, $query);

        if (mysqli_num_rows($result) == 1) {

            $_SESSION['username'] = $username;
            header('Location: inicio.php'); 
            exit;
        } else {
            $error = 'Usuario o contraseña incorrectos.';
        }
    }
}


function generateCaptcha()
{
    $chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    $captcha = '';
    for ($i = 0; $i < 6; $i++) {
        $captcha .= $chars[rand(0, strlen($chars) - 1)];
    }
    $_SESSION['captcha_code'] = $captcha;
    return $captcha;
}


if (!isset($_SESSION['captcha_code'])) {
    $_SESSION['captcha_code'] = generateCaptcha();
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Administración Escolar</title>
    <link rel="stylesheet" href="css/login.css">
    <script>
        
        function generateCaptcha() {
            const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
            let captcha = '';
            for (let i = 0; i < 6; i++) {
                captcha += chars[Math.floor(Math.random() * chars.length)];
            }
            document.getElementById('captcha-display').textContent = captcha;
            document.getElementById('captcha-input').value = '';
            document.getElementById('captcha-hidden').value = captcha;
        }
    </script>
</head>
<body>
    <header>
        <div class="logo-container">
            <img src="logo_escuela.png" alt="Logo Escuela" class="logo">
            <h1 class="title">Sistema de Administración Escolar</h1>
            <img src="logo_sep.png" alt="Logo SEP" class="logo">
        </div>
    </header>

    <main>
        <div class="form-container">
            <h2>Iniciar Sesión</h2>
            <?php if ($error): ?>
                <p class="error"><?php echo $error; ?></p>
            <?php endif; ?>
            <form action="" method="POST">
                <label for="username">Usuario:</label>
                <input type="text" name="username" id="username" required>

                <label for="password">Contraseña:</label>
                <input type="password" name="password" id="password" required>

                <label for="captcha">Captcha:</label>
                <div class="captcha-container">
                    <span id="captcha-display"><?php echo $_SESSION['captcha_code']; ?></span>
                    <button type="button" onclick="generateCaptcha()">Generar nuevo</button>
                </div>
                <input type="hidden" name="captcha" id="captcha-hidden" value="<?php echo $_SESSION['captcha_code']; ?>">
                <input type="text" name="captcha-input" id="captcha-input" required>

                <button type="submit" class="btn">Iniciar sesión</button>
            </form>
        </div>
    </main>
</body>
</html>
