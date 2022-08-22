set serveroutput on
set verify off
accept p_ename prompt '사원이름입력:'

declare
    v_ename emp.ename%type :=upper('&p_ename');
    v_sal emp.sal%type;
    
begin
    select sal into v_sal
    from emp
    where ename=v_ename;
    
    if v_sal >= 3000 then
        dbms_output.put_line('high');
    elsif v_sal >=2000 then
        dbms_output.put_line('middle');
    else
        dbms_output.put_line('low');
    end if;
end;
/