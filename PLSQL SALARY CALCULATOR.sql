REM   Script: Session 09.1
REM   My PLSQL TASK

create or replace function calculate_salary(p_date date,p_sal number)return number 
is 
daysCount number(10); 
dailyPayment number(10); 
Sal number(10);  
 
begin 
daysCount:= EXTRACT(Day FROM p_date); 
dailyPayment:=p_sal /EXTRACT(Day FROM round(sysdate,'month')-1); 
Sal := daysCount * dailyPayment; 
 
 
return Sal; 
 
end;
/

Select calculate_salary(sysdate,1600) From Dual;

