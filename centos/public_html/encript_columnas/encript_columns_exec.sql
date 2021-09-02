delimiter //
DROP PROCEDURE IF EXISTS copyright_sp//
CREATE PROCEDURE copyright_sp (IN valor VARCHAR(255), OUT valor_id INT)
       BEGIN
       INSERT INTO copyright (valor_original) values (valor);
       SELECT LAST_INSERT_ID() INTO valor_id;
	   SELECT MD5(CONCAT(valor , valor_id )) INTO @val_semilla;
	   SELECT HEX(AES_ENCRYPT( valor , @val_semilla )) INTO @val_encript;
       INSERT INTO copy       (id_copyright,column_copy ) values ( valor_id , @val_encript );
	   INSERT INTO copy_right (id_copyright,column_right) values ( valor_id , @val_semilla );
	   -- SELECT @val_encript; --
	   END//
	   
	   
call copyright_sp('hola_final'  , @el_id)//
select  @el_id//

 SELECT id,valor_original, column_copy, column_right ,AES_DECRYPT(UNHEX(copy.column_copy),copy_right.column_right) AS copyright_new FROM copyright
 inner join `copy` on copyright.id = copy.id_copyright
 inner join copy_right on copyright.id = copy_right.id_copyright
//

 
 
