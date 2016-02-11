create table mUser (
  id                        integer not null,
  email                     varchar(255),
  name                      varchar(255),
  constraint pk_mUser primary key (id))
;

create sequence mUser_seq;



