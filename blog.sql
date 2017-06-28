/*
Navicat MySQL Data Transfer

Source Server         : djan
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-06-28 17:53:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add author', '7', 'add_author');
INSERT INTO `auth_permission` VALUES ('20', 'Can change author', '7', 'change_author');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete author', '7', 'delete_author');
INSERT INTO `auth_permission` VALUES ('22', 'Can add article', '8', 'add_article');
INSERT INTO `auth_permission` VALUES ('23', 'Can change article', '8', 'change_article');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete article', '8', 'delete_article');
INSERT INTO `auth_permission` VALUES ('25', 'Can add category', '9', 'add_category');
INSERT INTO `auth_permission` VALUES ('26', 'Can change category', '9', 'change_category');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete category', '9', 'delete_category');
INSERT INTO `auth_permission` VALUES ('28', 'Can add tag', '10', 'add_tag');
INSERT INTO `auth_permission` VALUES ('29', 'Can change tag', '10', 'change_tag');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete tag', '10', 'delete_tag');
INSERT INTO `auth_permission` VALUES ('31', 'Can add post', '11', 'add_post');
INSERT INTO `auth_permission` VALUES ('32', 'Can change post', '11', 'change_post');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete post', '11', 'delete_post');
INSERT INTO `auth_permission` VALUES ('34', 'Can add comment', '12', 'add_comment');
INSERT INTO `auth_permission` VALUES ('35', 'Can change comment', '12', 'change_comment');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete comment', '12', 'delete_comment');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$24000$8MnCldctadfv$ReWpOr/0yGA2KSbg4XBInMcF0rKW6siq+k94C1WNTIo=', '2017-06-28 09:52:28', '1', 'admin', '', '', 'admin@xxy.com', '1', '1', '2017-05-10 07:21:37');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for blog_category
-- ----------------------------
DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of blog_category
-- ----------------------------
INSERT INTO `blog_category` VALUES ('8', 'category xxy');
INSERT INTO `blog_category` VALUES ('9', '徐晓雨');
INSERT INTO `blog_category` VALUES ('10', '生活');
INSERT INTO `blog_category` VALUES ('11', '励志');
INSERT INTO `blog_category` VALUES ('12', '历史');
INSERT INTO `blog_category` VALUES ('13', '气质');

-- ----------------------------
-- Table structure for blog_post
-- ----------------------------
DROP TABLE IF EXISTS `blog_post`;
CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(70) NOT NULL,
  `body` longtext NOT NULL,
  `create_time` date NOT NULL,
  `modified_time` datetime NOT NULL,
  `excerpt` varchar(200) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL,
  `views` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_post_author_id_dd7a8485_fk_auth_user_id` (`author_id`),
  KEY `blog_post_category_id_c326dbf8_fk_blog_category_id` (`category_id`),
  KEY `blog_post_8f9ab750` (`tags_id`),
  CONSTRAINT `blog_post_author_id_dd7a8485_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blog_post_category_id_c326dbf8_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`),
  CONSTRAINT `blog_post_tags_id_33214a08_fk_blog_tag_id` FOREIGN KEY (`tags_id`) REFERENCES `blog_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of blog_post
-- ----------------------------
INSERT INTO `blog_post` VALUES ('1', '东南亚', '数据库最主要的操作就是往里面存入数据、从中取出数据、修改已保存的数据和删除不再需要的数据。和创建数据库表一样，Django 为这些操作提供了一整套方法，从而把我们从数据库语言中解放出来。我们不用学习如何利用数据库语言去完成这些操作，只要简单地调用几个 Python 函数就可以满足我们的需求。', '2017-05-25', '2017-05-25 01:51:09', '', '1', '12', '7', '13');
INSERT INTO `blog_post` VALUES ('2', '他是一个狂人，独自挑战森林', '徐晓冬，中国综合格斗第一人，人称“格斗狂人”。\r\n\r\n要是徐晓冬安安稳稳当他的“格斗狂人”，该开武馆开武馆，该授徒授徒，虽说知名度不高，不过也会过得很滋润。\r\n\r\n说不清楚是为了名气，为了利益，为了正义，还是真的只是为了还世间一个真相，看得出来，徐晓冬并不甘于平庸。于是乎，他举起了功夫打假的大旗，被誉为“中国功夫打假第一人”。\r\n\r\n这位功夫打假人也算是说到做到。他直言不讳地声称，中国功夫，特别是太极拳毫无实战价值。', '2017-05-25', '2017-05-25 02:17:17', '', '1', '11', '7', '7');
INSERT INTO `blog_post` VALUES ('3', '不是岁月拜美人', '#你好\r\n##你好\r\n###你好阿妈\r\n![图片说明](http://image.baidu.com/search/detail?ct=503316480&z=&tn=baiduimagedetail&ipn=d&word=%E9%A3%8E%E6%99%AF&step_word=&ie=utf-8&in=&cl=2&lm=-1&st=-1&cs=2227804654,860253351&os=1224472015,3609181868&simid=3420847718,215391240&pn=10&rn=1&di=119025937470&ln=1987&fr=&fmq=1459502303089_R&fm=&ic=0&s=undefined&se=&sme=&tab=0&width=&height=&face=undefined&is=0,0&istype=2&ist=&jit=&bdtype=0&spn=0&pi=0&gsm=0&objurl=http%3A%2F%2Fpic.58pic.com%2F58pic%2F13%2F87%2F72%2F73t58PICjpT_1024.jpg&rpstart=0&rpnum=0&adpicid=0&ctd=1495683068351^3_1903X950%1)', '2017-05-25', '2017-05-25 03:27:49', '', '1', '13', '7', '6');
INSERT INTO `blog_post` VALUES ('4', '沉默与嚣张', '那年，具体时间我忘了。我带着三岁的儿子乘长途汽车从上海回老家。坐在我右侧的是一个小伙子，就带了一盒饭，上车便吃了起来。\r\n\r\n儿子感冒了，突然一个喷嚏，鼻子里吹出一朵大大的喇叭花。我手忙脚乱地找纸巾，旁边的小伙子很友好地把手中的纸巾递给了我，我歉疚又感激地谢过，给儿子擦干净后问他：你去哪呀？怎么没带行李呢？\r\n\r\n小伙子笑了笑说：“我很快要下车的，我常坐这个车。”\r\n\r\n车出发后，儿子缠着我讲故事，我一边靠着座位休息，一边搜肠刮肚些哄小孩的话。\r\n\r\n“你咋怎么笨呢？开个易拉罐都不会？拿过来我帮你！”突然，我后面一个男人大声嚷道。\r\n\r\n我转过头，看到一个牙齿向外突着，两个眼睛长得有点高低，白眼珠比黑眼珠更多的矮小男人正在使劲地摇着一个易拉罐，旁边一个小伙子，脖子上戴着老粗的金链子，一副鄙夷的表情，正嚷嚷着要抢过这个看上去很傻的男人手中的易拉罐。\r\n\r\n傻男人呜哇呜哇地躲闪着，旁边一个看上去很正派的中年人用手挡了下金链子对傻男人说：你不要摇，把这环拉开就可以啦！\r\n\r\n傻男人听着指点，用牙齿拉开了易拉罐的环，顿时，一股液体从罐内直冲出来，旁边的人一边抱怨一边避让，金链子恨恨地骂着要去打傻男人。\r\n\r\n傻男人哇哇叫着“别打我！别打我！”很多人躁动起来，我眼前乱乱的。突然又听傻男人大叫：“牙齿！我的牙齿！我牙齿被你打掉了！”', '2017-04-11', '2017-05-25 06:34:44', '', '1', '10', '7', '4');

-- ----------------------------
-- Table structure for blog_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of blog_tag
-- ----------------------------
INSERT INTO `blog_tag` VALUES ('7', 'tag  rain');

-- ----------------------------
-- Table structure for comments_comment
-- ----------------------------
DROP TABLE IF EXISTS `comments_comment`;
CREATE TABLE `comments_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `url` varchar(200) NOT NULL,
  `text` longtext NOT NULL,
  `created_time` datetime NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_comment_post_id_96a9ac05_fk_blog_post_id` (`post_id`),
  CONSTRAINT `comments_comment_post_id_96a9ac05_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of comments_comment
-- ----------------------------
INSERT INTO `comments_comment` VALUES ('1', '11111', '1095673334@qq.com', 'http://www.jianshu.com', 'gdsgdgdgdsg', '2017-05-25 07:36:16', '3');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2017-05-10 07:22:18', '1', 'Author object', '1', 'Added.', '7', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2017-05-10 07:22:28', '1', 'Article object', '1', 'Added.', '8', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2017-05-10 07:23:26', '2', 'Article object', '1', 'Added.', '8', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2017-05-10 08:55:17', '3', 'Article object', '1', 'Added.', '8', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2017-05-12 01:12:10', '2', '迪丽热巴', '1', 'Added.', '7', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2017-05-12 01:32:58', '3', 'ddd', '1', 'Added.', '7', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2017-05-18 02:08:46', '4', '印度走着瞧', '1', 'Added.', '8', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2017-05-18 02:32:35', '5', '碎碎念', '1', 'Added.', '8', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2017-05-25 01:51:13', '1', '东南亚', '1', 'Added.', '11', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2017-05-25 02:10:18', '9', '徐晓雨', '1', 'Added.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2017-05-25 02:10:33', '1', '东南亚', '2', 'Changed category.', '11', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2017-05-25 02:17:19', '2', '他是一个狂人，独自挑战森林', '1', 'Added.', '11', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2017-05-25 03:27:55', '3', '不是岁月拜美人', '1', 'Added.', '11', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2017-05-25 03:31:23', '3', '不是岁月拜美人', '2', 'Changed body.', '11', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2017-05-25 06:34:56', '4', '沉默与嚣张', '1', 'Added.', '11', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2017-05-25 06:35:25', '4', '沉默与嚣张', '2', 'Changed create_time.', '11', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2017-05-25 06:35:42', '4', '沉默与嚣张', '2', 'Changed create_time.', '11', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2017-05-26 02:38:06', '10', '生活', '1', 'Added.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2017-05-26 02:38:10', '4', '沉默与嚣张', '2', 'Changed category.', '11', '1');
INSERT INTO `django_admin_log` VALUES ('20', '2017-05-26 02:40:12', '11', '励志', '1', 'Added.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('21', '2017-05-26 02:40:24', '2', '他是一个狂人，独自挑战森林', '2', 'Changed category.', '11', '1');
INSERT INTO `django_admin_log` VALUES ('22', '2017-05-26 02:40:54', '12', '历史', '1', 'Added.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('23', '2017-05-26 02:40:56', '1', '东南亚', '2', 'Changed category.', '11', '1');
INSERT INTO `django_admin_log` VALUES ('24', '2017-05-26 02:41:19', '13', '气质', '1', 'Added.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('25', '2017-05-26 02:41:21', '3', '不是岁月拜美人', '2', 'Changed category.', '11', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('9', 'blog', 'category');
INSERT INTO `django_content_type` VALUES ('11', 'blog', 'post');
INSERT INTO `django_content_type` VALUES ('10', 'blog', 'tag');
INSERT INTO `django_content_type` VALUES ('12', 'comments', 'comment');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('8', 'hello', 'article');
INSERT INTO `django_content_type` VALUES ('7', 'hello', 'author');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-05-10 07:20:14');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2017-05-10 07:20:16');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2017-05-10 07:20:16');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2017-05-10 07:20:16');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2017-05-10 07:20:17');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2017-05-10 07:20:17');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2017-05-10 07:20:17');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2017-05-10 07:20:17');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2017-05-10 07:20:17');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2017-05-10 07:20:17');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2017-05-10 07:20:17');
INSERT INTO `django_migrations` VALUES ('12', 'hello', '0001_initial', '2017-05-10 07:20:18');
INSERT INTO `django_migrations` VALUES ('13', 'sessions', '0001_initial', '2017-05-10 07:20:18');
INSERT INTO `django_migrations` VALUES ('14', 'hello', '0002_author_hobby', '2017-05-12 01:32:11');
INSERT INTO `django_migrations` VALUES ('15', 'blog', '0001_initial', '2017-05-24 03:28:20');
INSERT INTO `django_migrations` VALUES ('16', 'blog', '0002_auto_20170525_1506', '2017-05-25 07:07:02');
INSERT INTO `django_migrations` VALUES ('17', 'comments', '0001_initial', '2017-05-25 07:07:02');
INSERT INTO `django_migrations` VALUES ('18', 'hello', '0003_auto_20170525_1506', '2017-05-25 07:07:03');
INSERT INTO `django_migrations` VALUES ('19', 'blog', '0003_post_views', '2017-05-26 02:20:43');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('7950l0izst7xi5id9d5udb3vy3awtthw', 'YWUwOGZhNTFjNzg2NmI4ZTJiNjUyMWY4NDdlZjg0YTY0NGMyMmY3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZmI2OWNmZDFiZDQ0NGVmNGQwY2RiZTdlYmU2YzdlY2U5NTI0Y2VmIn0=', '2017-06-26 01:19:12');
INSERT INTO `django_session` VALUES ('b1sqxad5n85m4r2k0e47m4pujpw9nlon', 'YWUwOGZhNTFjNzg2NmI4ZTJiNjUyMWY4NDdlZjg0YTY0NGMyMmY3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZmI2OWNmZDFiZDQ0NGVmNGQwY2RiZTdlYmU2YzdlY2U5NTI0Y2VmIn0=', '2017-07-12 09:52:28');
INSERT INTO `django_session` VALUES ('hajitp5yv76llxi0bcm7rzmvc3kfx3hn', 'YWUwOGZhNTFjNzg2NmI4ZTJiNjUyMWY4NDdlZjg0YTY0NGMyMmY3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZmI2OWNmZDFiZDQ0NGVmNGQwY2RiZTdlYmU2YzdlY2U5NTI0Y2VmIn0=', '2017-06-09 02:34:20');
INSERT INTO `django_session` VALUES ('i8uuh41mv8dpp03x4yne6petfgfzkr5l', 'YWUwOGZhNTFjNzg2NmI4ZTJiNjUyMWY4NDdlZjg0YTY0NGMyMmY3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZmI2OWNmZDFiZDQ0NGVmNGQwY2RiZTdlYmU2YzdlY2U5NTI0Y2VmIn0=', '2017-05-26 01:16:37');

-- ----------------------------
-- Table structure for hello_article
-- ----------------------------
DROP TABLE IF EXISTS `hello_article`;
CREATE TABLE `hello_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `url` varchar(200) NOT NULL,
  `portal` varchar(100) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hello_article_4f331e2f` (`author_id`),
  CONSTRAINT `hello_article_author_id_d0fe5073_fk_hello_author_id` FOREIGN KEY (`author_id`) REFERENCES `hello_author` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hello_article
-- ----------------------------
INSERT INTO `hello_article` VALUES ('1', 'xxy-测试9', 'sssssssssssssssssss', 'http://dl.iplaysoft.com/files/35.html', './侯明昊1.jpg', '1');
INSERT INTO `hello_article` VALUES ('2', '我们大多数人只能是平凡过一生', '头发剪丑了，我倒不在意，因为用不了一个月，就会长长，可以找个好师傅再剪。倒是很好奇那名给我剪发的师傅，在这11年的理发经历中，究竟是如果度过的，最终还是一名普通的理发师。', 'http://127.0.0.1:8000/admin/hello/article/add/', './renxing_R2Mn9T2.jpg', '1');
INSERT INTO `hello_article` VALUES ('3', '电子商务', '电子商务的前景和发展历史', 'http://china.huanqiu.com/hot/2016-11/9727238.html', './123_0orSiNq.jpg', '1');
INSERT INTO `hello_article` VALUES ('4', '印度走着瞧', '方法方法付付付付付付付付付付付', 'http://dl.iplaysoft.com/files/35.html', './renxing.jpg', '2');
INSERT INTO `hello_article` VALUES ('5', '碎碎念', '这个世界上励志的人很多，多的我只能记清楚其中几个,他们的毅力是普通人无法比拟的，普通人之所以是普通人，或许是对自己的生活抱着一种得过且过的态度，或许是人生短暂为什么不潇洒走一回呢，或许是自己所谓的梦想实现不实现都不重要，那种梦想只是充当一个自己安慰自己的角色，啊 原来我还有梦想啊，我有梦想 我怎么可能是碌碌无为，虚度光阴呢。人总是爱欺骗自己，爱宽恕自己。人不狠站不稳，不知怎么这段时间对这句话很敏感。是啊，只有对自己狠，你才能真正的完成一件让自己感到自豪，感到充实的事情。这个强制自己的过程很艰苦，很心酸，但是当你走过之后，你会发现原来是这样的感觉。只有你体会过成功的感觉，你才会发现自己的生活原来可以这样的过下去。', 'http://127.0.0.1:8000/admin/hello/article/add/', './222.jpg', '4');

-- ----------------------------
-- Table structure for hello_author
-- ----------------------------
DROP TABLE IF EXISTS `hello_author`;
CREATE TABLE `hello_author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `age` int(11) NOT NULL,
  `hobby` varchar(50) CHARACTER SET utf8,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of hello_author
-- ----------------------------
INSERT INTO `hello_author` VALUES ('1', 'xxy', '44', null);
INSERT INTO `hello_author` VALUES ('2', '迪丽热巴', '25', null);
INSERT INTO `hello_author` VALUES ('3', 'ddd', '33', 'dddddddddddddddddd');
INSERT INTO `hello_author` VALUES ('4', '徐晓雨', '23', 'ddddd0');
