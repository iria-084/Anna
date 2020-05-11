-- 店舗種別マスタ
CREATE TABLE restaurant_type_master(
    restaurant_type_id smallint NOT NULL,
    restaurant_type text NOT NULL,
    PRIMARY KEY(restaurant_type_id)
);

-- レストランマスタ
CREATE TABLE restaurant_master(
    restaurant_id smallint NOT NULL,
    restaurant_name text NOT NULL,
    theme_land_id smallint NOT NULL,
    restaurant_type_id smallint NOT NULL,
    seat_number smallint,
    PRIMARY KEY(restaurant_id)
);

-- メニューテーブル
CREATE TABLE menu(
    menu_id smallint NOT NULL,
    restaurant_id smallint NOT NULL,
    menu_name text NOT NULL,
    single_price smallint,
    set_price smallint,
    start_date smallint,
    end_date smallint,
    PRIMARY KEY(menu_id)
);

-- テーマランドマスタ
CREATE TABLE theme_land_master(
    theme_land_id smallint NOT NULL,
    theme_land_name text NOT NULL,
    facility_id smallint NOT NULL,
    PRIMARY KEY(theme_land_id)
);

-- 施設マスタ
CREATE TABLE facility_master(
    facility_id smallint NOT NULL,
    facility_name text NOT NULL,
    facility_type smallint NOT NULL,
    PRIMARY KEY(facility_id)
);
