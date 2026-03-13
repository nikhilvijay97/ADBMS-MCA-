DECLARE
 n employ3.eno%TYPE := &n;
 comm NUMBER;
BEGIN
 comm := fn2(n);
 DBMS_OUTPUT.PUT_LINE('Commission is ' || comm);
END;