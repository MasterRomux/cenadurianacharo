<?php
include '../includes/db.php'; 


$materias_2017 = mysqli_query($conn, "SELECT * FROM materias WHERE programa = '2017'");


$materias_2024 = mysqli_query($conn, "SELECT * FROM materias WHERE programa = '2024'");


if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $nombre = $_POST['nombre'];
    $rfc = $_POST['rfc'];
    $curp = $_POST['curp'];
    $correo = $_POST['correo'];
    $clave = $_POST['clave'];
    $horas_docencia = $_POST['horas_docencia'];
    $horas_descarga = $_POST['horas_descarga'];
    $materias = isset($_POST['materias']) ? $_POST['materias'] : []; 


    $sql_docente = "INSERT INTO docentes (nombre, rfc, curp, correo, clave, horas_docencia, horas_descarga) 
                    VALUES ('$nombre', '$rfc', '$curp', '$correo', '$clave', '$horas_docencia', '$horas_descarga')";
    
    if (mysqli_query($conn, $sql_docente)) {
        $id_docente = mysqli_insert_id($conn);


        foreach ($materias as $id_materia) {
            $sql_materia = "INSERT INTO docente_materia (id_docente, id_materia) VALUES ('$id_docente', '$id_materia')";
            mysqli_query($conn, $sql_materia);
        }


        header("Location: lista.php");
        exit;
    } else {
        echo "Error: " . mysqli_error($conn);
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar Docente</title>
    <link rel="stylesheet" href="../css/docentes3.css">
</head>
<body>
    <header>
        <div class="encabezado">
            <img src="../logo_sep.png" alt="Logo SEP" class="logo">
            <h1 class="titulo">Registrar Docente</h1>
            <img src="../logo_escuela.png" alt="Logo Escuela" class="logo">
        </div>
    </header>

    <main>
        <form action="registrar.php" method="POST" class="formulario">
            <div class="grupo">
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" required>
            </div>

            <div class="grupo">
                <label for="rfc">RFC:</label>
                <input type="text" id="rfc" name="rfc" required>
            </div>

            <div class="grupo">
                <label for="curp">CURP:</label>
                <input type="text" id="curp" name="curp" required>
            </div>

            <div class="grupo">
                <label for="correo">Correo Electrónico:</label>
                <input type="email" id="correo" name="correo" required>
            </div>

            <div class="grupo">
                <label for="clave">Clave:</label>
                <input type="text" id="clave" name="clave" required>
            </div>

            <div class="grupo">
                <label for="horas_docencia">Horas de Docencia:</label>
                <input type="number" id="horas_docencia" name="horas_docencia" required>
            </div>

            <div class="grupo">
                <label for="horas_descarga">Horas de Descarga:</label>
                <input type="number" id="horas_descarga" name="horas_descarga" required>
            </div>

            <div class="grupo">
                <label for="programa">Programa:</label>
                <select id="programa" name="programa" required>
                    <option value="2017">Programa 2017</option>
                    <option value="2024">Programa 2024</option>
                </select>
            </div>

            <div id="materias_2017" class="materias">
                <label>Materias (Programa 2017):</label>
                <?php while($row = mysqli_fetch_assoc($materias_2017)): ?>
                    <div class="materia">
                        <input type="checkbox" name="materias[]" value="<?= $row['id']; ?>"> <?= $row['nombre']; ?>
                    </div>
                <?php endwhile; ?>
            </div>

            <div id="materias_2024" class="materias" style="display: none;">
                <label>Materias (Programa 2024):</label>
                <?php while($row = mysqli_fetch_assoc($materias_2024)): ?>
                    <div class="materia">
                        <input type="checkbox" name="materias[]" value="<?= $row['id']; ?>"> <?= $row['nombre']; ?>
                    </div>
                <?php endwhile; ?>
            </div>

            <div class="grupo">
                <button type="submit">Registrar Docente</button>
            </div>
        </form>
    </main>

    <footer>
        <p>&copy; 2024 Sistema de Gestión Escolar</p>
    </footer>

    <script>

        document.getElementById('programa').addEventListener('change', function () {
            var programa = this.value;
            if (programa == '2017') {
                document.getElementById('materias_2017').style.display = 'block';
                document.getElementById('materias_2024').style.display = 'none';
            } else {
                document.getElementById('materias_2017').style.display = 'none';
                document.getElementById('materias_2024').style.display = 'block';
            }
        });
    </script>
</body>
</html>
