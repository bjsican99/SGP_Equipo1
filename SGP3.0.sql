CREATE DATABASE  IF NOT EXISTS `db_migracionasc` ;
USE `db_migracionasc`;
###1.2 con seguridad

###############################   seguridad
#SEGURIDAD-----------------------------------------------------------------------------------------
create table if not exists LOGIN(
	pk_id_login 						int(10) not null primary key auto_increment,
    usuario_login 						varchar(45),
    contraseña_login 					varchar(45),
    nombreCompleto_login				varchar(100),
    estado_login						int(2)
);
create table if not exists MODULO(
	pk_id_modulo 						int(10)not null auto_increment,
    nombre_modulo 						varchar(30)not null,
    descripcion_modulo 					varchar(50)not null,
    estado_modulo 						int(1)not null,
    primary key(pk_id_modulo),
    key(pk_id_modulo)
);
create table if not exists APLICACION(
	pk_id_aplicacion 					int(10)not null auto_increment,
    fk_id_modulo 						int(10)not null,
    nombre_aplicacion 					varchar(40)not null,
    descripcion_aplicacion 				varchar(45)not null,
    estado_aplicacion 					int(1)not null,
    primary key(pk_id_aplicacion),
    key(pk_id_aplicacion)
);
alter table APLICACION add constraint fk_aplicacion_modulo foreign key(fk_id_modulo) references MODULO(pk_id_modulo);

create table if not exists PERFIL(
	pk_id_perfil						int(10) not null primary key auto_increment,
    nombre_perfil						varchar(50),
    descripcion_perfil					varchar(100),
    estado_perfil						int(2)
);
create table if not exists PERMISO(
	pk_id_permiso						int(10) not null primary key auto_increment,
    insertar_permiso					boolean,
    modificar_permiso					boolean,
    eliminar_permiso					boolean,
    consultar_permiso					boolean,
    imprimir_permiso					boolean
);
create table if not exists APLICACION_PERFIL(
	pk_id_aplicacion_perfil				int(10) not null primary key auto_increment,
    fk_idaplicacion_aplicacion_perfil	int(10),
    fk_idperfil_aplicacion_perfil		int(10),
    fk_idpermiso_aplicacion_perfil		int(10)
);
alter table APLICACION_PERFIL add constraint fk_aplicacionperfil_aplicacion foreign key (fk_idaplicacion_aplicacion_perfil) references APLICACION(pk_id_aplicacion)on delete restrict on update cascade;
alter table APLICACION_PERFIL add constraint fk_aplicacionperfil_perfil foreign key (fk_idperfil_aplicacion_perfil) references PERFIL(pk_id_perfil)on delete restrict on update cascade;
alter table APLICACION_PERFIL add constraint fk_aplicacionperfil_permiso foreign key (fk_idpermiso_aplicacion_perfil) references PERMISO (pk_id_permiso)on delete restrict on update cascade;

create table if not exists PERFIL_USUARIO(
	pk_id_perfil_usuario				int(10) not null primary key auto_increment,
    fk_idusuario_perfil_usuario			int(10),
    fk_idperfil_perfil_usuario			int(10)
);
alter table PERFIL_USUARIO add constraint fk_perfil_usuario_login foreign key(fk_idusuario_perfil_usuario) references LOGIN(pk_id_login) on delete restrict on update cascade;
alter table PERFIL_USUARIO add constraint fk_perfil_usuario_perfil foreign key (fk_idperfil_perfil_usuario) references PERFIL(pk_id_perfil) on delete restrict on update cascade;

create table if not exists APLICACION_USUARIO(
	pk_id_aplicacion_usuario			int(10) not null primary key auto_increment,
    fk_idlogin_aplicacion_usuario		int(10),
    fk_idaplicacion_aplicacion_usuario	int(10),
    fk_idpermiso_aplicacion_usuario		int(10)
);
alter table APLICACION_USUARIO add constraint fk_aplicacionusuario_login foreign key(fk_idlogin_aplicacion_usuario) references LOGIN(pk_id_login) on delete restrict on update cascade;
alter table APLICACION_USUARIO add constraint fk_aplicacionusuario_aplicacion foreign key (fk_idaplicacion_aplicacion_usuario) references APLICACION(pk_id_aplicacion) on delete restrict on update cascade;
alter table APLICACION_USUARIO add constraint fk_aplicacionusuario_permiso foreign key(fk_idpermiso_aplicacion_usuario) references PERMISO (pk_id_permiso)on delete restrict on update cascade;

create table if not exists BITACORA(
	pk_id_bitacora						int(10) not null primary key auto_increment, #pk
    fk_idusuario_bitacora				int(10),
    fk_idaplicacion_bitacora			int(10),
    fechahora_bitacora					varchar(50),
    direccionhost_bitacora				varchar(20),
    nombrehost_bitacora					varchar(20),
    accion_bitacora						varchar(250)
);
CREATE TABLE IF NOT EXISTS DETALLE_BITACORA (
    pk_id_detalle_bitacora 				INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    fk_idbitacora_detalle_bitacora 		INT(10),
    querryantigua_detalle_bitacora 		VARCHAR(50),
    querrynueva_detalle_bitacora 		VARCHAR(50)
);
alter table BITACORA add constraint fk_login_bitacora foreign key (fk_idusuario_bitacora) references LOGIN (pk_id_login) on delete restrict on update cascade;
alter table BITACORA add constraint fk_aplicacion_bitacora foreign key (fk_idaplicacion_bitacora) references APLICACION(pk_id_aplicacion) on delete restrict on update cascade;
alter table DETALLE_BITACORA add constraint fk_bitacora_detallebitacora foreign key(fk_idbitacora_detalle_bitacora) references BITACORA(pk_id_bitacora) on delete restrict on update cascade;

###############################   externos
-- banco
DROP TABLE IF EXISTS tbl_banco;
CREATE TABLE if not exists tbl_banco (
pk_numero_boleta int not null,
estado_boleta tinyint(1),
primary key (pk_numero_boleta)
);

-- renap
DROP TABLE IF EXISTS tbl_renap;
CREATE TABLE if not exists tbl_renap (
pk_cui int not null,
nombre varchar(50),
apellido varchar(50),
sexo varchar(1),
fecha_nacimiento date,
estado_civil varchar (50),
nacionalidad varchar(50),
dpi_padre int,
nombre_padre varchar(50),
apellido_padre varchar(50),
dpi_madre int,
nombre_madre varchar(50),
apellido_madre varchar(50),
primary key (pk_cui)
);

-- municipalidad
DROP TABLE IF EXISTS tbl_municipalidad;
CREATE TABLE if not exists tbl_municipalidad (
pk_numero_boleto int not null,
estado_boleto tinyint(1),
primary key (pk_numero_boleto)
);

#############################    internos
DROP TABLE IF EXISTS tbl_centro;
CREATE TABLE IF NOT EXISTS tbl_centro (
pk_id_centro int not null,
nombre_centro varchar(50),
direccion_centro varchar(50),
estado int(1),
PRIMARY KEY (pk_id_centro)
);
-- motivo citas
DROP TABLE IF EXISTS tbl_motivo;
CREATE TABLE if not exists tbl_motivo (
 pk_id_motivo int NOT NULL auto_increment,
 motivo varchar(50),
 estado int(1),
PRIMARY KEY (pk_id_motivo)
);

-- cita
DROP TABLE IF EXISTS tbl_cita;
CREATE TABLE if not exists tbl_cita (
  pk_cita int NOT NULL auto_increment,
  nombre_solicitante varchar(50),
  apellido_solicitante varchar(50),
  fk_numero_boleta int,
  fk_id_centro int,
  fecha_cita date,
  hora_cita time,
  fk_id_motivo_cita int,
  estado_cita tinyint(1) DEFAULT NULL,
  PRIMARY KEY (pk_cita),
  foreign key (fk_id_centro) references tbl_centro(pk_id_centro),
  foreign key (fk_id_motivo_cita) references tbl_motivo(pk_id_motivo)
) ;

-- tipo pasaporte
DROP TABLE IF EXISTS tbl_tipo_pasaporte;
CREATE TABLE if not exists tbl_tipo_pasaporte (
pk_id_tipo_pasaporte int not null,
nombre_pasaporte varchar(50),
estado tinyint(1),
primary key (pk_id_tipo_pasaporte)
);

#copia de renap a interno
DROP TABLE IF EXISTS tbl_usuario_pasaporte;
CREATE TABLE IF NOT EXISTS tbl_usuario_pasaporte (
pk_id_usuario_pasaporte int not null,
nombre varchar(50),
apellido varchar(50),
sexo varchar(1),
fecha_nacimiento date,
estado_civil varchar (50),
nacionalidad varchar(50),
dpi_padre int,
nombre_padre varchar(50),
apellido_padre varchar(50),
dpi_madre int,
nombre_madre varchar(50),
apellido_madre varchar(50),
primary key (pk_id_usuario_pasaporte)
);

-- pasaporte
drop table if exists tbl_pasaporte;
create table if not exists tbl_pasaporte(
pk_id_pasaporte int not null,
fk_id_tipo_pasaporte int,
fk_id_usuario_pasaporte int,
fecha_emision date,
fecha_vencimiento date,
numero_libreta int,
link_foto varchar (100),
link_cod_barras varchar (100),
link_cod_ocr varchar (100),
estado tinyint(1),
primary key	(pk_id_pasaporte),
foreign key (fk_id_tipo_pasaporte) references tbl_tipo_pasaporte(pk_id_tipo_pasaporte),
foreign key (fk_id_usuario_pasaporte) references tbl_usuario_pasaporte(pk_id_usuario_pasaporte)
);

-- Persona_cita
drop table if exists tbl_persona_cita;
create table if not exists tbl_persona_cita(
pk_id_persona_cita int auto_increment not null,
fk_id_usuario_pasaporte int,
fk_id_cita int,
primary key (pk_id_persona_cita),
foreign key (fk_id_usuario_pasaporte) references tbl_usuario_pasaporte(pk_id_usuario_pasaporte),
foreign key (fk_id_cita) references tbl_cita(pk_cita)
);
######SEGURIDAD--------------------------------------------------------------------
INSERT INTO login VALUES 
('1', 'sistema', 'bi0PL96rbxVRPKJQsLJJAg==', 'Usuario de prueba', '1'),
('2', 'bjsican', '0FOYy5u5h0djKjzCYqfvkg==', 'Billy Sican', '1'),
('3', 'bmaza', 'xTfsC3/XR/CVyDvNr1Fs+g==', 'Bryan Mazariegos', '1'),
('4', 'jsican', 'jsican', 'Jeshua Sican', '0'),
('5', 'jmorataya', '123', 'Julio Morataya', '0'),
('6', 'admin', 'T+4Ai6O3CR0kJYxCgXy2jA==', 'Administrador', '1');


INSERT INTO `modulo` VALUES (1,'Seguridad','Aplicaciones de seguridad',1),(2,'Consultas','Consultas Inteligentes',1),
(3,'Reporteador','Aplicaciones de Reporteador',1),(4,'HRM','Aplicaciones de Recursos Humanos',1),
(5,'FRM','Aplicaciones de Finanzas',1),(6,'SCM','Aplicaciones Control de Inventario',1),(7,'MRP','Aplicaciones de Produccion',1),
(8,'CRM','Aplicaciones de Ventas',1);

INSERT INTO perfil VALUES 
('1', 'Admin', 'Administracion del programa', '1'),
('2', 'Sistema', 'Administrador del sistema', '1'),
('3', 'Digitador', 'Digitador para Cuentas', '1'),
('4', 'Consultor', 'Unicamente consultas ', '1'),
('5', 'Reportes', 'Ingreso y consultas de reportes', '1'),
('6', 'Pruebas', 'pruebas', '1'),
('7', 'Administrador', 'Administrador del MRP', '1');


INSERT INTO aplicacion VALUES 
('1', '1', 'Login', 'Ventana de Ingreso', '1'),
('2', '1', 'Mantenimiento Usuario', 'Mantenimientos de usuario', '1'),
('3', '1', 'Mantenimiento Aplicacion', 'ABC de las Aplicaciones', '1'),
('4', '1', 'Mantenimiento Perfil', 'ABC de perfiles', '1'),
('5', '1', 'Asignacion de Aplicaciones a Perfil', 'Asignacion Aplicacion y perfil', '1'),
('6', '1', 'Asignacaion de Aplicaciones', 'Asignacion especificas a un usuario', '1'),
('7', '1', 'Consulta Aplicacion', 'Mantenimiento de Aplicaciones', '1'),
('8', '1', 'Agregar Modulo', 'Mantenimientos de Modulos', '1'),
('9', '1', 'Consultar Perfil', 'Consultas de perfiles disponibles', '1'),
('10', '1', 'Permisos', 'Asignar permisos a perfiles y aplicaciones', '1'),
('11', '1', 'Cambio de Contraseña', 'Cambia las contraseñas', '1'),
('2301', '6', 'Linea Producto', 'lINEA', '1'),
('2302', '6', 'Categoria Producto', 'Categoria', '1'),
('2303', '6', 'Producto', 'Producto', '1'),
('2304', '6', 'Departamento', 'Deptos', '1'),
('2305', '6', 'Municipio', 'Muni depto', '1'),
('2306', '6', 'Ruta', 'Rutas', '1'),
('2307', '6', 'Proveedores', 'Nada', '1'),
('2308', '6', 'Telefono Proveedor', 'Telefonos ', '1'),
('2309', '6', 'Correo Proveedor', 'Correos', '1'),
('2310', '6', 'Pais', 'Pais de Proveedor', '1'),
('2311', '6', 'Marca', 'Contiene la Marca de Vehiculos', '1'),
('2312', '6', 'Vehiculo', 'Vehiculos usados para traslados', '1'),
('2313', '6', 'Bodega', 'Localizacion de bodegas', '1'),
('2314', '6', 'Encargado Bodega', 'Empleado dentro del area de bodegas', '1'),
('2315', '6', 'Tipo de Movimiento', 'Movimientos de Inventarios', '1'),
('2316', '6', 'Compras y Pedidos', 'Gestión de Órdenes de Compra y Pedido', '1'),
('2318', '6', 'Fabrica', 'Fabrica', '1'),
('3301', '7', 'MDI MRP', 'Ventana Principal MRP', '1'),
('3302', '7', 'Mantenimiento Producto', 'Mantenimiento de los productos', '1'),
('3303', '7', 'Mantenimiento de Categoria de produccion', 'Mantenimiento de Categoria de productos', '1'),
('3304', '7', 'Mantenimiento de Estado de Produccion', 'Mantenimiento de Estados de  produccion', '1'),
('3305', '7', 'Mantenimiento de Linea de produccion MRP', 'Mantenimiento de MRP para linea de producto', '1'),
('3306', '7', 'Mantenimiento de Encabezado de receta', 'Mantenimiento de MRP de reseta ', '1'),
('3307', '7', 'Mantenimiento de Detalle de Receta', 'Mantenimiento del detalle de la receta', '1'),
('3308', '7', 'Proceso Resepcion de pedidos especiales', 'Proceso para ingreso de pedidos', '1');



INSERT INTO permiso VALUES 
('1', '1', '1', '1', '1', '1'),
('2', '1', '0', '0', '1', '1'),
('3', '1', '1', '1', '0', '0'),
('4', '1', '1', '1', '1', '1'),
('5', '1', '1', '1', '1', '1'),
('6', '1', '1', '1', '1', '1'),
('7', '1', '1', '1', '1', '1'),
('8', '1', '0', '1', '0', '0'),
('9', '1', '1', '0', '0', '0'),
('10', '1', '1', '0', '0', '0'),
('11', '1', '1', '1', '1', '1'),
('12', '0', '0', '0', '1', '0'),
('13', '0', '0', '0', '1', '0'),
('14', '0', '0', '0', '0', '0'),
('15', '1', '0', '0', '1', '0'),
('16', '0', '0', '0', '0', '0'),
('17', '1', '1', '0', '0', '0'),
('18', '1', '1', '1', '1', '1'),
('19', '0', '1', '0', '0', '0'),
('20', '1', '1', '0', '0', '0'),
('21', '1', '1', '1', '0', '0');


INSERT INTO aplicacion_perfil VALUES 
('1', '1', '1', '1'),
('2', '4', '1', '2'),
('3', '5', '1', '3'),
('4', '2', '1', '4'),
('5', '3', '1', '5'),
('6', '6', '1', '6'),
('7', '8', '1', '7'),
('8', '2', '3', '8'),
('9', '3', '3', '9'),
('10', '4', '3', '11'),
('11', '2', '4', '12'),
('12', '8', '4', '13'),
('13', '8', '5', '15'),
('14', '8', '7', '21');

INSERT INTO aplicacion_usuario VALUES 
('1', '1', '4', '1'),
('2', '1', '5', '2'),
('3', '1', '6', '3'),
('4', '3', '8', '10'),
('5', '4', '6', '14'),
('6', '5', '5', '16'),
('7', '5', '2', '17'),
('8', '6', '3302', '18'),
('9', '6', '2', '19'),
('10', '6', '3', '20');

INSERT	INTO perfil_usuario VALUES
(1 , 1, 1),
(2 , 3,	3),
(4 , 4,	1),
(5, 5, 5);
