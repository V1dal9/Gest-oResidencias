--inserir na tabela residencia
insert into residence (residence_id, name, location, phone)
values (1, 'Feminina 1', 'guarda',234596731);

insert into residence (residence_id, name, location, phone)
values (2, 'Feminina 2', 'guarda',234596732);

insert into residence (residence_id, name, location, phone)
values (3, 'Feminina 3', 'guarda',234596733);

insert into residence (residence_id, name, location, phone)
values (4, 'Masculina 1', 'guarda',234596734);

insert into residence (residence_id, name, location, phone)
values (5, 'Masculina 2', 'guarda',234596735);

--inserir na tabela students

INSERT INTO  Students ( student_id, name, gender, identify_no, nif, mobile_phone, email,test_result, vacinated, residence_name, deleted, date_created,date_updated, date_deleted)
    VALUES (1,'João Rodrigues', 'm', 12344356, 123432234, 912345345, null,null,'n','Masculina 1' , 0, sysdate, null, null);
    
INSERT INTO  Students ( student_id, name, gender, identify_no, nif, mobile_phone, email,test_result, vacinated, residence_name, deleted, date_created,date_updated, date_deleted)
    VALUES (2,'Ana Fonseca', 'f', 24345356, 134465734, 922445355, null,null,'s','Feminina 2' , 0, sysdate, null, null);
    
INSERT INTO  Students ( student_id, name, gender, identify_no, nif, mobile_phone, email,test_result, vacinated, residence_name, deleted, date_created,date_updated, date_deleted)
    VALUES (3,'Rita Andrade', 'f', 25375816, 101568734, 916345855, null,null,'n','Feminina 2' , 0, sysdate, null, null);

INSERT INTO students (student_id, name, gender, identify_no, nif, mobile_phone, email,test_result,vacinated, residence_name, deleted, date_created,date_updated, date_deleted)
    VALUES (4,'Ana Vidal', 'f', 1705182, 262996960, 928113593, 'raquelvidal99@hotmail.com',null,'s','Feminina 1',0,sysdate, null,null);

INSERT INTO students (student_id, name, gender, identify_no, nif, mobile_phone, email,test_result,vacinated, residence_name, deleted,date_created, date_updated, date_deleted)
VALUES (5,'João Aleixo', 'm', 1704773, 262996961, 928113592, 'joaoaleixo2014@hotmail.com',null,'s','Masculina 1',0,to_date('03/12/2020', 'dd/mm/yyyy'),null,null);


INSERT INTO students (student_id, name, gender, identify_no, nif, mobile_phone,email, test_result,vacinated, residence_name,deleted, date_created, date_updated, date_deleted)
VALUES (6,'Diogo Neto', 'm', 1704779, 282956362, 928113591, 'dvneto@gmail.com',null,'s','Masculina 2',0,to_date('08/06/2020', 'dd/mm/yyyy'),null,null);

INSERT INTO students (student_id, name, gender, identify_no, nif, mobile_phone,email, test_result,vacinated, residence_name,deleted, date_created, date_updated, date_deleted)
VALUES (7,'Tomás Esteves', 'm', 1704753, 258818247, 928113592, 'tomsesteves@gmail.com',null,'n','Masculina 2',0,to_date('20/08/2020','dd/mm/yyyy'),null,null);

INSERT INTO students (student_id, name, gender, identify_no, nif, mobile_phone,email, test_result,vacinated, residence_name,deleted, date_created, date_updated, date_deleted)
VALUES (8,'Joana Oliveira', 'f', 1454658, 231678961, 918518592, 'joliveira@gmail.com',null,'n','Feminina 1',0,'2020-08-09',null,null);

INSERT INTO students (student_id, name, gender, identify_no, nif, mobile_phone,email, test_result,vacinated, residence_name,deleted, date_created, date_updated, date_deleted)
VALUES (9,'Francisco Loureiro', 'm', 1705773, 262496961, 928113592, 'franciscoloureiro@hotmail.com',null,'s','Masculina 1',0,'2020-08-09',null,null);


INSERT INTO students (student_id, name, gender, identify_no, nif, mobile_phone,email, test_result,vacinated, residence_name, deleted, date_created, date_updated, date_deleted)
VALUES (10,'Carolina Neves', 'f', 1705773, 238497961, 928113592, 'cneves@hotmail.com',null,'s','Feminina 1',0,to_date('03/12/2020','dd/mm/yyyy'),null,null);

INSERT INTO students (student_id, name, gender, identify_no, nif, mobile_phone,email, test_result,vacinated, residence_name,deleted, date_created, date_updated, date_deleted)
VALUES (11,'António Fernandes', 'm', 1705773, 273287961, 928113592, 'afernandes@live.com.pt',null,'s','Masculina 1',0, to_date('03/12/2020','dd/mm/yyyy'),null,null);



--inserir na tabela rooms

INSERT INTO  Rooms (rooms_id, rooms_num, description, beds, disponibility, student_name, residence_residence_id) 
    VALUES (1,105,'Quarto com duas camas masculino-2',2, 'n', 'João Rodrigues e António Fernandes',5);
    
INSERT INTO  Rooms(rooms_id, rooms_num, description,  beds, disponibility, student_name, residence_residence_id) 
    VALUES (2,106,'Quarto  singular residência feminina 2', 1, 'n', 'Rita Andrade',2);
    
INSERT INTO  Rooms(rooms_id, rooms_num, description, beds, disponibility, student_name, residence_residence_id) 
    VALUES (3,106,'Quarto duplo Masculina 1', 2, 's', 'Diogo Neto',4); 
   
INSERT INTO rooms (rooms_id, rooms_num, description, beds, disponibility, student_name, residence_residence_id)
    VALUES (4, 001, 'quarto com 3 camas', 3, 's','Ana Vidal',1);

INSERT INTO rooms (rooms_id, rooms_num, description,  beds, disponibility, student_name,residence_residence_id)
    VALUES (5, 002, 'quarto com 2 camas', 2, 's','Joana Oliveira',1);

INSERT INTO rooms (rooms_id, rooms_num, description, beds, disponibility, student_name,residence_residence_id)
    VALUES (6, 003, 'quarto com 1 camas', 1,'n','Carolina Neves',1);

INSERT INTO rooms (rooms_id, rooms_num, description, beds, disponibility, student_name,residence_residence_id)
    VALUES (7, 003, 'quarto com 1 camas',1, 'n','João Aleixo',4);

INSERT INTO  Rooms(rooms_id, rooms_num,description, beds, disponibility, student_name, residence_residence_id) 
    VALUES (8,51,'Quarto 4 camas',4,'s' ,null ,5);
    
INSERT INTO  Rooms(rooms_id, rooms_num,description, beds, disponibility, student_name, residence_residence_id) 
    VALUES (9,231,'Quarto cama singular',1,'s',null,3);
    
INSERT INTO  Rooms(rooms_id, rooms_num,description, beds, disponibility, student_name, residence_residence_id) 
    VALUES (10,100,'Quarto 3 camas',3,'s' ,null ,4);
    
INSERT INTO  Rooms(rooms_id, rooms_num,description, beds, disponibility, student_name, residence_residence_id) 
    VALUES (11,30,'Quarto cama singular',1,'s',null,2);
    
INSERT INTO  Rooms(rooms_id, rooms_num,description, beds, disponibility, student_name, residence_residence_id) 
    VALUES (12,51,'Quarto 4 camas',4,'s' ,null ,1);
    
INSERT INTO  Rooms(rooms_id, rooms_num,description, beds, disponibility, student_name, residence_residence_id) 
    VALUES (13,231,'Quarto com 3 camas  ',3,'s',null,2);
    
INSERT INTO  Rooms(rooms_id, rooms_num,description, beds, disponibility, student_name, residence_residence_id) 
    VALUES (14,21,'Quarto com 2 camas  ',2,'s',null,1);
    
INSERT INTO  Rooms(rooms_id, rooms_num,description, beds, disponibility, student_name, residence_residence_id) 
    VALUES (15,149,'Quarto com 4 camas  ',4,'s',null,1);
    
INSERT INTO  Rooms(rooms_id, rooms_num,description, beds, disponibility, student_name, residence_residence_id) 
    VALUES (16,71,'Quarto com 1 cama ',1,'s',null,3);
    
INSERT INTO  Rooms(rooms_id, rooms_num,description, beds, disponibility, student_name, residence_residence_id) 
    VALUES (17,21,'Quarto com 3 camas  ',3,'s',null,2);

INSERT INTO  Rooms(rooms_id, rooms_num,description, beds, disponibility, student_name, residence_residence_id) 
    VALUES (18,132,'Quarto com 4 camas  ',4,'s',null,4);
    
INSERT INTO  Rooms(rooms_id, rooms_num,description, beds, disponibility, student_name, residence_residence_id) 
    VALUES (19,73,'Quarto com 2 camas  ',2,'s',null,3);
    
INSERT INTO  Rooms(rooms_id, rooms_num,description, beds, disponibility, student_name, residence_residence_id) 
    VALUES (20,121,'Quarto com 1 cama  ',1,'s',null,1);


--Materiais inserir

INSERT INTO  Materials (materials_id,name,description,quantity,residence_residence_id) 
    VALUES (1,'Ferro de Engomar', 'Ferro de engomar para cada aluno da residência masculina 1', 20 ,4);
    
INSERT INTO  Materials (materials_id,name,description,quantity,residence_residence_id) 
    VALUES (2,'Papel Higiénico', 'Papel higiénico disponível para os alunos da residência masculina 1', 200 ,4);
    
INSERT INTO  Materials (materials_id,name,description,quantity,residence_residence_id)
    VALUES (3,'Ferro de Engomar', 'Ferro de engomar para cada aluno da residência feminina 1', 10 ,1);
    
INSERT INTO  Materials (materials_id,name,description,quantity,residence_residence_id)
    VALUES (4,'Papel Higiénico', 'Papel higiénico disponível para os alunos da residência feminina 1 ', 400 ,1);
    
INSERT INTO  Materials (materials_id,name,description,quantity,residence_residence_id)
    VALUES (5,'Toalha', 'Toalha disponível para os alunos da residência masculina 1 ', 100 ,4);

INSERT INTO  Materials (materials_id,name,description,quantity,residence_residence_id)
    VALUES (6,'Toalha', 'Toalha disponível para os alunos da residência feminina 1', 75 ,1);

INSERT INTO  Materials (materials_id,name,description,quantity,residence_residence_id) 
    VALUES (7,'Ferro de Engomar', 'Ferro de engomar para cada aluno da residência masculina 2', 20 ,5);
    
INSERT INTO  Materials (materials_id,name,description,quantity,residence_residence_id) 
    VALUES (8,'Papel Higiénico', 'Papel higiénico disponível para os alunos da residência masculina 2', 45 ,5);
    
INSERT INTO  Materials (materials_id,name,description,quantity,residence_residence_id)
    VALUES (9,'Ferro de Engomar', 'Ferro de engomar para cada aluno da residência feminina 2', 10 ,2);
    
INSERT INTO  Materials (materials_id,name,description,quantity,residence_residence_id)
    VALUES (10,'Papel Higiénico', 'Papel higiénico disponível para os alunos da residência feminina  2', 400 ,2);
    
INSERT INTO  Materials (materials_id,name,description,quantity,residence_residence_id)
    VALUES (11,'Toalha', 'Toalha disponível para os alunos da residência masculina 2 ', 100 ,5);

INSERT INTO  Materials (materials_id,name,description,quantity,residence_residence_id)
    VALUES (12,'Toalha', 'Toalha disponível para os alunos da residência feminina  2', 35 ,2);
    
INSERT INTO  Materials (materials_id,name,description,quantity,residence_residence_id) 
    VALUES (13,'Ferro de Engomar', 'Ferro de engomar para cada aluno da residência feminina 3', 15 ,3);
    
INSERT INTO  Materials (materials_id,name,description,quantity,residence_residence_id) 
    VALUES (14,'Papel Higiénico', 'Papel higiénico disponível para os alunos da residência feminina 3', 75 ,3);
        
INSERT INTO  Materials (materials_id,name,description,quantity,residence_residence_id)
    VALUES (15,'Toalha', 'Toalha disponível para os alunos da residência feminina 3 ', 60 ,3);

--Covid Situação

INSERT INTO  Covid_Situation (covid_situation_id, tested, test_result, date_created, students_student_id)
    VALUES (1,'s', 'negativo', sysdate, 2);
    
INSERT INTO  Covid_Situation (covid_situation_id, tested, test_result, date_created, students_student_id)
    VALUES (2,'n', null, sysdate, 3);
    
INSERT INTO  Covid_Situation (covid_situation_id, tested, test_result, date_created, students_student_id)
    VALUES (3,'s','positivo', to_date('02/11/2021', 'dd/mm/yyyy'), 7);
    
INSERT INTO  Covid_Situation (covid_situation_id, tested, test_result, date_created, students_student_id)
    VALUES (4,'s', 'negativo', sysdate, 4);

INSERT INTO  Covid_Situation (covid_situation_id, tested, test_result, date_created, students_student_id)
    VALUES (5,'s', 'negativo', to_date('02/11/2021', 'dd/mm/yyyy') , 7);
    
INSERT INTO  Covid_Situation (covid_situation_id, tested, test_result, date_created, students_student_id)
    VALUES (6,'s', 'positivo', to_date('06/12/2020', 'dd/mm/yyyy') , 8);

INSERT INTO  Covid_Situation (covid_situation_id, tested, test_result, date_created, students_student_id)
    VALUES (7,'s', 'negativo', to_date('21/12/2020', 'dd/mm/yyyy') , 8);
    
INSERT INTO  Covid_Situation (covid_situation_id, tested, test_result, date_created, students_student_id)
    VALUES (8,'s', 'negativo', to_date('14/10/2021', 'dd/mm/yyyy') , 9);
    
INSERT INTO  Covid_Situation (covid_situation_id, tested, test_result, date_created, students_student_id)
    VALUES (9,'n',null, to_date('15/10/2020', 'dd/mm/yyyy') , 11);
    
INSERT INTO  Covid_Situation (covid_situation_id, tested, test_result, date_created, students_student_id)
    VALUES (10,'s', 'positivo', to_date('03/02/2021', 'dd/mm/yyyy') , 11);
    
INSERT INTO  Covid_Situation (covid_situation_id, tested, test_result, date_created, students_student_id)
    VALUES (11,'s', 'negativo', to_date('18/02/2021', 'dd/mm/yyyy') , 11);
    
INSERT INTO  Covid_Situation (covid_situation_id, tested, test_result, date_created, students_student_id)
    VALUES (12,'s', 'negativo', to_date('24/01/2021', 'dd/mm/yyyy') , 10);
    
INSERT INTO  Covid_Situation (covid_situation_id, tested, test_result, date_created, students_student_id)
    VALUES (13,'s', 'negativo', to_date('04/04/2021', 'dd/mm/yyyy') , 6);

INSERT INTO  Covid_Situation (covid_situation_id, tested, test_result, date_created, students_student_id)
    VALUES (14,'s', 'negativo', to_date('23/12/2021', 'dd/mm/yyyy') , 1);
    
INSERT INTO  Covid_Situation (covid_situation_id, tested, test_result, date_created, students_student_id)
    VALUES (15,'s', 'negativo', to_date('23/12/2021', 'dd/mm/yyyy') , 2);
    
INSERT INTO  Covid_Situation (covid_situation_id, tested, test_result, date_created, students_student_id)
    VALUES (16,'s', 'negativo', to_date('24/12/2021', 'dd/mm/yyyy') , 3);
    
INSERT INTO  Covid_Situation (covid_situation_id, tested, test_result, date_created, students_student_id)
    VALUES (17,'s', 'negativo', to_date('23/12/2021', 'dd/mm/yyyy') , 2);
    
INSERT INTO  Covid_Situation (covid_situation_id, tested, test_result, date_created, students_student_id)
    VALUES (18,'s', 'positivo', to_date('30/10/2021', 'dd/mm/yyyy') , 5);
    
INSERT INTO  Covid_Situation (covid_situation_id, tested, test_result, date_created, students_student_id)
    VALUES (19,'s', 'positivo', to_date('14/05/2021', 'dd/mm/yyyy') , 4);
    
INSERT INTO  Covid_Situation (covid_situation_id, tested, test_result, date_created, students_student_id)
    VALUES (20,'s', 'negativo', to_date('15/11/2021', 'dd/mm/yyyy') , 5);
    
INSERT INTO  Covid_Situation (covid_situation_id, tested, test_result, date_created, students_student_id)
    VALUES (21,'s', 'negativo', to_date('29/05/2021', 'dd/mm/yyyy') , 4);
 
 
 -- Requisiton
INSERT INTO Requisition (requisition_id, date_requisition, material_name, materials_materials_id, students_student_id) 
    VALUES (1, sysdate, 'Papel Higiénico', 2, 1);

INSERT INTO Requisition (requisition_id, date_requisition, material_name, materials_materials_id, students_student_id) 
    VALUES (2, sysdate, 'Papel Higiénico',4 , 4);
/*
UPDATE materials SET  quantity = (
    select m.quantity
    from materials m 
    where materials_id = 4) - 1
WHERE materials_id = 4;
*/

delete students_contract;
    
--Contrato

INSERT INTO Contract (contract_id, date_start_rent, date_end_rent, payment,students_student_id, rooms_rooms_id) 
    VALUES (1, to_date('11/06/2021', 'dd/mm/yyyy'), to_date('11/06/2022', 'dd/mm/yyyy'), 135.00, 2, 2);
    
INSERT INTO Contract (contract_id, date_start_rent, date_end_rent, payment,students_student_id, rooms_rooms_id) 
    VALUES (2, to_date('25/08/2021', 'dd/mm/yyyy'), to_date('25/08/2022', 'dd/mm/yyyy'), 135.00, 1, 1);

INSERT INTO Contract (contract_id, date_start_rent, date_end_rent, payment,students_student_id, rooms_rooms_id) 
    VALUES (3, to_date('25/08/2021', 'dd/mm/yyyy'), to_date('25/08/2022', 'dd/mm/yyyy'), 85.5, 8, 5);

INSERT INTO Contract (contract_id, date_start_rent, date_end_rent, payment,students_student_id, rooms_rooms_id) 
    VALUES (4, to_date('10/07/2021', 'dd/mm/yyyy'), to_date('10/08/2022', 'dd/mm/yyyy'), 100.0, 6, 3);
    
INSERT INTO Contract (contract_id, date_start_rent, date_end_rent, payment,students_student_id, rooms_rooms_id) 
    VALUES (5, to_date('25/09/2021', 'dd/mm/yyyy'), to_date('27/10/2022', 'dd/mm/yyyy'), 85, 4, 4);
    
INSERT INTO Contract (contract_id, date_start_rent, date_end_rent, payment,students_student_id, rooms_rooms_id) 
    VALUES (6, to_date('25/08/2021', 'dd/mm/yyyy'), to_date('25/08/2022', 'dd/mm/yyyy'), 97, 10, 6);
    
INSERT INTO Contract (contract_id, date_start_rent, date_end_rent, payment,students_student_id, rooms_rooms_id) 
    VALUES (7, to_date('08/05/2020', 'dd/mm/yyyy'), to_date('25/08/2022', 'dd/mm/yyyy'), 105, 5, 7);
    
INSERT INTO Contract (contract_id, date_start_rent, date_end_rent, payment,students_student_id, rooms_rooms_id) 
    VALUES (8, to_date('25/08/2021', 'dd/mm/yyyy'), to_date('25/08/2022', 'dd/mm/yyyy'), 135, 11, 1);


--  Students Control
INSERT INTO Students_Control (control_id, action_type, residence_name, entry_date, contract_contract_id) 
    VALUES (1,'saída', 'Residência Feminina 2', to_date('20/11/2021 22:15:30', 'dd/mm/yyyy hh24:mi:ss'), 1);

INSERT INTO Students_Control (control_id, action_type, residence_name, entry_date, contract_contract_id) 
    VALUES (2,'saída', 'Residência Masculina 2 ',to_date('18/10/2021 19:05:25', 'dd/mm/yyyy hh24:mi:ss'), 2);   
 
 INSERT INTO Students_Control (control_id, action_type, residence_name, entry_date, contract_contract_id) 
    VALUES (3,'saída', 'Residência Feminina 1', to_date('05/11/2021 17:16:10', 'dd/mm/yyyy hh24:mi:ss'), 3);  
    
 INSERT INTO Students_Control (control_id, action_type, residence_name, entry_date, contract_contract_id) 
    VALUES (4,'entrada', 'Residência Feminina 1', to_date('05/11/2021 22:15:30', 'dd/mm/yyyy hh24:mi:ss'), 3); 

 INSERT INTO Students_Control (control_id, action_type, residence_name, entry_date, contract_contract_id) 
    VALUES (5,'entrada', 'Residência Masculina 1', to_date('22/11/2021 19:45:20', 'dd/mm/yyyy hh24:mi:ss'), 1);
    
 INSERT INTO Students_Control (control_id, action_type, residence_name, entry_date, contract_contract_id) 
    VALUES (6,'saída', 'Residência Feminina 1', to_date('12/12/2021 21:15:30', 'dd/mm/yyyy hh24:mi:ss'), 5);
    
 INSERT INTO Students_Control (control_id, action_type, residence_name, entry_date, contract_contract_id) 
    VALUES (7,'entrada', 'Residência Feminina 1', to_date('15/12/2021 10:05:00', 'dd/mm/yyyy hh24:mi:ss'), 5);

INSERT INTO Students_Control (control_id, action_type, residence_name, entry_date, contract_contract_id) 
    VALUES (8,'saída', 'Residência Feminina 1', to_date('02/10/2021 21:15:30', 'dd/mm/yyyy hh24:mi:ss'), 5);
    
 INSERT INTO Students_Control (control_id, action_type, residence_name, entry_date, contract_contract_id) 
    VALUES (9,'entrada', 'Residência Feminina 1', to_date('10/11/2021 09:05:00', 'dd/mm/yyyy hh24:mi:ss'), 5);
    
INSERT INTO Students_Control (control_id, action_type, residence_name, entry_date, contract_contract_id) 
    VALUES (10,'entrada', 'Residência Masculina 2 ',to_date('01/11/2021 11:55:25', 'dd/mm/yyyy hh24:mi:ss'), 2);  

--entradas e saidas

select action_type, entry_date
from students_control;


--numero de saidas por mês
select count(distinct action_type)
from students_control
where action_type like 'saida';

--media do valor de rend
