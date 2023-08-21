USE tienda_louve;

/*First we create the tables that do not have a foreign key*/
CREATE TABLE `salesman` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `department` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `customer` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `address` VARCHAR(50) NOT NULL,
    `email` VARCHAR(50) NOT NULL,
    `phone` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `product` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `description` VARCHAR(250) NOT NULL,
    `price` FLOAT NOT NULL,
    `category` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Now if we create the tables that have a foreign key.
This is so that when SQL executes,
it does not have problems of not finding the connections. */
CREATE TABLE `sales` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `date` DATE NOT NULL,
    `id_customer` BIGINT(20) UNSIGNED NOT NULL,
    `id_salesman` BIGINT(20) UNSIGNED NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `sales_id_customer_foreign` FOREIGN KEY (`id_customer`) REFERENCES `customer`(`id`),
    CONSTRAINT `sales_id_salesman_foreign` FOREIGN KEY (`id_salesman`) REFERENCES `salesman`(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sales_detail` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `id_sales` BIGINT(20) UNSIGNED NOT NULL,
    `id_product` BIGINT(20) UNSIGNED NOT NULL,
    `quantity` INT NOT NULL,
    `unit_price` FLOAT NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `sales_detail_id_sales_foreign` FOREIGN KEY(`id_sales`) REFERENCES`sales`(`id`),
    CONSTRAINT `sales_detail_id_product_foreign` FOREIGN KEY(`id_product`) REFERENCES`product`(`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*OBSERVATION*/
/*ENGINE=InnoDB: This sets the storage engine that will be used for the table.
InnoDB is a transactional storage engine that supports transactions, foreign keys,
and row-level locks. It's a common choice for tables that require relationships and
referential integrity control.
DEFAULT CHARSET=utf8mb4: Defines the default character set for the table.
In this case, it's set to "utf8mb4," which is an encoding that supports a wide range
of characters, including Unicode characters.
COLLATE=utf8mb4_unicode_ci: Sets the character comparison or sorting rule for the table.
In this case, "utf8mb4_unicode_ci" stands for "Unicode, case-insensitive," allowing
character comparisons without distinguishing between uppercase and lowercase.*/