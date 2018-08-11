select * from empleados;

update empleados set salarios = 1500 where apellidos = "Lopez" and id=1;
select salario from empleados where apellido = "Lopez";
rollback;
select salario from empleados where apellidos = "Lopez";