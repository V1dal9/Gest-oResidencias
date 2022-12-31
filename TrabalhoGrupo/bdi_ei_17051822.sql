Drop procedure emp_ename;
create or replace procedure emp_ename IS
    v_ename emp.ename%TYPE;
    v_empno emp.empno%TYPE;
begin
    v_empno := 7369;
    select ename
    into v_ename
    from emp
    where empno = v_empno;
    
    dbms_output.put_line(v_ename);
end;
/
execute emp_ename;

exec emp_ename;

create or replace procedure emp_ename(p_empno varchar2) IS
    v_ename emp.ename%TYPE;
    v_empno emp.empno%TYPE;
begin
    v_empno := p_empno;
    select ename
    into v_ename
    from emp
    where empno = v_ename;
    
    dbms_output.put_line(v_ename);
end;
/

execute emp_ename;

exec emp_ename;

create or replace procedure emp_ename(p_empno emp.empno%TYPE default 7369) IS
    v_ename emp.ename%TYPE;
    v_empno emp.empno%TYPE;
begin
    v_empno := p_empno;
    select ename
    into v_ename
    from emp
    where empno = v_ename;
    
    dbms_output.put_line(v_ename);
end;
/

exec emp_ename(7369);
exec emp_ename;
exec emp_ename(1000);

create or replace procedure emp_ename(p_empno emp.empno%TYPE default 7369) IS
    v_ename emp.ename%TYPE;
    v_empno emp.empno%TYPE;
    v_count number(1);
begin
    v_empno := p_empno;
    
    select count(*)
    into v_count
    from emp
    where empno = v_ename;
     
  if v_count = 1 then
    select ename
    into v_ename
    from emp
    where empno = v_empno;
    
    dbms_output.put_line(v_ename);
  else
    dbms_output.put_line('Wrong empno');
  end if;
end;
/
exec emp_ename;

select * from emp;
set serveroutput on;

create or replace procedure test_emp_ename IS

begin
    dbms_output.put_line('testing without a parameter');
    emp_ename;
    dbms_output.put_line('testing with valid parameter');
    emp_ename(7521);
    dbms_output.put_line('testing with an invalid parameter');
    emp_ename(1000);
end;
/

exec test_emp_ename;--temos de executar para ver o que o código faz

--executar uma função através de um procedimento
create or replace function triple(p_number number)

return number is
    v_result number(3);
begin
    v_result := 3 * p_number;
    return v_result;
end;
/

declare 
    v_res number(9);
begin
    v_res := triple(9);
    dbms_output.put_ilne(v_res);
    dbms_output.put_line(triple(45));
end;
/

select triple(9) from dual;

select ename, sal, triple(9) from emp;

statement function (without side effects) can be used in queries
-only have in paremeters with sql data types - number, char, varchar2, date, etc.
-no database write if used in a select
-no select on the same table if used in a insert, delete, update