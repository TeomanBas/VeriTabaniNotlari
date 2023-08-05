use `okul`;
CREATE TABLE `okul`.`harf_notu` 
(`h_kar` VARCHAR(30) NOT NULL ,
 `ilk` TINYINT UNSIGNED NOT NULL ,
  `son` INT NOT NULL ) ENGINE = InnoDB; 

INSERT INTO harf_notu(h_kar,ilk,son) VALUES ("AA",84,100);
INSERT INTO harf_notu(h_kar,ilk,son) VALUES ("AB",77,83);
INSERT INTO harf_notu(h_kar,ilk,son) VALUES ("BA",71,76);
INSERT INTO harf_notu(h_kar,ilk,son) VALUES ("BB",66,70);
INSERT INTO harf_notu(h_kar,ilk,son) VALUES ("BC",61,65);
INSERT INTO harf_notu(h_kar,ilk,son) VALUES ("CB",56,60);
INSERT INTO harf_notu(h_kar,ilk,son) VALUES ("CC",50,55);
INSERT INTO harf_notu(h_kar,ilk,son) VALUES ("CD",46,49);
INSERT INTO harf_notu(h_kar,ilk,son) VALUES ("DC",40,45);
INSERT INTO harf_notu(h_kar,ilk,son) VALUES ("DD",33,39);
INSERT INTO harf_notu(h_kar,ilk,son) VALUES ("FF",0,32);
