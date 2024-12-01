<?php
include '../includes/db.php'; 


if (isset($_GET['id'])) {
    $id = $_GET['id'];

    
    $sql = "SELECT * FROM docentes WHERE id = ?";
    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, "i", $id);
    mysqli_stmt_execute($stmt);
    $resultado = mysqli_stmt_get_result($stmt);
    $docente = mysqli_fetch_assoc($resultado);


    if (!$docente) {
        die("Docente no encontrado.");
    }
} else {
    die("ID no especificado.");
}


if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $nombre = $_POST['nombre'];
    $rfc = $_POST['rfc'];
    $curp = $_POST['curp'];
    $correo = $_POST['correo'];
    $clave = $_POST['clave'];
    $horas_docencia = $_POST['horas_docencia'];
    $horas_descarga = $_POST['horas_descarga'];


    $sql = "UPDATE docentes SET nombre=?, rfc=?, curp=?, correo=?, clave=?, horas_docencia=?, horas_descarga=? WHERE id=?";
    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, "sssssiii", $nombre, $rfc, $curp, $correo, $clave, $horas_docencia, $horas_descarga, $id);
    mysqli_stmt_execute($stmt);


    header("Location: lista.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modificar Docente</title>
    <link rel="stylesheet" href="../css/docentes2.css"> 
</head>
<body>
    <header>
        <div class="header-logos">
            <img src="../logo_escuela.png" alt="Logo de la Escuela" class="logo">
            <h1 id="titulo-pagina">Modificar Docente</h1>
            <img src="../logo_sep.png" alt="Logo de la SEP" class="logo">
        </div>
    </header>

    <main>
        <section class="form-container">
            <h2>Editar información del docente</h2>
            <form method="post">
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" value="<?= htmlspecialchars($docente['nombre']); ?>" required>

                <label for="rfc">RFC:</label>
                <input type="text" id="rfc" name="rfc" value="<?= htmlspecialchars($docente['rfc']); ?>" required>

                <label for="curp">CURP:</label>
                <input type="text" id="curp" name="curp" value="<?= htmlspecialchars($docente['curp']); ?>" required>

                <label for="correo">Correo:</label>
                <input type="email" id="correo" name="correo" value="<?= htmlspecialchars($docente['correo']); ?>" required>

                <label for="clave">Clave:</label>
                <input type="text" id="clave" name="clave" value="<?= htmlspecialchars($docente['clave']); ?>" required>

                <label for="horas_docencia">Horas de Docencia:</label>
                <input type="number" id="horas_docencia" name="horas_docencia" value="<?= htmlspecialchars($docente['horas_docencia']); ?>" required>

                <label for="horas_descarga">Horas de Descarga:</label>
                <input type="number" id="horas_descarga" name="horas_descarga" value="<?= htmlspecialchars($docente['horas_descarga']); ?>" required>

                <button type="submit" class="btn">Guardar Cambios</button>
            </form>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Sistema de Gestión Escolar</p>
    </footer>
</body>
</html>
