/*
MySQL Backup
Source Server Version: 5.0.51
Source Database: shop
Date: 4/8/2017 20:11:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `bill`
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `bill_id` bigint(20) NOT NULL,
  `user_id` bigint(20) default NULL,
  `total` double default NULL,
  `payment` varchar(255) collate utf8_unicode_ci default NULL,
  `address` longtext collate utf8_unicode_ci,
  `date` timestamp NULL default NULL on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`bill_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `bill_detail`
-- ----------------------------
DROP TABLE IF EXISTS `bill_detail`;
CREATE TABLE `bill_detail` (
  `bill_detail_id` bigint(20) NOT NULL auto_increment,
  `bill_id` bigint(20) default NULL,
  `product_id` bigint(20) default NULL,
  `price` double default NULL,
  `quantity` int(11) default NULL,
  PRIMARY KEY  (`bill_detail_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` bigint(11) NOT NULL,
  `category_name` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL,
  `category_id` bigint(20) default NULL,
  `product_name` varchar(255) collate utf8_unicode_ci default NULL,
  `product_image` varchar(255) collate utf8_unicode_ci default NULL,
  `product_price` double default NULL,
  `product_description` longtext collate utf8_unicode_ci,
  PRIMARY KEY  (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `user_email` varchar(255) collate utf8_unicode_ci default NULL,
  `user_pass` varchar(255) collate utf8_unicode_ci default NULL,
  `user_role` bit(1) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `bill` VALUES ('1491214759698','1','30000','COD','tuys123 -TP.HCM','2017-04-03 17:19:19'), ('1491215434264','1','60000','BANK','56-BUIDINHTUY','2017-04-03 17:30:34'), ('1491524934850','1','59990000','BANK','345 TP.HCM','2017-04-07 07:28:54'), ('1491645360592','1','0','COD','Ã¢sa','2017-04-08 16:56:00');
INSERT INTO `bill_detail` VALUES ('11','1491214759698','10','30000','1'), ('12','1491215434264','1','30000','1'), ('13','1491215434264','10','30000','1'), ('14','1491524934850','12','59990000','1');
INSERT INTO `category` VALUES ('1','Xe Số'), ('2','Xe Tay Ga'), ('3','Xe Côn Tay'), ('4','Phụ Tùng');
INSERT INTO `product` VALUES ('1','1','Wave alpha 110cc','images/so1.png','17790000','Xuất phát từ ý tưởng: mẫu xe bền bỉ với thời gian, đáng tin cậy trên mọi nẻo đường và hài hòa trong từng đường nét, kiểu dáng của Wave Alpha 110 mới cân đối, phù hợp với vóc dáng người Việt và vẫn giữ được nét đặc trưng vốn có. Bên cạnh đó, ngoài 4 gam màu quen thuộc: xanh, đỏ, trắng, đen; Wave Alpha 110 nay được bổ sung thêm màu xanh ngọc dịu mát, hứa hẹn tiếp tục là người bạn đồng hành lý tưởng cho mọi đối tượng khách hàng.'), ('2','1','Wave rsx 110cc','images/so2.png','21490000','Xe Wave RSX 110cc của hãng Honda là dòng xe số với thiết kế hiện đại ấn tượng mang đậm phong cách thể thao phù hợp với nam giới. Dòng xe Honda wave đã xuất hiện trên thị trường khá lâu và luôn được người dùng yêu thích lựa chọn, phiên bản Wave RSX 110cc mới nhất với sự thay đổi về cả ngoại hình lẫn công nghệ mang lại một trải nghiệm mới cho người dùng.'), ('3','1','Super dream 110cc','images/so3.png','18700000','Dream 110cc 2016 của hãng Honda được ra mắt thị trường và đón nhận được rất nhiều sự quan tâm của người tiêu dùng. Honda dream đã trở thành một huyền thoại không thể nào quên trong các thế hệ xe máy, dù ngày nay không được yêu thích rầm rộ như xưa nhưng honda dream vẫn khẳng định được vị thế riêng của mình. Honda dream 2016 với nhiều cải tiến hiện đại, tinh tế phù hợp với xu hướng hiện nay nhưng vẫn giữ được bản chất riêng được rất nhiều yêu thích.'), ('4','1','Future 125cc','images/so4.png','29990000','Future FI 125cc được thiết kế với màu và tem xe mới giúp người dùng toát lên được nét đẳng cấp không thể hòa lẫn được. Bên cạnh đó,Honda Việt Nam cũng nâng cao trải nghiệm lái cho khách hàng bằng việc trang bị hệ thống phun xăng điện tử PGM-FI cho tất cả các phiên bản. Đặc biệt, Future FI 125cccũng được kỳ vọng để lại ấn tượng tốt cho khách hàng khi sử dụng động cơ đạt tiêu chuẩn khí thải EURO 3 nghiêm ngặt, áp dụng từ January 1 st 2017.'), ('5','1','Blade 110','images/so5.png','21100000','Blade 110 được thiết kế dựa trên ý tưởng \"Thanh thoát và Sắc nét\" với kiểu dáng xe thon gọn, liền khối cùng những đường nét tinh tế phá cách càng làm nổi bật phong cách mạnh mẽ đậm chất thể thao cho người lái.'), ('6','2','Lead 125cc','images/ga1.png','37490000','Honda Lead 125 2016 là lựa chọn được nhiều chị em phụ nữ ưu tiên nhờ tính năng, thiết kế cùng giá cả phù hợp. Tham khảo giá cả, thông số chi tiết Honda Lead 2016. Honda Lead là mẫu xe được “đóng đinh” và nhắm tới thị trường xe tay ga dành cho nữ, đặc biệt là phụ nữ nội trợ hoặc công sở. Với lợi thế cốp để đổ rộng, dáng to ngang, vững chắc, kiểu dáng thiết kế phù hợp cho nữ với sàn để chân thoải mái, có thể chứa được nhiều đồ, Honda Lead ngày càng được nhiều phụ nữ ưu tiên lựa chọn.'), ('7','2','Sh 300cc','images/ga2.png','248000000','Xe máy Honda SH 300i 2016 là xe Tay ga cao cấp của công ty Honda Motor Co., Ltd., Nhật bản. SH 300i sản xuất vào năm 2016 - 2017. \r\nXe được trang bị động cơ 279,1cc, công suất tối đa 18,5 Kw @ 7500 vòng/phút. Tiêu thụ nhiên liệu tầm 33,3 km/lít. Xe máy Honda SH 300i có độ cao yên tầm 805 mm. Trọng lượng 169 kg.'), ('8','2','Vision 110cc','images/ga3.png','29990000','Thiết kế khung và thân xe chắc chắn\r\nKết hợp hoàn hảo giữa các yếu tố \"tiêu chuẩn\" và \"cao cấp\" cùng kích thước hợp lý, VISION mới mang lại sự tiện dụng và thoải mái vượt trội cho cuộc sống hằng ngày, đồng thời kích thước nhỏ gọn góp phần nâng cao khả năng tiết kiệm nhiên liệu cũng như vận hành và điều khiển xe.'), ('9','2','Sh 150cc','images/ga4.png','69900000','SH150i - một kiệt tác thiết kế mới sang trọng và đẳng cấp hơn với những đường nét đậm chất châu Âu, chinh phục mọi con tim ngay từ ánh nhìn đầu tiên.'), ('10','2','Sh mode 125cc','images/ga5.png','50990000','rong phân khúc xe tay ga hạng sang hiện nay, SH Mode 125cc được coi là một trong những cái tên sáng giá khi thể hiện được sự đẳng cấp và thời trang trong từng đường nét thiết kế cùng khả năng vận hành êm ái. Trong ba năm kể từ khi ra mắt tại thị trường Việt Nam, mẫu xe ga này đã đồng hành và đem đến niềm vui cầm lái cho hơn 300.000 khách hàng.'), ('11','2','Pcx 125cc','images/ga6.png','55490000','Kế thừa diện mạo mạnh mẽ và sang trọng, khơi dậy những cảm xúc đầy mê hoặc. PCX nay được trang bị thêm màu mới cá tính nhưng không kém phần thời trang. PCX - nhận diện vị thế và bản sắc của chính bạn.'), ('12','3','Msx 125cc','images/con1.png','59990000','Độc đáo phong cách, bứt phá diện mạo, tuôn trào phấn khích, chỉ có thể là MSX 125cc - mẫu xe côn tay mới với phong cách cực chất giúp bạn thể hiện cá tính khác biệt để làm chủ và chinh phục ngoạn mục mọi cuộc chơi.'), ('13','3','Winner 150cc','images/con2.png','45490000','Mang diện mạo của mẫu xe thể thao cao cấp hiện đại, WINNER 150 sở hữu thiết kế nhiều lớp cùng khung xe và vỏ xe cấu tạo 3 chiều, góc cạnh trong hình dáng một chiếc xe underbone thân thiện, linh hoạt. Tất cả những yếu tố này tạo nên thiết kế độc đáo, riêng biệt chỉ có ở WINNER, và phong cách mạnh mẽ, thời thượng, hứa hẹn những trải nghiệm lái thú vị và niềm tự hào cho người sở hữu.'), ('14','2','Air blade 125cc','images/ga7.jpg','40990000','Dấu ấn Air Blade đầy kiêu hãnh được khắc họa với hình ảnh họa tiết logo sơn đỏ đầy cuốn hút, kết hợp cùng logo Black Edition nổi bật và những đường nét màu đỏ sắc cạnh trên thân xe; giúp khẳng định cá tính mạnh mẽ, nam tính và trẻ trung cho người sở hữu.'), ('15','4','Dầu nhờn xe ga','images/pt1.png','84000','Là thành phần quan trọng giúp duy trì khả năng hoạt động của bộ máy. Cứ mỗi 1.000 – 1.500km vận hành, bạn thay mới dầu nhớt một lần.'), ('16','4','Dầu nhờn xe số','images/pt2.png','80000','Là thành phần quan trọng giúp duy trì khả năng hoạt động của bộ máy. Cứ mỗi 1.000 – 1.500km vận hành, bạn thay mới dầu nhớt một lần.'), ('17','4','Lốp xe','images/pt3.jpg','353000','Vì tiếp xúc với mặt đường nên lốp xe phải tốt để đảm bảo độ bám cho xe, giúp xe vận hành ổn định trong mọi địa hình. Lốp bị mòn quá nhiều sẽ khiến bạn dễ gặp tai nạn, đặc biệt là với xe tay ga. Tốt nhất, bạn nên thay lốp mới sau 40.000km vận hành.'), ('18','4','Nhông xích','images/pt4.jpg','170000','Đảm bảo sự vận hành ổn định của bánh xe. Nếu xích giãn, người lái xe dễ gặp tai nạn khi chạy với tốc độ không ổn định. Ngoài ra, chúng cũng dễ bị tuột giữa đường, khiến bạn phải đẩy xe. Bạn nên thay mới  sau 15.000 – 20.000km vận hành xe máy.'), ('19','4','Tấm lọc gió','images/pt5.jpg','50000','Lọc gió là bộ phận quan trọng trên xe máy. Nó có tác dụng giúp không khí vào buồng đốt sạch hơn. Nếu lọc gió bẩn, nó sẽ cản trở không khí vào động cơ và giảm tính năng của động cơ khiến tiêu tốn nhiên liệu hơn.'), ('20','4','Má Phanh','images/pt6.png','66000',NULL), ('21','4','Bugi','images/pt7.png','52000','Có độ cứng cao, hoạt động bền bỉ , là phụ kiện thiết yếu cho xe'), ('22','4','Ắc Quy','images/pt8.jpg','280000','ếu dùng ắc quy nước, bạn nên thay mới sau 2 năm sử dụng, còn ắc quy khô thì từ 3 năm. Song, điều đó còn tùy vào nhiều yếu tố. Bạn hãy lưu ý khi bóp còi hoặc bật đèn xi nhan. Nếu tín hiệu yếu hoặc nhỏ, bạn hãy thay bình ngay. Sau những biểu hiện đó, khi bạn đề máy, xe có thể không khởi động vì điện trong bình đã cạn.'), ('23','4','Dầu giảm xóc','images/pt9.png','34000',NULL);
INSERT INTO `users` VALUES ('1491524844802','hinh@gmail.com','12345','\0'), ('2','dinhcongmanh@gmail.com','12345',''), ('1','phananh5644@gmail.com','12345','\0'), ('1491582817580','anh@gmail.com','12345','\0');
