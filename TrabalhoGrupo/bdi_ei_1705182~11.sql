desc residence;
desc students;
desc rooms;
desc contract;
set serveroutput on;
 
declare
    v_residence_name varchar2(50);
    v_name residence.name%TYPE := 'Feminina 4';
    v_students_student_id contract.students_student_id%TYPE;
    v_student_id number(10);
begin
    update residence set name = v_name where residence_id = 4;
    update students set residence_name = v_name where student_id in
    (select students_student_id 
    from contract, rooms 
    where rooms_id = rooms_rooms_id 
    and residence_residence_id = 4);    
end;
/
----------------------------------------------------------------------

create or replace procedure residence_name(p_id_residence residence.residence_id%Type, p_name_residence residence.name%TYPE) IS
    v_conta number(1);
begin  
    select count(*)
    into v_conta
    from residence
    where residence_id = p_id_residence;
    
    if v_conta = 1 then        
        update residence set name =  p_name_residence where residence_id = p_id_residence;
        update students set residence_name =  p_name_residence where student_id in
        (select students_student_id 
        from contract, rooms 
        where rooms_id = rooms_rooms_id 
        and residence_residence_id = p_id_residence); 
    else
        dbms_output.put_line('ID não existe');
    end if;     
end;
/
exec residence_name(4,'Masculina 1');
--exec residence_name(2);

-------------------------------------------------------------------------
create or replace function residence_name_f(resi_id residence.residence_id%TYPE)
return varchar is
    v_name varchar2(20);
begin
    SELECT name 
    INTO v_name
    FROM residence
    WHERE residence_id = resi_id;
    return v_name;
end;
/
select residence_name_f(1) from dual;
---------------------------------------------------------------


create or replace trigger residence_name_tr
before update on residence
for each row
--when (new.name like 'Masculina 4')
declare
    v_residence_name varchar2(50);
    v_name residence.name%TYPE := 'Masculina 1';
    v_students_student_id contract.students_student_id%TYPE;
    v_student_id number(10);
    :new.name := 'Feminina 4';
    :new.residence_id := 4;
begin
    update residence set name = new.name where residence_id = new.residence_id;
    update students set residence_name = new.name where student_id in
    (select students_student_id 
    from contract, rooms 
    where rooms_id = rooms_rooms_id 
    and residence_residence_id = new.residence_id);    
end;
/
exec residence_name_tr;
----------------------------------------------------------------------
criação synonym
    synonym privado
        create synonym resi for bdi_ei_1704182.residence;
    synonym publico
        create public synonym pub_resi for clients;
        
Eliminacao synonym 
    synonym privado
        drop synonym resi;
        
    
----------------------------------------------    
select * from cat;   
select 'create synonym 
Ana_Vidal_'||table_name||' for 
'||table_name||';'
from cat
Where table_type like 'TABLE';

grant all on residence to bdi_ei_1704696;
commit;
-------------------------------------------------
DROP SEQUENCE id_residence_seq;
CREATE SEQUENCE id_residence_seq START WITH 6;

CREATE OR REPLACE TRIGGER residence_name_tr
BEFORE INSERT ON residence
FOR EACH ROW
BEGIN
    :NEW.residence_id := id_residence_seq.NEXTVAL;
    :NEW.name := upper(:NEW.name);
END;
/

----------------------------------------------------------------------------------

declare   
    v_residence_id residence.residence_id%TYPE := get_last_table_id('residence');
begin
    v_residence.residence_id := v_residence_id + 1;
    INSERT INTO residence(
        residence_id,
        name,
        location,
        phone)
    VALUES(
    v_residence.residence_id,
    v_residence.name,
    v_residence.location,
    v_residence.phone); 
end;
/
----------------------------------------------------------------------------------

set serveroutput on;

CREATE OR REPLACE PACKAGE residence_info IS
PROCEDURE get_phone_by_name(p_name residence.name%TYPE);
END;
/
CREATE OR REPLACE PACKAGE BODY residence_info IS
    PROCEDURE get_phone_by_name(p_name residence.name%TYPE)
    IS
        CURSOR c_residence IS
        SELECT residence_id, phone, name
        FROM residence
        WHERE name LIKE '%'||p_name||'%';
        BEGIN
            FOR  resi IN c_residence LOOP
                dbms_output.put_line(resi.residence_id||'-'||resi.phone||'-'||resi.name);
            END LOOP;
    END get_phone_by_name;
END residence_info;
/
EXEC residence_info.get_phone_by_name('Feminina 1');


select *
from dept
where not deptno>10 and deptno<30;
