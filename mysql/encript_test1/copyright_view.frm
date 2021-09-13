TYPE=VIEW
query=select `encript_test1`.`copyright`.`id` AS `id`,`encript_test1`.`copyright`.`valor_original` AS `valor_original`,`encript_test1`.`copy`.`column_copy` AS `column_copy`,`encript_test1`.`copy_right`.`column_right` AS `column_right`,aes_decrypt(unhex(`encript_test1`.`copy`.`column_copy`),`encript_test1`.`copy_right`.`column_right`) AS `copyright_new` from ((`encript_test1`.`copyright` join `encript_test1`.`copy` on((`encript_test1`.`copyright`.`id` = `encript_test1`.`copy`.`id_copyright`))) join `encript_test1`.`copy_right` on((`encript_test1`.`copyright`.`id` = `encript_test1`.`copy_right`.`id_copyright`)))
md5=8be1403132901f8f75116ab5f9fe7a3d
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2020-10-09 01:21:26
create-version=2
source=SELECT id,valor_original, column_copy, column_right ,AES_DECRYPT(UNHEX(copy.column_copy),copy_right.column_right) AS copyright_new FROM copyright\n inner join `copy` on copyright.id = copy.id_copyright\n inner join copy_right on copyright.id = copy_right.id_copyright
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `encript_test1`.`copyright`.`id` AS `id`,`encript_test1`.`copyright`.`valor_original` AS `valor_original`,`encript_test1`.`copy`.`column_copy` AS `column_copy`,`encript_test1`.`copy_right`.`column_right` AS `column_right`,aes_decrypt(unhex(`encript_test1`.`copy`.`column_copy`),`encript_test1`.`copy_right`.`column_right`) AS `copyright_new` from ((`encript_test1`.`copyright` join `encript_test1`.`copy` on((`encript_test1`.`copyright`.`id` = `encript_test1`.`copy`.`id_copyright`))) join `encript_test1`.`copy_right` on((`encript_test1`.`copyright`.`id` = `encript_test1`.`copy_right`.`id_copyright`)))
mariadb-version=100136
