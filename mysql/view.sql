/*视图表*/
/*-- car --*/
CREATE VIEW car
SELECT
	`shop_order`.`id` AS `id`,
	`shop_order`.`uid` AS `uid`,
	`shop_order`.`goods_id` AS `goods_id`,
	`shop_order`.`price` AS `price`,
	`shop_order`.`num` AS `num`,
	`shop_order`.`style` AS `style`,
	`shop_order`.`img` AS `img`,
	`shop_order`.`state` AS `state`,
	`shop_order`.`car_time` AS `car_time`,
	`shop_order`.`order_time` AS `order_time`,
	`shop_order`.`buy_time` AS `buy_time`,
	`shop_order`.`del_time` AS `del_time`,
	`shop_order`.`modify_time` AS `modify_time`,
	`goods_info`.`name` AS `name`,
	`goods_info`.`address` AS `address`,
	`goods_info`.`express` AS `express`,
	`goods_info`.`volume` AS `volume`
FROM
	(
		`goods_info`
		JOIN `shop_order`
	)
WHERE
	(
		`goods_info`.`goods_id` = `shop_order`.`goods_id`
	)

/*-- hdconter --*/
CREATE VIEW hdconter
SELECT
	`menu`.`id` AS `menu_id`,
	`goods_type`.`id` AS `goods_type_id`,
	`goods_type`.`ishd` AS `ishd`,
	`goods`.`id` AS `goods_id`,
	`goods`.`name` AS `name`,
	`goods`.`price` AS `price`,
	`goods`.`img` AS `img`,
	`goods`.`volume` AS `volume`
FROM
	(
		(`menu` JOIN `goods_type`)
		JOIN `goods`
	)
WHERE
	(
		(`menu`.`id` <> 0)
		AND (
			`menu`.`id` = `goods_type`.`menu_id`
		)
		AND (
			`goods_type`.`id` = `goods`.`goods_type_id`
		)
	)

/*-- search --*/
CREATE VIEW search
SELECT
	`menu`.`name` AS `menu_name`,
	`goods_type`.`name` AS `goods_type_name`,
	`goods`.`id` AS `id`,
	`goods`.`name` AS `name`,
	`goods`.`price` AS `price`,
	`goods`.`goods_type_id` AS `goods_type_id`,
	`goods`.`img` AS `img`,
	`goods`.`volume` AS `volume`
FROM
	(
		(`menu` JOIN `goods_type`)
		JOIN `goods` ON (
			(
				(
					`menu`.`id` = `goods_type`.`menu_id`
				)
				AND (
					`goods_type`.`id` = `goods`.`goods_type_id`
				)
			)
		)
	)