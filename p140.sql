 set serveroutput on
 accept p_no prompt '사원번호입력:'
 
 declare
  v_sal varchar(20);
begin
       select sal into v_sal
        from emp 
        where EMPNO=&p_no;
        dbms_output.put_line('사원월급:'||v_sal);
  
end;
/