create database reportes;
use reportes;

create table Estudiantes(
	id int not null primary key auto_increment,
    nombre varchar(20) not null,
    apellido varchar(20) not null,
    curso varchar(30) not null,
    genero varchar(10) not null,
    cedula date
);

create table Profesores(
	id int not null primary key auto_increment,
    nombre varchar(20) not null,
    materia varchar(60) not null,
    idNotas int not null
);

create table Notas(
	id int not null primary key auto_increment,
    notasParcial decimal,
    promedio decimal,
    idEstudiante int not null,
    idMateria int not null
);

create table Cursos(
	id int not null primary key auto_increment,
    nombreCurso varchar(50) not null
);

create table Materias(
	id int not null primary key auto_increment,
    nombreMateria varchar(50) not null,
    idEstudiantes int not null
);

create table Recuperaciones(
	id int not null primary key auto_increment,
    nombre varchar(30) not null,
    idMateria int not null
);

create table Empleados(
	id int not null primary key auto_increment,
    nombre varchar(20) not null,
    apellido varchar(20) not null,
    saldo decimal,
    idCargo int not null
);

create table Cargos(
	id int not null primary key auto_increment,
    cargo varchar(30) not null,
    idEmpleados int not null
);

create table Cuentas(
	id int not null primary key auto_increment,
    montoDisponible decimal,
    idEstudiantes int not null
);

create table Tiendas(
	id int not null primary key auto_increment,
    producto varchar(50) not null,
    cantidad decimal
);

create table Proovedores(
	id int not null primary key auto_increment,
    nombre varchar(80) not null,
    tipoProducto varchar(30) not null 
);

create table Pagos(
	 id int not null primary key auto_increment,
     formaPAgo decimal,
     idEstudiante int not null
);

create table Cobros(
	id int not null primary key auto_increment,
    monto decimal,
    idEmpleado int not null,
    idConcepto int not null
);

create table Matriculas(
	id int not null primary key auto_increment,
    nombre varchar(20) not null,
    apellido varchar(20) not null,
    nivel varchar(20) not null,
    carrera varchar(100) not null,
    numeroMatricula decimal,
    idEstudiante int not null
);

create table Conceptos(
	id int not null primary key auto_increment,
    monto decimal,
    detalle varchar(200) not null,
    idEstudiante int not null
);

create table Dineros(
	id int not null primary key auto_increment,
    monto decimal,
    detalleDinero varchar(200) not null,
    idEstudiante int not null
);

create table Conceptos_dineros(
	id int not null primary key auto_increment,
    nombre varchar(50) not null,
    idConcepto int not null,
    idDinero int not null
);

create table Puntajes_altos(
	id int not null primary key auto_increment,
    puntajeAlto decimal,
    idNota int not null,
    idEstudiante int not null
);

create table Puntajes_bajos(
	id int not null primary key auto_increment,
    puntajeBajo decimal,
    idNota int not null,
    idEstudiante int not null
);

create table Total_estudiantes(
	id int not null primary key auto_increment,
    totalEstudiantes decimal,
    idEstudiantes int not null
);

create table Total_empleados(
	id int not null primary key auto_increment,
    totalEmpleados decimal,
    idEpleados int not null
);

create table Total_materias(
	id int not null primary key auto_increment,
    idMateria int not null
);

create table Total_promedios(
	id int not null primary key auto_increment,
    idMateria int not null,
    idEstudiante int not null
);

create table Total_cobros(
	id int not null primary key auto_increment,
    idEmpleado int not null,
    idCobro int not null
);

create table Estudiantes_cursos(
	id int not null primary key auto_increment,
    idEstudiante int not null,
    idCurso int not null
);

create table Quedados_materias(
	id int not null primary key auto_increment,
    idEstudiante int not null,
    idMateria int not null
);

create table Quedado_cursos(
	id int not null primary key auto_increment,
    idEstudiante int not null,
    idCurso int not null
);

create table Materias_profesores(
	id int not null primary key auto_increment,
    idMAteria int not null,
    idProfesor int not null
);

create table Materias_cursos(
	id int not null primary key auto_increment,
    idMateria int not null,
    idCurso int not null
);

create table Recuperaciones_materias(
	id int not null primary key auto_increment,
    idRecuperacion int not null,
    idMateria int not null
);

create table Recuperaciones_estudiantes(
	id int not null primary key auto_increment,
    idRecuperacion int not null,
    idEstudiante int not null
);

create table Matriculas_estudiantes(
	id int not null primary key auto_increment,
    idMatricula int not null,
    idEstudiante int not null
);

create table Tiendas_provedores(
	id int not null primary key auto_increment,
    idTiendas int not null,
    idPoovedor int not null
);

create table Cuentas_estudiantes(
	id int not null primary key auto_increment,
    montoDisponible decimal,
    idEstudiante int not null,
    idCuenta int not null
);



-- *1.- Total Alumnos
select count(id) as Total_estudiantes from Estudiantes;

-- * 2.- Listado de alumnos por X curso
select Estudiantes.id, Estudiantes.nombre, Estudiantes.apellido
from Estudiantes inner join Estudiantes_cursos on Estudiantes_cursos.id = Estudiantes.id
inner join cursos on Estudiantes_cursos.idCurso = Curso.id where Cursos.nombreCurso = "1D";

-- *3.- Cuadro de honor del parcial 3 (Notas mayores a 91
select Estudiantes.nombre, Estudiantes.apellido, Notas.notasParcial from Estudiantes
inner join Notas on Estudiantes.id= Notas.idEstudiante
where Notas.NotasParcial >9.1;

-- * 4.- Aplazados por materia !Entendi quienes pierden por materia
select Estudiantes.nombre, Estudiantes.apellido, Materias.nombreMateria as Materias, Notas.promedio from Estudiantes
inner join Notas on Notas.idEstudiantes = Estudiantes.id
inner join Materias on MAterias.id = Notas.idMateria
where Notas.promedio < 7 order by Notas.idMateria;

-- * 5.- Aplazados por curso !Entendi los que pierden ordenado por curso
select Estudiantes.nombre, Estudiantes.apellido, Cursos.curso, Notas.promedio
from Estudiantes
inner join Notas on Notas.idEstudiante = Estudiantes.id
inner join Estudiantes_cursos on Estudiantes_cursos.idEstudiantes=Estudiantes.id
inner join Cursos on Cursos.id = Estudiantes_cursos.idCurso
where Notas.promedio < 7 order by Cursos.curso;

-- *6.- Mejores 10 promedios de todod el sistema -- 10 personas con el mejor puntaje de todo el sistema
select Estudiantes.nombres, Estudiantes.apellidos, Notas.promedio from Estudiantes 
inner join Notas on Notas.idEstudiante = Estudiantes.id 
order by Notas.promedio desc limit 10;

-- *7.- Materias por maestros
select Materias.nombreMateria as Materias, Empleados.nombre, Empleados.apellido from Empleados
inner join Materias_profesores on Materias_profesores.idProfesor = Empleados.id 
inner join Materias on Materias_profesores.idMateria = Materias.id
order by Empleados.nombre;

-- *8.- Contar cuantas materias por masestros
select Empleados.nombre,Empleados.apellido, count(Materias.id) as Total_materias from Materias_profesores
inner join Empleados on Materias_profesores.idProfesor = Empleados.id 
inner join Materias on Materias.id = Materias_profesores.idMateria 
GROUP BY (Empleados.nombre);

-- *9.- Calcular el promedio anual de todas las notas
select avg(Notas.promedio) as Total_promedios from Notas;

-- *10.- Calcular promedio por sexo
select Estudiantes.genero, AVG(Notas.promedio) as Total_promedios from Estudiantes
inner join Notas on Notas.idEstudiante = Estudiantes.id 
group by (Estudiantes.genero);

-- *11.- Alumnos a los que no se les ha asignado ninguna nota
select Estudiantes.nombre, Estudiantes.apellido from Estudiantes
left join Notas on Notas.idEstudiante = Estudiantes.id
where Notas.iEstudiante is null;

-- *12.- Maestros que no se les ha asignado ninguna materia
select Empleados.nombre, Empleados.apellido from Empleados
left join Materias_profesores on Materias_profesores.idProfesor = Empleados.id
where Materias_profesores.idProfesor is null;

-- *13.- Ver el historial de un alumno
select Estudiantes.nombre, Estudiantes.apellido, Estudiantes.genero, Estudiantes.cedula, Notas.notasParcial, Notas.promedio, Cuentas_estudiantes.montoDisponible
from Estudiantes
left join Notas on Notas.idEstudiantes = Estudiantes.id
left join Cuentas_estudiantes on Cuentas_estudiantes.idEstudiante = Estudiantes.id;

-- *14.- La nota más alta del año
select max(Notas.promedio) as Puntajes_altos from Notas;

-- *15.- Ver la nota más baja del año
select min(Notas.promedio) as Puntajes_bajos from Notas;

-- *16.- Alumnos que pierden derecho a la primera recuperacion promedio <40
select Estudiantes.nombre, Estudiantes.apellido, Notas.promedio from Estudiantes
inner join Notas on Notas.idEstudiante = Estudiantes.id 
where Notas.promedio < 4;

-- *17.- Materias por curso
select Cursos.curso, count(Materias.id) as Total_materias from Cursos
inner join Materias_cursos on Materias_cursos.idCurso = Cursos.id 
inner join Materias on Materias.id = Materias_cursos.idMateria
group by Cursos.id;

-- *18.- Cuantos alumnos van a recuperacion
select count(Notas.id) from Notas where promedio<6;

-- *19.- Cuantos alumnos van a recuperación por materia
select Materias.nombreMateria, count(Notas.promedio) as Recuperaciones_estudiantes from Materias
inner join Notas on Notas.idMateria = Materias.id where Notas.promedio<6
group by (Materias.nombre);

-- *20.- Alumnos repitentes
select Estudiantes.nombre, Estudiantes.apellido from Estudiantes
inner join MatriculaAlumnos on Matriculas_estudiantes.idEstudiante = Estudiantes.id
where numeroMatricula >1;

-- *21 Sumar cuanto ha cobrado cada empleado
select Empleados.nombre, sum(Cobros.monto) as Total_cobros from Empleados
inner join Cobros on Cobros.idEmpleado = Empleados.id
group by Empleados.nombre;

-- *22.- Sumar todos los cobros realizados
select sum(Cobros.monto) as Total_cobros from Cobros;

-- *23.- Sumar los cobros por concepto
select Conceptos_dineros.nombre as CONCEPTO, sum(Cobros.monto) as Total_cobros
from Conceptos_dineros 
inner join Cobros on Cobros.idConcepto = Conceptos_dineros.id
group by Conceptos_dineros.nombre;

-- *24.- Contar cuantos cobros se han hecho
select count(Cobros.id) from Cobros;

-- *25.- Ver el estado de cuenta de un alumno
select Estudiantes.nombre, Estudiantes.apellido, Cuentas_estudiantes.montoDisponible from Estudiantes
inner join Cuentas_estudiantes on Cuentas_estudiantes.idEstudiante = Estudiantes.id;

-- *26.- Contar cuantos empleados hay
select count(Empleados.id) as Total_empleados from Empleados;

-- *27.- Alumnos que no han realizado ningún pago
select Estudiantes.nombre, Estudiantes.apellido from Estudiantes
left join Pagos on Pagos.idAlumno = Estudiantes.id
where Pagos.idEstudiante is null;


