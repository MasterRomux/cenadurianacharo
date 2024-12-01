<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Docentes</title>
    <link rel="stylesheet" href="../css/docentes.css"> 
</head>
<body>
    <header>
        <div class="header-logos">
            <img src="../logo_escuela.png" alt="Logo de la Escuela" class="logo">
            <h1 id="titulo-pagina">Gestión de Docentes</h1> 
            <img src="../logo_sep.png" alt="Logo de la SEP" class="logo">
        </div>
        <nav>
            <ul>
                <li><a href="../index.php">Inicio</a></li>
                <li><a href="lista.php">Docentes</a></li>
                <li><a href="../grupos/lista.php">Grupos</a></li>
                <li><a href="../horarios/index.php">Horarios</a></li>
                <li><a href="../materias/lista.php">Materias</a></li>
                <li><a href="../acercade.html">Acerca de</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <h2>Lista de Docentes</h2>
        <p>Aquí puedes ver y gestionar los docentes existentes.</p>


        <div class="btn-container">
            <a href="registrar.php" class="btn">Agregar nuevo docente</a>
        </div>

   
        <table>
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>RFC</th>
                    <th>CURP</th>
                    <th>Correo</th>
                    <th>Clave</th>
                    <th>Horas Docencia</th>
                    <th>Horas Descarga</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <?php
                include '../includes/db.php'; 

                $sql = "SELECT * FROM docentes";
                $resultado = mysqli_query($conn, $sql);

                while($docente = mysqli_fetch_assoc($resultado)) {
                    echo "<tr>";
                    echo "<td>" . $docente['nombre'] . "</td>";
                    echo "<td>" . $docente['rfc'] . "</td>";
                    echo "<td>" . $docente['curp'] . "</td>";
                    echo "<td>" . $docente['correo'] . "</td>";
                    echo "<td>" . $docente['clave'] . "</td>";
                    echo "<td>" . $docente['horas_docencia'] . "</td>";
                    echo "<td>" . $docente['horas_descarga'] . "</td>";
                    echo "<td><a href='modificar.php?id=" . $docente['id'] . "' class='btn-small'>Modificar</a> | <a href='eliminar.php?id=" . $docente['id'] . "' class='btn-small danger'>Eliminar</a></td>";
                    echo "</tr>";
                }
                ?>
            </tbody>
        </table>
    </main>

    <footer>
        <p>&copy; 2024 Sistema de Gestión Escolar</p>
    </footer>
</body>
</html>
