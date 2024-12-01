<?php
include '../includes/db.php'; 


if (isset($_GET['id'])) {
    $id = $_GET['id'];


    $sql_delete_grupos = "DELETE FROM grupos WHERE id_tutor = ?";
    $stmt_delete_grupos = mysqli_prepare($conn, $sql_delete_grupos);
    mysqli_stmt_bind_param($stmt_delete_grupos, "i", $id);
    mysqli_stmt_execute($stmt_delete_grupos);


    $sql = "DELETE FROM docentes WHERE id = ?";
    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, "i", $id);
    mysqli_stmt_execute($stmt);


    header("Location: lista.php");
    exit();
} else {
    die("ID no especificado.");
}
?>
