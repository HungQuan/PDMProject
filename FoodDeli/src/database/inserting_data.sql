use fooddeli;
INSERT INTO adminis VALUES 
(1,'sdf41','rohan.lucy@yahoo.com','cschowalter'),
(2,'sdf34','therese71@yahoo.com','batz.adah'),
(3,'fg13r','treutel.andreane@hotmail.','waino.raynor'),
(4,'jdj38','mark.romaguera@yahoo.com','leopoldo.hammes'),
(5,'33sd3','maybelle78@gmail.com','edyth.stiedemann'),
(6,'43s3d','krodriguez@hotmail.com','fahey.hipolito');

INSERT INTO restaurant (`restaurantID`,`address`,`contact_no`,`restName`,`adminID`)
VALUES
  (1,"864-4077 Magna. Avenue","(522) 363-0751","Sophia",5),
  (2,"Ap #625-1289 Elit. St.","(473) 711-4456","Addison",4),
  (3,"969-2557 Aliquet Street","(488) 255-3153","Regina",6),
  (4,"Ap #549-2262 Sed St.","(498) 414-0752","Patricia",4),
  (5,"2641 Facilisi. Avenue","(573) 678-3270","Jennifer",2),
  (6,"600-3148 Mi. Avenue","(883) 644-7573","Wylie",4),
  (7,"6246 Ornare Avenue","(157) 364-7274","Wayne",2),
  (8,"Ap #421-9303 Sagittis. Ave","(354) 285-1679","Sybil",5),
  (9,"377-1635 At, Road","(727) 836-1878","Susan",5),
  (10,"P.O. Box 454, 3652 Consectetuer Av.","(774) 335-8297","Drake",4);

INSERT INTO driver (`driverID`,`fullName`,`fontact_no`,`license_no`)
VALUES
  (1,"Laith Mercado","(600) 345-6438","699-766-4641"),
  (2,"Jonas Vasquez","(197) 672-3784","239-331-5438"),
  (3,"Austin Clarke","(878) 639-4424","954-196-4133"),
  (4,"Mira Moss","(415) 697-7383","471-120-0295"),
  (5,"Kaitlin Crawford","(217) 331-4628","878-358-7963"),
  (6,"Natalie Mcclure","(618) 412-0438","520-251-5232"),
  (7,"Hillary Henson","(441) 493-1688","436-141-9286"),
  (8,"Tatiana Hall","(587) 917-7516","986-188-4570"),
  (9,"Austin Bradford","(840) 753-6681","878-584-1083"),
  (10,"Rhoda Bentley","(579) 686-7679","386-466-7205");

INSERT INTO customer (`customerID`,`fullName`,`email`,`passwrd`,`username`,`address`)
VALUES
  (1,"Gloria Aguilar","amet@outlook.com","Mw18LK2","nfwm95","332-2350 Dui Rd."),
  (2,"Guinevere Rasmussen","sit@google.com","Nk63XH8","gngr23","8382 Vitae Av."),
  (3,"Barry Perez","dui.aliquam@google.net","Mv25JV2","iyty73","P.O. Box 826, 243 Vel St."),
  (4,"Desiree Estes","aliquam.eros@outlook.edu","Lq91SI0","icyj28","Ap #649-5752 Ipsum Rd."),
  (5,"Todd Powers","tempus.lorem@outlook.com","Xd22LI2","uhgd64","Ap #298-7216 Blandit Ave"),
  (6,"Fleur Baker","neque.dictum@google.edu","Ft70XV1","qluo90","390-914 Tellus. Av."),
  (7,"Edward Navarro","turpis@outlook.net","Vc23PW7","kozp88","619-6006 Ultricies Ave"),
  (8,"Roth Reyes","quam.hant@google.com","Gu86JQ4","yobh39","P.O. Box 735 Lectus Av"),
  (9,"Tashya Cherry","posu.vulpte@outlook.com","Cq96IM8","oklx50","Ap #700-9560 Vel, Rd."),
  (10,"Gay Lynch","non.enim@outlook.com","Rw35NO1","ufsc62","P.O. 490 Justo Road");
  
INSERT INTO orders (`orderID`,`ordStatus`,`amount`,`customerID`,`driverID`)
VALUES
  (1,"Undone",5,2,10),
  (2,"Done",1,4,3),
  (3,"Undone",17,3,5),
  (4,"Done",18,6,10),
  (5,"Done",14,7,3),
  (6,"Undone",4,9,2),
  (7,"Done",20,3,1),
  (8,"Done",3,5,4),
  (9,"Undone",2,4,4),
  (10,"Done",13,6,1);

  
INSERT INTO MenuType (`typeID`,`foodType`)
VALUES
  (1,"dinner"),
  (2,"breakfast"),
  (3,"brunch"),
  (4,"fast-food"),
  (5,"lunch");
  
use fooddeli;
INSERT INTO food (`foodID`,`foodName`,`image`,`price`,`orderID`,`typeID`,`restaurantID`)
VALUES
  (1,"fried-chicken","https://insanelygoodrecipes.com/wp-content/uploads/2020/04/Fried_Chicken-1024x536.png","$4.90",1,1,3),
  (2,"spaghetti","https://cdn.tgdd.vn/Files/2019/09/09/1196596/cach-lam-my-spaghetti-ngon-dung-vi-y-cho-nguoi-yeu-thuong-202203031433378153.jpg","$6.95",2,4,6),
  (3,"rice","https://st2.depositphotos.com/2524151/6062/i/950/depositphotos_60627667-stock-photo-bowl-full-of-rice-on.jpg","$8.29",3,4,5),
  (4,"noodles","https://www.recipetineats.com/wp-content/uploads/2014/06/DSC_0038-680x451-1.jpg","$5.68",4,4,6),
  (5,"pasta","https://images.immediate.co.uk/production/volatile/sites/30/2021/04/Pasta-alla-vodka-f1d2e1c.jpg","$8.75",5,3,2),
  (6,"springrolls","https://www.itourvn.com/images/easyblog_articles/606/goi-cuon-summer-rolls-in-ho-chi-minh-city-cover.jpg","$7.89",6,2,2),
  (7,"pizza","https://img.dominos.vn/Cheesy-chicken-bacon.jpg","$6.49",7,4,5),
  (8,"pho","https://photo-cms-vovworld.zadn.vn/w500/Uploaded/vovworld/bpcgpivo/2020_05_08/pho-ha-noi1_KLJJ.jpg","$3.59",8,4,6),
  (9,"sandwich","https://img-global.cpcdn.com/recipes/76550fb38d103b0a/400x400cq70/photo.jpg","$4.82",9,3,3),
  (10,"burger","https://food.fnr.sndimg.com/content/dam/images/food/fullset/2012/6/1/2/FNM_070112-Copy-That-Almost-Famous-Animal-Style-Burger-Recipe_s4x3.jpg.rend.hgtvcom.616.462.suffix/1382541460839.jpeg","$1.99",10,2,2);
  
INSERT INTO payment (`paymentID`,`payment_type`)
VALUES
  (1,"credits"),
  (2,"cash"),
  (3,"debits");

INSERT INTO transactions (`transactionsID`,`restaurantID`,`paymentID`,`customerID`,`driverID`)
VALUES
  (1,7,3,7,1),
  (2,3,1,8,2),
  (3,8,2,5,3),
  (4,5,1,4,4),
  (5,10,1,3,5),
  (6,9,3,9,6),
  (7,4,1,6,7),
  (8,1,2,10,8),
  (9,2,2,1,9),
  (10,6,1,2,10);
  
INSERT INTO has (`timeOrder`,`orderID`,`transactionsID`)
VALUES
  ("2022-05-06",1,9),
  ("2022-05-20",2,7),
  ("2022-06-09",3,6),
  ("2022-05-02",4,10),
  ("2022-06-03",5,4),
  ("2022-05-24",6,3),
  ("2022-05-13",7,8),
  ("2022-06-02",8,1),
  ("2022-05-10",9,2),
  ("2022-05-08",10,5);