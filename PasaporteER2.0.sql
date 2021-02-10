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
-- citas
DROP TABLE IF EXISTS tbl_cita;
CREATE TABLE if not exists tbl_cita (
  pk_cita int NOT NULL auto_increment,
  nombre_solicitante varchar(50),
  apellido_solicitante varchar(50),
  fk_numero_boleta int,
  fk_id_centro int,
  fecha_hora_cita datetime,
  estado_cita tinyint(1) DEFAULT NULL,
  motivo_cita varchar(50),
  PRIMARY KEY (pk_cita),
  foreign key (fk_id_centro) references tbl_centro(pk_id_centro)
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
)