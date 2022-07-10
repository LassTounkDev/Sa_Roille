drop database if exists saroille;
create database saroille;
use saroille;



create table user(
iduser int(3) not null auto_increment,
nom varchar(50),
prenom varchar(50),
email varchar(50),
mdp varchar(255),
role enum("admin","user"),
primary key(iduser)
);


create table client (
id_client int(3) not null auto_increment,
nom varchar(50),
prenom varchar(50),
adresse varchar(60),
cp varchar(5),
tel varchar(10),
primary key (id_client)
);


create table technicien(
id_tech int (3) not null auto_increment,
nom varchar (50),
prenom varchar(50),
adresse varchar(60),
cp varchar(5),
diplome varchar(50),
primary key (id_tech)
);


create table materiels(
id_materiels int(3) not null auto_increment,
nom varchar (50) ,
marque varchar(50),
poids varchar(10),
capacite varchar(10),
taille varchar(10),
quantite int (2),
primary key (id_materiels)
);

create table location (
idloc int(3) not null auto_increment, 
designation varchar(50) not null, 
dateloc date,
heureloc time, 
id_client1 int(3) not null, 
id_materiels int(3) not null, 
primary key (idloc), 
foreign key(id_client1) references client(id_client), 
foreign key(id_materiels) references materiels(id_materiels)
);


Create or replace view CML as (
select p.nom, p.prenom, a.marque as materiels, v.designation as location, v.dateloc, v.heureloc
from client p, materiels a, location v
where p.id_client = v.id_client1
and a.id_materiels = v.idloc
);


delimiter $
create trigger modifierMdp before insert on user
for each row
begin
set new.mdp = sha1(new.mdp);
end $
delimiter ;

delimiter $
create trigger modifierMdp2 before update on user
for each row
begin
set new.mdp = sha1(new.mdp);
end $
delimiter ;




insert into user values (null, "maamar","bedrane","maamar@gmail.com","123","admin"),
						(null,"vouandza","cedric","cedric@gmail.com","Cedric123-","user"),
						(null,"tounkara","lassana","lassana@gmail.com","Lassana123-","user");



insert into client values (null, "ahmed","abdeslam","17 rue de paris","7500","0512345678"),
						  (null,"ybert","michel","10 rue de paris","7500","06332165487");



insert into technicien values(null, "bruhaire","tom","4 rue de paris","7500","BAC"),
						  (null,"yacine","aboudaou","3 rue de paris","7500","BTS");