create or replace PROCEDURE PROCEDURE_USERINFO 
(
  pUSERNAME IN VARCHAR2 --�������
) AS 
    V_SUM VARCHAR2(100); --�Զ������
BEGIN
    --�����α�
    DECLARE   CURSOR cur_data IS  
        SELECT USERNAME,USERID FROM USERINFO WHERE USERNAME = pUSERNAME; 
    BEGIN    
        --ʹ���α��ֶΣ����߼�����
        FOR  cur_result IN cur_data LOOP 
            V_SUM :=cur_result.USERNAME ;
            --��ӡ�������
            DBMS_OUTPUT.PUT_LINE('USERNAME=='|| V_SUM);
        END LOOP;
    END;
END PROCEDURE_USERINFO;