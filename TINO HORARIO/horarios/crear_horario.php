<?php
include 'functions.php';
include 'db.php';


ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

if (!isset($_GET['grupo'])) {
    die('No se especificó un grupo.');
}

$id_grupo = $_GET['grupo'];
$grupo_info = getGrupoInfo($conn, $id_grupo);


$materias = getMaterias($conn, $grupo_info['especialidad']);
$docentes = getDocentes($conn);

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    foreach ($_POST['horario'] as $dia => $modulos) {
        foreach ($modulos as $modulo => $data) {
            $sqlInsert = "INSERT INTO horarios (id_grupo, id_docente, id_materia, hora, dia) 
                          VALUES (:id_grupo, :id_docente, :id_materia, :hora, :dia)";
            $stmt = $conn->prepare($sqlInsert);
            $stmt->execute([
                ':id_grupo' => $id_grupo,
                ':id_docente' => $data['docente'],
                ':id_materia' => $data['materia'],
                ':hora' => $modulo,
                ':dia' => $dia
            ]);
        }
    }
    header("Location: index.php?grupo=$id_grupo");
    exit;
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Horario</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/horario2.css">
</head>
<body>
    <header class="main-header">
        <div class="header-content">
            <img src="../logo_escuela.png" alt="Logo Escuela" class="logo">
            <img src="../logo_sep.png" alt="Logo SEP" class="logo">
        </div>
        <h1 class="title">Sistema de Administración Escolar</h1>
        <a href="index.php" class="btn btn-secondary regresar-btn">Regresar</a>
    </header>
    <div class="container mt-4">
        <h2>Crear Horario para el Grupo <?= "{$grupo_info['grado']}°{$grupo_info['grupo']} ({$grupo_info['especialidad']})" ?></h2>
        <form method="POST" class="mt-4">
            <?php
            $dias = ['Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes'];
            $horas = [
                '7:00-7:50', '7:50-8:40', '8:40-9:30', '9:30-10:20',
                '10:50-11:40', '11:40-12:30'
            ];
            foreach ($dias as $dia): ?>
                <h3 class="dia-titulo"><?= $dia ?></h3>
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>Hora</th>
                        <th>Materia</th>
                        <th>Docente</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($horas as $index => $hora): ?>
                        <tr>
                            <td><?= $hora ?></td>
                            <td>
                                <select name="horario[<?= $dia ?>][<?= $hora ?>][materia]" class="form-select">
                                    <?php foreach ($materias as $materia): ?>
                                        <option value="<?= $materia['id'] ?>"><?= $materia['nombre'] ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </td>
                            <td>
                                <select name="horario[<?= $dia ?>][<?= $hora ?>][docente]" class="form-select">
                                    <?php foreach ($docentes as $docente): ?>
                                        <option value="<?= $docente['id'] ?>"><?= $docente['nombre'] ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                    </tbody>
                </table>
            <?php endforeach; ?>
            <button type="submit" class="btn btn-primary">Guardar Horario</button>
        </form>
    </div>
</body>
</html>
