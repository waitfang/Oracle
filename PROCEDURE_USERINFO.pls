create or replace PROCEDURE PROCEDURE_USERINFO 
(
  pUSERNAME IN VARCHAR2 --传入参数
) AS 
    V_SUM VARCHAR2(100); --自定义变量
BEGIN
    --定义游标
    DECLARE   CURSOR cur_data IS  
        SELECT USERNAME,USERID FROM USERINFO WHERE USERNAME = pUSERNAME; 
    BEGIN    
        --使用游标字段，做逻辑处理
        FOR  cur_result IN cur_data LOOP 
            V_SUM :=cur_result.USERNAME ;
            --打印输出参数
            DBMS_OUTPUT.PUT_LINE('USERNAME=='|| V_SUM);
        END LOOP;
    END;
END PROCEDURE_USERINFO;