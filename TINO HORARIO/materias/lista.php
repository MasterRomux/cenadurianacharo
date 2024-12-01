<?php
include '../includes/db.php'; // Conexión a la base de datos

// Consulta para obtener la lista de materias con los docentes que las imparten
$sql = "SELECT m.id, m.nombre AS materia_nombre, m.programa, GROUP_CONCAT(d.nombre SEPARATOR ', ') AS docentes
        FROM materias m
        LEFT JOIN docente_materia dm ON m.id = dm.id_materia
        LEFT JOIN docentes d ON dm.id_docente = d.id
        GROUP BY m.id, m.nombre, m.programa";

$result = mysqli_query($conn, $sql);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Materias</title>
    <link rel="stylesheet" href="../css/materias.css"> 
</head>
<body>
    <header class="main-header">
        <div class="logo-container">
            <img src="../logo_escuela.png" alt="Logo Escuela" class="logo">
            <img src="../logo_sep.png" alt="Logo SEP" class="logo">
        </div>
        <nav class="navbar">
            <ul>
                <li><a href="../index.php">Inicio</a></li>
                <li><a href="../docentes/lista.php">Docentes</a></li>
                <li><a href="../grupos/lista.php">Grupos</a></li>
                <li><a href="../horarios/index.php">Horarios</a></li>
                <li><a href="lista.php" class="active">Materias</a></li>
                <li><a href="../acercade.html">Acerca de</a></li>
            </ul>
        </nav>
        <h1 id="titulo-pagina">Gestión de Materias</h1>
    </header>

    <main class="content">
        <h2>Lista de Materias y Docentes</h2>
        <table class="styled-table">
            <thead>
                <tr>
                    <th>Materia</th>
                    <th>Programa</th>
                    <th>Docentes</th>
                </tr>
            </thead>
            <tbody>
                <?php if (mysqli_num_rows($result) > 0): ?>
                    <?php while ($row = mysqli_fetch_assoc($result)): ?>
                        <tr>
                            <td><?= $row['materia_nombre']; ?></td>
                            <td><?= $row['programa']; ?></td>
                            <td><?= $row['docentes'] ? $row['docentes'] : 'Ningún docente asignado'; ?></td>
                        </tr>
                    <?php endwhile; ?>
                <?php else: ?>
                    <tr>
                        <td colspan="3">No se encontraron materias</td>
                    </tr>
                <?php endif; ?>
            </tbody>
        </table>
    </main>
</body>
</html>
