create table contacts(
contacts_id numeric (5, 0) constraint pk_contacts primary key,
namee varchar(100) not null,
email varchar(100) not null
);

create sequence contacts_id_contacts_seq start 1 increment 1;

alter table contacts alter column contacts_id 
set default nextval('contacts_id_contacts_seq');

insert into contacts(namee, email) values
('Wanda Maximoff','wanda.maximoff@avengers.org')
,('Pietro Maximoff','pietro@mail.sokovia.ru')
,('Erik Lensherr','fuck_you_charles@brotherhood.of.evil.mutants.space')
,('Charles Xavier','i.am.secretely.filled.with.hubris@xavier-school-4-gifted-youngste.')
,('Anthony Edward Stark','iamironman@avengers.gov')
,('Steve Rogers','americas_ass@anti_avengers')
,('The Vision','vis@westview.sword.gov')
,('Clint Barton','thunder-^_^@royalty.asgard.gov')
,('Logan','wolverine@cyclops_is_a_jerk.com')
,('Ororo Monroe','ororo@weather.co')
,('Scott Summers','o@x')
,('Nathan Summers','cable@xfact.or')
,('Groot','iamgroot@asgardiansofthegalaxyledbythor.quillsux')
,('Nebula','idonthaveelektras@complex.thanos')
,('Gamora','thefiercestwomaninthegalaxy@thanos.')
,('Rocket','shhhhhhhh@darknet.ru');

insert into contacts(namee, email) values 
('Natasja Romanov','blackwidow@kgb.ru'),
('Thor','god_of_thunder-^_^@royalty.asgard.gov')
;

select * from contacts ;

select  * from  contacts  where email not like '_%@__%.__%';
