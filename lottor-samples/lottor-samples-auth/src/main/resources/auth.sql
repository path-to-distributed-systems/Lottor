SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------

-- Table structure for `user_role`

-- ----------------------------

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` VARCHAR(128) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `role_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------

-- Table structure for `permission`

-- ----------------------------

DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` VARCHAR(128) NOT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_index` (`permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------

-- Table structure for `role`

-- ----------------------------

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` VARCHAR(128) NOT NULL,
  `name` varchar(255) NOT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_name_desc_index` (`name`,`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------

-- Table structure for `role_permission`

-- ----------------------------

DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `id` VARCHAR(128) NOT NULL,
  `role_id` varchar(36) NOT NULL,
  `permission_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

