# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table Tenant (
  tenantId                  varchar(40) not null,
  db_name                   varchar(255),
  db_user                   varchar(255),
  db_password               varchar(255),
  constraint pk_Tenant primary key (tenantId))
;

create table mUser (
  id                        integer not null,
  email                     varchar(255),
  name                      varchar(255),
  constraint pk_mUser primary key (id))
;

create sequence mUser_seq;




# --- !Downs

drop table if exists Tenant cascade;

drop table if exists mUser cascade;

drop sequence if exists mUser_seq;

