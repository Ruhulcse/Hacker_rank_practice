// table and insertion code 

create table OCCUPATIONS(
   name VARCHAR(50),
   occupation VARCHAR(50)
  );
  
INSERT INTO OCCUPATIONS (name,occupation)
VALUES
   ('samanta','doctor');
INSERT INTO OCCUPATIONS (name,occupation)
VALUES
   ('julia','actor');
INSERT INTO OCCUPATIONS (name,occupation)
VALUES
   ('maria','actor');
INSERT INTO OCCUPATIONS (name,occupation)
VALUES
   ('meera','singer');
INSERT INTO OCCUPATIONS (name,occupation)
VALUES
   ('ashely','professor');
INSERT INTO OCCUPATIONS (name,occupation)
VALUES
   ('ketty','professor');
INSERT INTO OCCUPATIONS (name,occupation)
VALUES
   ('christeen','professor');
INSERT INTO OCCUPATIONS (name,occupation)
VALUES
   ('jane','actor');
INSERT INTO OCCUPATIONS (name,occupation)
VALUES
   ('jenny','doctor');
INSERT INTO OCCUPATIONS (name,occupation)
VALUES
   ('priya','singer');
   
   
// accepted output code 

set @colomn1=0, @colomn2=0, @colomn3=0, @colomn4=0;

select min(doctor),min(professor),min(singer),min(actor) from 
(
  select case occupation when 'doctor' then @colomn1:=@colomn1+1
                           when 'professor' then @colomn2:=@colomn2+1
                           when 'singer' then @colomn3:= @colomn3+1
                           when 'actor' then @colomn4:= @colomn4+1 end
          as colomnline,
          case when occupation = 'doctor' then name end as doctor,
          case when occupation = 'professor' then name end as professor,
          case when occupation = 'singer' then name end as singer,
          case when occupation = 'actor' then name end as actor
         from OCCUPATIONS order by name) as t
     group by colomnline;
   
