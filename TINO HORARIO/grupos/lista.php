<?php
include '../includes/db.php';


$query = "SELECT grado, grupo, turno, especialidad, modalidad FROM grupos ORDER BY grado, grupo";
$result = mysqli_query($conn, $query);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Grupos</title>
    <link rel="stylesheet" href="../css/grupos.css"> 
</head>
<body>
    <header class="main-header">
        <div class="logo-container">
            <img src="../logo_escuela.png" alt="Logo Escuela" class="logo">
            <img src="../logo_sep.png" alt="Logo SEP" class="logo">
        </div>
        <h1 id="titulo-pagina">Lista de Grupos Preestablecidos</h1>
    </header>

    <main class="content">
        <table class="styled-table">
            <thead>
                <tr>
                    <th>Grado</th>
                    <th>Grupo</th>
                    <th>Turno</th>
                    <th>Especialidad</th>
                    <th>Modalidad</th>
                </tr>
            </thead>
            <tbody>
                <?php while($row = mysqli_fetch_assoc($result)): ?>
                    <tr>
                        <td><?= $row['grado']; ?></td>
                        <td><?= $row['grupo']; ?></td>
                        <td><?= ucfirst($row['turno']); ?></td>
                        <td><?= $row['especialidad']; ?></td>
                        <td><?= $row['modalidad']; ?></td>
                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    </main>
</body>
</html>
