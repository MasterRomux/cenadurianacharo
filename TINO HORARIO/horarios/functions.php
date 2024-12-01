<?php
include 'db.php';

function getGrupos($conn) {
    $sql = "SELECT * FROM grupos";
    return $conn->query($sql)->fetchAll(PDO::FETCH_ASSOC);
}


function getHorario($conn, $id_grupo) {
    $sql = "SELECT h.hora, h.dia, m.nombre AS materia, d.nombre AS docente 
            FROM horarios h
            JOIN materias m ON h.id_materia = m.id
            JOIN docentes d ON h.id_docente = d.id
            WHERE h.id_grupo = :id_grupo
            ORDER BY FIELD(h.dia, 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes'), h.hora";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':id_grupo', $id_grupo, PDO::PARAM_INT);
    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

function getGrupoInfo($conn, $id_grupo) {
    $sql = "SELECT g.grado, g.grupo, g.turno, g.especialidad, g.modalidad, g.aula, d.nombre AS tutor
            FROM grupos g
            LEFT JOIN docentes d ON g.id_tutor = d.id
            WHERE g.id = :id_grupo";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':id_grupo', $id_grupo, PDO::PARAM_INT);
    $stmt->execute();
    return $stmt->fetch(PDO::FETCH_ASSOC);
}


function getMaterias($conn, $especialidad) {
    $sql = "SELECT * FROM materias WHERE especialidad = :especialidad OR componente = 'básico'";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':especialidad', $especialidad, PDO::PARAM_STR);
    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}


function getDocentes($conn) {
    $sql = "SELECT * FROM docentes";
    return $conn->query($sql)->fetchAll(PDO::FETCH_ASSOC);
}

?>
