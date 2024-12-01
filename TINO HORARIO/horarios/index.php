<?php
include 'functions.php';
include 'db.php';


ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$grupos = getGrupos($conn);

if (isset($_GET['grupo'])) {
    $id_grupo = $_GET['grupo'];
    $horario = getHorario($conn, $id_grupo);
    $grupo_info = getGrupoInfo($conn, $id_grupo);
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Horarios</title>
    <link rel="stylesheet" href="../css/horario.css">
</head>
<body>
<div class="container">

    <header>
        <div class="logo-container">
            <img src="../logo_escuela.png" alt="Logo Escuela" class="logo">
            <img src="../logo_sep.png" alt="Logo SEP" class="logo">
        </div>
        <h1 class="title">Gestión de Horarios Escolares</h1>
    </header>
    <div class="mt-4">
        <a href="../inicio.php" class="btn btn-secondary">Regresar</a>
    </div>
    <br>
    
    <form method="GET" class="form-container">
        <label for="grupo" class="form-label">Selecciona un Grupo:</label>
        <select id="grupo" name="grupo" class="form-select">
            <?php foreach ($grupos as $grupo): ?>
                <option value="<?= $grupo['id'] ?>" <?= isset($id_grupo) && $id_grupo == $grupo['id'] ? 'selected' : '' ?>>
                    <?= "{$grupo['grado']}°{$grupo['grupo']} ({$grupo['especialidad']}) - {$grupo['turno']}" ?>
                </option>
            <?php endforeach; ?>
        </select>
        <button type="submit" class="btn">Ver Horario</button>
    </form>

    <?php if (isset($grupo_info)): ?>
        <div class="group-info">
            <h3>Información del Grupo</h3>
            <p><strong>Grado:</strong> <?= $grupo_info['grado'] ?>°</p>
            <p><strong>Grupo:</strong> <?= $grupo_info['grupo'] ?></p>
            <p><strong>Especialidad:</strong> <?= $grupo_info['especialidad'] ?></p>
            <p><strong>Modalidad:</strong> <?= $grupo_info['modalidad'] ?></p>
            <p><strong>Turno:</strong> <?= $grupo_info['turno'] ?></p>
            <p><strong>Aula:</strong> <?= $grupo_info['aula'] ?></p>
            <p><strong>Tutor:</strong> <?= $grupo_info['tutor'] ?></p>
            <br>
            <a href="crear_horario.php?grupo=<?= $id_grupo ?>" class="btn btn-success">Crear Horario</a>
        </div>

        <div class="mt-4">
            <h3>Horario</h3>
            <table class="table">
                <thead>
                <tr>
                    <th>Hora</th>
                    <th>Lunes</th>
                    <th>Martes</th>
                    <th>Miercoles</th>
                    <th>Jueves</th>
                    <th>Viernes</th>
                </tr>
                </thead>
                <tbody>
                <?php
                
                $horas = [
                    '7:00-7:50', '7:50-8:40', '8:40-9:30', '9:30-10:20',
                    '10:50-11:40', '11:40-12:30'
                ];
                $dias = ['Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes'];

              
                $tabla_horarios = [];
                foreach ($horas as $hora) {
                    $tabla_horarios[$hora] = array_fill_keys($dias, '');
                }

   
                foreach ($horario as $modulo) {
                    $tabla_horarios[$modulo['hora']][$modulo['dia']] = $modulo['materia'] . '<br>' . $modulo['docente'];
                }

             
                foreach ($horas as $hora) {
                    echo "<tr>";
                    echo "<td>$hora</td>";
                    foreach ($dias as $dia) {
                        echo "<td>{$tabla_horarios[$hora][$dia]}</td>";
                    }
                    echo "</tr>";
                }
                ?>
                </tbody>
            </table>
        </div>
    <?php endif; ?>


    
</div>
</body>
</html>
