USE rails-sorting_development;

INSERT INTO products VALUES(1,'orange','fruit','2015-12-24 18:11:44.610050','2015-12-24 18:11:44.610050');
INSERT INTO products VALUES(2,'onions','veg','2015-12-24 18:11:54.977313','2015-12-24 18:11:54.977313');
INSERT INTO products VALUES(3,'carrots','veg','2015-12-24 18:12:12.589968','2015-12-24 18:12:12.589968');
INSERT INTO products VALUES(4,'cola','drink','2015-12-24 18:12:28.080403','2015-12-24 18:12:28.080403');

INSERT INTO custom_field_definitions VALUES(1,'product','price','decimal','','','','','0.99','2015-12-24 18:29:31.563739','2015-12-28 03:00:28.498457');
INSERT INTO custom_field_definitions VALUES(2,'product','supplier','string','default value','','','','','2015-12-24 18:30:42.595866','2015-12-28 03:10:09.391417');
INSERT INTO custom_field_definitions VALUES(3,'product','low quantity','','','100','','','','2015-12-24 18:33:25.105662','2015-12-24 18:33:25.105662');

INSERT INTO custom_fields VALUES(1,'product','1','','','','','1.50','1','2015-12-24 18:35:35.672350','2015-12-24 18:35:35.672350');
INSERT INTO custom_fields VALUES(2,'product','3','fruits of the world','','','','','2','2015-12-24 18:36:49.213412','2015-12-28 03:12:13.572354');
INSERT INTO custom_fields VALUES(3,'products','4','','5','','','','3','2015-12-24 18:38:16.040340','2015-12-24 18:38:16.040340');
