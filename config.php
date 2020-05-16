<?php
session_start();

global $pdo;
try {
	$pdo = new PDO("pgsql:host=localhost;port=5433;dbname=classificados;", "postgres", "postgres");
} catch(PDOException $e) {
	echo "FALHOU: ".$e->getMessage();
	exit;
}
?>