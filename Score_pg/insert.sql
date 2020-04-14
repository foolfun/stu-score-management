create table t_stu1(
	sid text primary key,
	sname text,
	score jsonb
)


insert into t_stu1 values('02','hah','{"math":"93","english":"81"}');
insert into t_stu1 values('03','lucy','{"math":"92","english":"88"}');
insert into t_stu1 values('04','John','{"math":"93","english":"77"}');
insert into t_stu1 values('05','jaccicar','{"math":"96","english":"97"}');
insert into t_stu1 values('06','hanmiemei','{"math":"60","english":"79"}');
insert into t_stu1 values('07','mam','{"math":"97","english":"78"}');
insert into t_stu1 values('08','enmm','{"math":"70","english":"76"}');
insert into t_stu1 values('09','suibianla','{"math":"80","english":"67"}');