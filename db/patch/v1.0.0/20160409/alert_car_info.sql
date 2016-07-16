ALTER TABLE `car_info` ADD COLUMN `car_photo` VARCHAR(50) NULL COMMENT '汽车简照' AFTER `car_name`;
ALTER TABLE `car_info` ADD COLUMN `body_level` VARCHAR(11) NULL COMMENT '车身级别' AFTER `car_brand`;