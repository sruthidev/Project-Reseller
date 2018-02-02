SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(65) NOT NULL,
  `password` varchar(65) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `admin` (`admin_id`, `username`, `password`, `status`) VALUES
(1, 'anaconda', 'bcf3ec2503663c18fc3f693b73aac49600d577bf27959ffe2758afe943c79e87', 1),
(2, 'ccc', '0aa3c90ae4d73556cdf189f6186bba9f7b2c953c9368a1671b28812b3746a27b', 1),
(3, 'fsgf', 'b2d991978dc70fcbe427cb4ad8c38a93d305b182f9ddc7316ad83465b9709db8', 1);

CREATE TABLE `bill` (
  `billid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `bill` (`billid`, `userid`, `product_id`, `payment_type`, `status`, `date`) VALUES
(1, 1, 13, 2, 0, '2017-11-15 05:48:35'),
(2, 1, 5, 2, 0, '2017-11-24 05:48:35'),
(3, 1, 29, 2, 0, '2017-11-24 05:48:35'),
(4, 1, 6, 2, 0, '2017-11-24 05:48:35'),
(5, 1, 3, 2, 0, '2017-11-24 05:48:35'),
(6, 1, 6, 2, 0, '2017-11-24 05:48:35'),
(7, 1, 5, 2, 0, '2017-11-24 05:48:35'),
(8, 1, 9, 2, 0, '2017-11-24 05:48:35'),
(9, 1, 3, 2, 0, '2017-11-24 05:48:35'),
(10, 1, 3, 2, 0, '2017-11-24 05:48:35'),
(11, 1, 5, 2, 0, '2017-11-24 05:48:35'),
(12, 1, 3, 2, 0, '2017-11-24 05:49:43'),
(13, 1, 5, 2, 0, '2017-11-24 05:50:23'),
(14, 1, 6, 2, 0, '2017-11-24 05:50:58'),
(15, 1, 3, 2, 0, '2018-01-16 04:41:50'),
(16, 1, 6, 2, 0, '2018-01-16 04:42:07'),
(17, 1, 7, 2, 0, '2018-01-16 04:42:16'),
(18, 1, 5, 2, 0, '2018-01-16 05:12:53'),
(19, 1, 12, 2, 0, '2018-01-19 06:24:23'),
(20, 1, 6, 2, 0, '2018-01-22 06:12:59'),
(21, 1, 8, 2, 0, '2018-01-25 10:45:55'),
(22, 1, 5, 2, 0, '2018-01-25 10:46:17'),
(23, 1, 3, 2, 0, '2018-01-29 04:05:52'),
(24, 1, 14, 2, 0, '2018-01-30 06:27:47');

CREATE TABLE `booking` (
  `book_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `status1` int(11) NOT NULL,
  `status2` int(11) NOT NULL,
  `status3` int(11) NOT NULL,
  `status4` int(11) NOT NULL,
  `bought_prdcts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `booking` (`book_id`, `product_id`, `userid`, `quantity`, `amount`, `status`, `status1`, `status2`, `status3`, `status4`, `bought_prdcts`) VALUES
(186, 13, 1, 2, 11200, 0, 1, 0, 0, 1, 0),
(188, 29, 1, 2, 84000, 0, 1, 0, 0, 1, 0),
(192, 9, 1, 1, 900, 0, 1, 0, 0, 1, 0),
(206, 14, 1, 1, 599, 1, 1, 0, 0, 0, 0);

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(65) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `category` (`category_id`, `category_name`, `status`) VALUES
(1, 'Shoes', 1),
(2, 'Clothes', 1),
(3, 'Mobile', 1);

CREATE TABLE `click` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `click` (`id`, `product_id`, `userid`, `count`) VALUES
(1, 0, 2, 1),
(2, 0, 1, 1),
(3, 0, 1, 1),
(4, 0, 1, 1),
(5, 0, 1, 1),
(6, 0, 1, 1),
(7, 0, 1, 1),
(8, 0, 1, 1),
(9, 0, 1, 1),
(10, 0, 1, 1),
(11, 0, 1, 1),
(12, 0, 1, 1),
(13, 0, 1, 1),
(14, 0, 1, 1),
(15, 0, 1, 1),
(16, 0, 2, 1),
(17, 0, 2, 1);

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(65) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `country` (`country_id`, `country_name`, `status`) VALUES
(1, 'India', 1),
(2, 'america', 1),
(3, 'germany', 1),
(4, 'europe', 1),
(9, 'Scotland', 1);

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `first_name` varchar(65) NOT NULL,
  `last_name` varchar(65) NOT NULL,
  `mobile_number` varchar(65) NOT NULL,
  `email` varchar(65) NOT NULL,
  `place_id` int(11) NOT NULL,
  `username` varchar(65) NOT NULL,
  `password` varchar(65) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `customer` (`customer_id`, `userid`, `first_name`, `last_name`, `mobile_number`, `email`, `place_id`, `username`, `password`, `status`) VALUES
(1, 1, 'Sruthi', 'Dev', '9061251516', 'sruthidevthomas@mca.ajce.in', 1, 'buyer1', '123', 1),
(2, 2, 'Anna', 'Mathew', '8289809240', 'annamathew@gmail.com', 2, 'buyer2', '123', 1),
(3, 17, 'hhhhh', 'hhhhh', '8888888888', 'ff@h.hj', 3, 'ggg', 'ggg', 0),
(4, 18, 'qqq', 'qqq', '9998887771', 'sss@sss.com', 3, 'sss', 'sss', 0),
(5, 21, 'sshk', 'hjkhj', '9876543212', 'jgh@kh.kh', 3, 'ooo', 'ooo', 0),
(6, 22, 'ammu', 'john', '9847414129', 'ammu.johnt@gmail.com', 2, 'ammu', '123', 0),
(7, 23, 'jeevan', 'Dev', '9656661688', 'jeevandev25@gmail.com', 2, 'jeevan', '123456', 0),
(8, 24, 'ABC', 'def', '7234567890', 'aa@gg.vi', 2, 'abc', 'abc', 1),
(9, 25, 'sss', 'qqq', '9998887771', 's@gmail.com', 1, 'aaa', 'aaa', 1),
(10, 28, 'ddd', 'ddd', '9446655448', 'kdd@kldd.hdddd', -1, 'dddd', 'dddd', 1),
(11, 30, 'tony', 'tony', '9497836422', 'sss@fff.jjjj', -1, 'pottan', 'tony', 1),
(12, 40, 'aaa', 'jjj', '9877854652', 'tintumtom@mca.ajce.in', -1, 'tintu', 'mol', 1);

CREATE TABLE `discount` (
  `did` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `percentage` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `count` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `discount` (`did`, `seller_id`, `percentage`, `date`, `end_date`, `count`, `status`) VALUES
(7, 3, 50, '2018-01-30 06:32:41', '0000-00-00 00:00:00', 0, 0),
(8, 3, 50, '2018-01-30 06:33:04', '0000-00-00 00:00:00', 0, 0),
(9, 3, 50, '2018-01-30 06:33:31', '0000-00-00 00:00:00', 0, 0);

CREATE TABLE `district` (
  `district_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `district_name` varchar(65) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `district` (`district_id`, `state_id`, `district_name`, `status`) VALUES
(1, 1, 'kottayam', 1),
(2, 2, 'coimbatore', 1),
(3, 4, 'Yonkers', 1);

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `score` int(11) NOT NULL,
  `feedback` varchar(200) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `feedback` (`feedback_id`, `username`, `score`, `feedback`, `product_id`, `date`, `status`) VALUES
(1, 'buyer1', 4, 'ksadmkdmksad', 2, '2018-01-19 08:47:29', 1),
(5, 'buyer1', 2, 'aaaa', 5, '2018-01-22 05:23:34', 1),
(6, 'buyer1', 3, 'dddd', 6, '2018-01-22 05:25:30', 1),
(7, 'buyer1', 2, 'poor', 14, '2018-01-23 04:10:57', 1),
(8, 'buyer1', 3, 'hvjhgjhg', 17, '2018-01-25 06:56:21', 1);

CREATE TABLE `login` (
  `userid` int(11) NOT NULL,
  `username` varchar(65) NOT NULL,
  `password` varchar(65) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `login` (`userid`, `username`, `password`, `role_id`, `status`) VALUES
(1, 'buyer1', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 3, 1),
(2, 'buyer2', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 3, 1),
(3, 'seller1', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(4, 'seller2', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(5, 'admin', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 1, 1),
(6, 'seller3', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(7, 'seller4', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(8, 'seller5', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(9, 'seller6', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(10, 'seller7', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 0),
(11, 'seller8', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(26, 'wwww', '1RVe2ntWLRW512MOZhGi750tQ0sPfgiOmLu1j1Z9sz4=', 2, 1),
(27, 'sdsd', '5AtyiWYmXWggADxi9ZJNYjy7m801TY0iSjlZSyguEQk=', 2, 1),
(28, 'dddd', '2rRxESMpR4bAHiBIN4dA02S2ePJdk864DbIvrZMT4Vs=', 3, 1),
(29, 'test', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(30, 'pottan', 'ND4Nq9F6tP361l45xH/ymPk/WycCU+HvU9xwPvzhs20=', 3, 1),
(33, 'potthg', 'Yj9Uxu+JR9bz8cprKWSfmG5MEhw2awCBScxbF9mkdKY=', 2, 1),
(34, 'buyer1sc', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(35, 'qwer', 'vadnecE6gU+24Td75RIByV9k79/aIKGFkRknx6tzT98=', 2, 1),
(36, 'tttt', 'TNx26A8p6w8freHTt8uFODPSdSkJZJQZEe20WSVJppo=', 2, 1),
(37, 'maria', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(38, 'mariat', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(39, 'albuuu', 'qneKjwoPhKwRgtpWXDKLAqwNOSOvYm4qSXqHh4TR2Ig=', 2, 1),
(40, 'tintu', '9x7O9+K/XjH5CtgoQwt2atowsZuKmOVet1gP9SOavIg=', 3, 1);

CREATE TABLE `place` (
  `place_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `place_name` varchar(65) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `place` (`place_id`, `district_id`, `place_name`, `status`) VALUES
(1, 1, 'pala', 1),
(2, 1, 'kuruppunthara', 1),
(3, 2, 'narasipuram', 1);

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `product_name` varchar(65) NOT NULL,
  `description` varchar(65) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `image` varchar(500) NOT NULL,
  `status` int(11) NOT NULL,
  `status1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `product` (`product_id`, `userid`, `subcategory_id`, `product_name`, `description`, `quantity`, `cost_price`, `selling_price`, `image`, `status`, `status1`) VALUES
(2, 3, 4, 'Navy Blue Shirt Women', 'Smooth and light.', 4, 550, 450, 'photo/150746766560f4bdabe63c9273c6a2c7d3bfc25a12.jpg', 1, 1),
(3, 3, 3, 'Grey Jacket for Men.', 'It looks very Elegant.', 55, 1500, 1000, 'photo/150746774994fb75122b1468437a9cd2e818b9accc.jpg', 1, 1),
(5, 3, 5, 'Frock', 'It looks very cute on kids.', 51, 500, 300, 'photo/15074679462015-Baby-Girl-Dress-Formal-Red-Black-Princess-Party-Dress-Fashion-Kids-Dress-Children-Clothing-Girls.jpg', 1, 1),
(6, 3, 5, 'Grey suite for Kids', 'Looks very Elegant on kids.', 39, 3000, 2200, 'photo/15074680312016-Boys-Clothing-For-Wedding-Children-Suits-Customized-Jacket-Pants-Shirt-Vest-Tie-Z1447-Blazer-Outerwear.jpg', 1, 1),
(7, 3, 4, 'Shirt Women', 'White Shirt for Women', 67, 800, 750, 'photo/150746811557822.jpg', 1, 1),
(8, 3, 3, 'Sweat Shirt', 'Grey Sweat Shirt With Hoody.', 50, 1500, 1100, 'photo/150746817941385576_003_b.jpg', 1, 1),
(9, 3, 5, 'Suite', 'Light grey suite for boys', 75, 1300, 900, 'photo/1507468291593620813_048.jpg', 1, 1),
(10, 3, 3, 'Jacket', 'Dark brown jacket for Men.', 50, 4500, 3800, 'photo/150746851520161017142828_67607.jpg', 0, 0),
(11, 3, 3, 'Jeans', 'Wripped Jeans for men.', 50, 1000, 950, 'photo/1507468583Beggar-hole-font-b-jeans-b-font-feet-pantyhose-tide-personality-male-font-b-models-b.jpg', 1, 1),
(12, 3, 5, 'Shirt', 'White shirt for boys.', 57, 600, 499, 'photo/1507468645Boys-dress-shirt-NEW-2017-spring-autumn-big-boy-long-sleeve-100-cotton-baby-kids-brand.jpg_640x640.jpg', 1, 1),
(13, 3, 3, 'Suite', 'Navy Blue Suite for Men.', 49, 6000, 5600, 'photo/1507468718DS_8df9896b8569554e2f214fa598bc6fc6_0.jpg', 1, 0),
(14, 6, 3, 'Pant', 'Brown Pant for Men.', 49, 700, 599, 'photo/1507469103-font-b-mens-b-font-tights-skinny-joggers-exercise-pants-Fall-and-winter-font-b.jpg', 1, 0),
(15, 6, 3, 'Shirt', 'Black and White check Shirt for Men.', 50, 400, 300, 'photo/1507469175HT1de7XFJ0aXXagOFbXZ.jpg', 1, 0),
(16, 6, 5, 'Frock', 'Red Frock for kids.', 50, 500, 450, 'photo/1507469237keaiyouhuo-2017-Summer-Girls-Princess-Dresses-Flower-Girls-Dress-For-Party-and-Wedding-Dresses-Costume-For.jpg', 1, 0),
(17, 6, 5, 'Frock', 'Light blue and white spotted frock.', 50, 600, 500, 'photo/1507469303Kids-White-Denim-Stars-Skater-Dress-2_1024x1024.jpg', 1, 0),
(18, 6, 3, 'Jeans', 'Blue jeans for men.', 50, 800, 700, 'photo/1507469409Man-pants-fashion-2017-ripped-jeans-network-burst-models-Slim-deinm-pants-men-s-blue-Straight.jpg_640x640.jpg', 1, 0),
(19, 6, 4, 'Shirt', 'Navy Blue shirt.', 50, 550, 300, 'photo/150746951960f4bdabe63c9273c6a2c7d3bfc25a12.jpg', 1, 0),
(20, 6, 3, 'Sweat Shirt', 'Grey Sweat Shirt With Hoody.', 50, 1500, 900, 'photo/150746962141385576_003_b.jpg', 1, 0),
(21, 7, 6, 'Iphone', 'Iphone SE', 32, 22000, 20000, 'photo/15074705713311246_R_Z002A.jpg', 1, 0),
(22, 7, 6, 'Iphone', 'Iphone 5c blue', 22, 12000, 11000, 'photo/1507470654918201370415PM_635_iphone-5c.jpg', 1, 0),
(23, 7, 6, 'Iphone', 'Iphone 5s Gold.', 43, 24000, 22000, 'photo/1507470716apple_iphone_5s_gold_official_apple.jpg', 1, 0),
(24, 7, 6, 'Iphone', 'Iphone 7', 15, 40000, 38000, 'photo/1507470823apple-iphone-7-red-gallery-img-1.jpg', 1, 0),
(25, 7, 6, 'Iphone', 'Iphone 5c green.', 54, 14000, 12000, 'photo/1507471004green-iphone5c.jpg', 1, 0),
(26, 7, 6, 'Iphone', 'Iphone 5c Peach.', 23, 14000, 12000, 'photo/1507471152iphone-5c-3-622x557.jpg', 1, 1),
(27, 7, 6, 'Iphone', 'Iphone 5c white', 32, 14000, 12000, 'photo/1507471213iphone5c-pressimages-alleged.jpg', 1, 0),
(28, 7, 6, 'Iphone', 'Iphone 7 jet black', 32, 40000, 38000, 'photo/1507471270iphone7-jetblack-select-2016.png', 1, 0),
(29, 7, 6, 'Iphone', 'Iphone 7 plus pink', 13, 44000, 42000, 'photo/1507471324iphone-7-plus-rose-gold_sku-header.png', 1, 0),
(30, 7, 6, 'Iphone', 'Iphone 7 Plus', 23, 44000, 42000, 'photo/1507472164iphone7-plus-silver-select-2016.png', 1, 0),
(31, 7, 6, 'Iphone', 'Iphone 5s slate grey', 15, 14000, 12000, 'photo/1507472219iPhone-51.jpg', 1, 0),
(32, 7, 7, 'One Plus', 'One Plus One', 23, 5000, 4600, 'photo/1507474320oneplus_one_never_settle.jpg', 1, 0),
(33, 7, 7, 'One Plus', 'One Plus Two', 31, 7000, 6500, 'photo/1507474382oneplus2unlock-img.png', 1, 0),
(34, 7, 7, 'One Plus', 'One Plus 3', 16, 9000, 8200, 'photo/1507474450oneplus_3_db1_ndtv_3579_800X600_6162016115113AM.jpg', 1, 0),
(35, 7, 7, 'One Plus', 'One Plus 4', 37, 26000, 24000, 'photo/1507474517oneplus.jpg', 1, 0),
(36, 7, 7, 'One Plus', 'One Plus 5 Black', 28, 36000, 34000, 'photo/1507474569oneplus51.jpg', 1, 0),
(37, 8, 6, 'Iphone', 'Iphone 5s', 17, 24000, 20000, 'photo/1507474725apple_iphone_5s_gold_official_apple.jpg', 1, 0),
(38, 8, 6, 'Iphone', 'Iphone 7 jet black', 26, 40000, 36000, 'photo/1507474809iphone7-jetblack-select-2016.png', 1, 0),
(39, 8, 7, 'One Plus', 'One Plus 5 Black', 33, 36000, 32500, 'photo/1507474862oneplus51.jpg', 1, 0),
(40, 9, 1, 'Shoe', 'Maroon Nike Shoe.', 46, 7000, 6400, 'photo/1507475400dd4c704c119b0f30a10960ece7e56e7d--running-shoes-nike-nike-free-shoes.jpg', 1, 0),
(41, 9, 1, 'Shoe', 'Black Nike Shoes.', 35, 5700, 5400, 'photo/1507475489nike-air-max-2017-mens-running-shoe.png', 1, 0),
(42, 9, 1, 'Shoe', 'White Nike running shoes.', 26, 2300, 2000, 'photo/1507475540nike-running-shoes-nike-women-running-shoes.jpg', 1, 0),
(43, 9, 1, 'Shoe', 'Black Nike Shoes.', 17, 1500, 1300, 'photo/1507475586roshe-one-mens-shoe.jpg', 1, 0),
(44, 9, 2, 'Shoe', 'Maroon Adidas Shoes.', 12, 8000, 7500, 'photo/1507475644a4358710c07d95d393ea257f0ba94726--adidas-women-womens-adidas-shoes.jpg', 1, 0),
(46, 9, 2, 'Shoe', 'Military Green Adidas Shoes.', 27, 6400, 6000, 'photo/1507475889e1bcc8223ff2b398a475b8376e467d54--adidas-boots-cheap-adidas-shoes.jpg', 1, 0),
(47, 10, 1, 'Shoe', 'Maroon Nike Shoe.', 15, 7000, 5900, 'photo/1507476059dd4c704c119b0f30a10960ece7e56e7d--running-shoes-nike-nike-free-shoes.jpg', 1, 0),
(48, 10, 2, 'Shoe', 'Maroon Adidas Shoes.', 25, 8000, 7100, 'photo/1507476134a4358710c07d95d393ea257f0ba94726--adidas-women-womens-adidas-shoes.jpg', 1, 0),
(49, 11, 5, 'Frock', 'Pink and Black Frock', 43, 500, 350, 'photo/15074763142015-Baby-Girl-Dress-Formal-Red-Black-Princess-Party-Dress-Fashion-Kids-Dress-Children-Clothing-Girls.jpg', 1, 0),
(50, 4, 4, 'Shirt', 'Very nice', 34, 2000, 1800, 'photo/1511291846150746811557822.jpg', 1, 0);

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(65) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `role` (`role_id`, `role_name`, `status`) VALUES
(1, 'admin', 1),
(2, 'seller', 1),
(3, 'buyer', 1);

CREATE TABLE `seller` (
  `seller_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `first_name` varchar(65) NOT NULL,
  `last_name` varchar(65) NOT NULL,
  `store_name` varchar(65) NOT NULL,
  `mobile_number` varchar(65) NOT NULL,
  `email` varchar(65) NOT NULL,
  `place_id` int(11) NOT NULL,
  `gst_no` varchar(65) NOT NULL,
  `username` varchar(65) NOT NULL,
  `password` varchar(65) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `seller` (`seller_id`, `userid`, `first_name`, `last_name`, `store_name`, `mobile_number`, `email`, `place_id`, `gst_no`, `username`, `password`, `status`) VALUES
(1, 3, 'Silla', 'Mol', 'Foster', '9744191663', 'sillamoljohn@mca.ajce.in', 1, '9347655678', 'seller1', '123', 1),
(2, 4, 'Rini', 'Kurian', 'PepperMint', '9207570099', 'rini@gmail.com', 2, '87349956', 'seller2', '123', 1),
(3, 6, 'Bainu', 'Nushiya', 'Z-Store', '9526665268', 'bainu@gmail.com', 1, '859745652', 'seller3', '123', 1),
(4, 7, 'Linta', 'Maria', 'L-Mobile', '9495557559', 'linta@gmail.com', 1, '866957', 'seller4', '123', 1),
(5, 8, 'Muhsina', 'rafi', 'M-store', '9447790121', 'muhsina@gmail.com', 1, '457896', 'seller5', '123', 1),
(6, 9, 'Thushara', 'Thirumeny', 'Shoe Mart', '9446390121', 'thusharathirumeni@mca.ajce.in', 1, '856745', 'seller6', '123', 1),
(7, 10, 'Alfia', 'Shahnavas', 'Shoez Cluez', '9446924829', 'alfia@gmail.com', 1, '836541', 'seller7', '123', 0),
(8, 11, 'Anupa', 'Johnson', 'FootHub', '8606383807', 'anupa@gmail.com', 2, '759634', 'seller8', '123', 1),
(9, 16, 'ssss', 'qqqq', 'wwww', '9887654321', 's@gh.gh', 3, '9898989', 'ddd', 'ddd', 0),
(11, 20, 'fff', 'fff', 'fff', '9445578654', 'jhgjh@hjkhk.hkj', 1, '558866', 'hhh', 'hhh', 0),
(12, 26, 'www', 'www', 'www', '9446525741', 'sruthidevthomas@mca.ajce.in', 3, '778899', 'wwww', 'wwww', 1),
(13, 27, 'abcde', 'abccc', 'abccc', '9887744555', 'ss@dd.cc', -1, '112233', 'sdsd', 'sdsd', 1),
(14, 29, 'test', 'test', 'test', '9447790121', 'test@test.test', 3, '111111', 'test', '123', 1),
(15, 30, 'potta', 'tony', 'gggg', '9497836422', 'gyuug@gffut.iyi', -1, '777777', 'pottan', 'tonypottan', 1),
(17, 33, 'hhhh', 'dddd', 'qqqq', '9497836422', 'sshjbhj@dd.cc', -1, '444444', 'potthg', 'aaaa', 1),
(18, 34, 'scc', 'cSC', 'SC', '9497836422', 'sadadas@dd.cc', -1, '123456', 'buyer1sc', '123', 1),
(20, 36, 'sssss', 'ffff', 'kkkk', '9497836422', 'wwwwh@jgv.jhj', -1, '555555', 'tttt', 'tttt', 1),
(21, 37, 'maria', 'thomas', 'hhh', '9846107241', 'aa@gggg.jjjj', 3, '777775', 'maria', '123', 1),
(22, 38, 'maria', 'dddd', 'ddddd', '9846107241', 'ggg@hhh.bbb', 2, '555665', 'mariat', '123', 1),
(23, 39, 'albin', 'tom', 'tommyboy', '9746173332', 'albintom@mca.ajce.in', -1, '546541', 'albuuu', 'pottan', 1);

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_name` varchar(65) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `state` (`state_id`, `country_id`, `state_name`, `status`) VALUES
(1, 1, 'kerala', 1),
(2, 1, 'Tamil Nadu', 1),
(3, 1, 'karnataka', 1),
(4, 2, 'NewYork', 1);

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `selling_price` varchar(65) NOT NULL,
  `buying_price` varchar(65) NOT NULL,
  `serial_no` varchar(65) NOT NULL,
  `stock_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `subcategory` (
  `subcategory_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(65) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `subcategory` (`subcategory_id`, `category_id`, `subcategory_name`, `status`) VALUES
(1, 1, 'Nike Shoes', 1),
(2, 1, 'Adidas Shoes', 1),
(3, 2, 'Clothes Men', 1),
(4, 2, 'Clothes Women', 1),
(5, 2, 'Clothes Kids', 1),
(6, 3, 'Iphone', 1),
(7, 3, 'One Plus', 1);

CREATE TABLE `wishlist` (
  `wid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `wishlist` (`wid`, `userid`, `product_id`, `count`, `status`) VALUES
(5, 1, 14, 11, 1),
(6, 1, 17, 7, 1),
(7, 1, 28, 5, 1),
(8, 1, 35, 2, 1),
(9, 1, 2, 2, 1),
(10, 1, 8, 1, 1),
(11, 1, 34, 1, 1),
(12, 1, 33, 1, 1),
(13, 1, 9, 1, 1),
(14, 1, 13, 1, 1),
(15, 1, 50, 1, 1),
(16, 1, 19, 3, 1),
(17, 1, 25, 1, 1);


ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

ALTER TABLE `bill`
  ADD PRIMARY KEY (`billid`);

ALTER TABLE `booking`
  ADD PRIMARY KEY (`book_id`);

ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

ALTER TABLE `click`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`),
  ADD UNIQUE KEY `country_name` (`country_name`);

ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

ALTER TABLE `discount`
  ADD PRIMARY KEY (`did`);

ALTER TABLE `district`
  ADD PRIMARY KEY (`district_id`),
  ADD UNIQUE KEY `district_name` (`district_name`);

ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`);

ALTER TABLE `place`
  ADD PRIMARY KEY (`place_id`),
  ADD UNIQUE KEY `place_name` (`place_name`);

ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

ALTER TABLE `seller`
  ADD PRIMARY KEY (`seller_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `gst_no` (`gst_no`),
  ADD UNIQUE KEY `username` (`username`);

ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`),
  ADD UNIQUE KEY `state_name` (`state_name`);

ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD UNIQUE KEY `serial_no` (`serial_no`);

ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subcategory_id`);

ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wid`);


ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
ALTER TABLE `bill`
  MODIFY `billid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
ALTER TABLE `booking`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
ALTER TABLE `click`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
ALTER TABLE `discount`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
ALTER TABLE `district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
ALTER TABLE `login`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
ALTER TABLE `place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
ALTER TABLE `seller`
  MODIFY `seller_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `subcategory`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
ALTER TABLE `wishlist`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
