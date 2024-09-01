//
//  Catalog.swift
//  Store
//
//  Created by Evgeniy Maksimov on 13.07.2024.
//

import Foundation

struct Catalog {
    let category: [String]
    let imageCategory: [String]

    let products: [[Product]]
    static func getCatalog() -> Catalog {
        Catalog(
            category: [
                "Смартфоны",
                "Ноутбуки",
                "Телевизоры",
                "Наушники",
                "Умный дом"
            ],
            imageCategory: [
                "Смартфон Apple iPhone 15 Pro Max 256GB nanoSim:eSim Natural Titanium",
                "Ноутбук игровой ASUS ROG STRIX G15:15.6:AMD Ryzen 7 6800H:HS:16:1TB:RTX 3050:noOS:Gray",
                "Телевизор Grundig 55 OLED GH 9500",
                "Наушники Apple AirPods Pro 2nd generation MagSafe Case USB-C (MTJV3)",
                "Умная колонка Яндекс Станция Дуо Макс с Алисой на YaGPT, с Zigbee, черный (60Вт) (YNDX-00055BLK)"
            ],

            products: [
                    [
                    Product(
                        name: "Смартфон Apple iPhone 15 Pro Max 256GB",
                        image: "Смартфон Apple iPhone 15 Pro Max 256GB nanoSim:eSim Natural Titanium",
                        price: 1200,
                        description: "Айфон 15 pro натуральный титан"
                    ),
                    Product(
                        name: "Смартфон Apple iPhone 15 128GB",
                        image: "Смартфон Apple iPhone 15 128GB Dual Sim Pink",
                        price: 1000,
                        description: "Айфон 15 розовый"
                    ),
                    Product(
                        name: "Смартфон Apple iPhone 15 128GB",
                        image: "Смартфон Apple iPhone 15 128GB Dual Sim Black",
                        price: 1000,
                        description: "Айфон 15 черный"
                    ),
                    Product(
                        name: "Смартфон realme 11",
                        image: "Смартфон realme 11 8:256 GB Black (RMX3636)",
                        price: 560,
                        description: "Смартфон realme 11"
                    ),
                    Product(
                        name: "Смартфон realme C53",
                        image: "Смартфон realme C53 6+128GB Mighty Black (RMX3760)",
                        price: 457,
                        description: "Смартфон realme C53"
                    ),
                    Product(
                        name: "Смартфон realme GT 6",
                        image: "Смартфон realme GT 6 16:512GB Green",
                        price: 499,
                        description: "Смартфон realme GT 6 16:512GB Green"
                    ),
                    Product(
                        name: "Смартфон Samsung Galaxy A15 LTE",
                        image: "Смартфон Samsung Galaxy A15 LTE 4:128GB Light Blue",
                        price: 699,
                        description: "Смартфон Samsung Galaxy A15 LTE 4:128GB Light Blue"
                    ),
                    Product(
                        name: "Смартфон Samsung Galaxy S24",
                        image: "Смартфон Samsung Galaxy S24 8:256GB Onyx Black",
                        price: 399,
                        description: "Смартфон Samsung Galaxy S24 8:256GB Onyx Black"
                    ),
                    Product(
                        name: "Смартфон Samsung Galaxy S24 Ultra",
                        image: "Смартфон Samsung Galaxy S24 Ultra 12:256GB Cobalt Violet",
                        price: 999,
                        description: "Смартфон Samsung Galaxy S24 Ultra 12:256GB Cobalt Violet"
                    ),
                    Product(
                        name: "Мобильный телефон Grey",
                        image: "Мобильный телефон F+ B280 Dark Grey",
                        price: 99,
                        description: "Мобильный телефон F+ B280 Dark Grey"
                    ),
                    Product(
                        name: "Мобильный телефон Red",
                        image: "Мобильный телефон F+ Ezzy Trendy1 Red",
                        price: 99,
                        description: "Мобильный телефон F+ Ezzy Trendy1 Red"
                    ),
                    Product(
                        name: "Мобильный телефон Black",
                        image: "Мобильный телефон F+ F197 Black",
                        price: 99,
                        description: "Мобильный телефон F+ F197 Black"
                    )
                    ],
                [
                    Product(
                        name: "Ноутбук игровой ASUS ROG STRIX",
                        image: "Ноутбук игровой ASUS ROG STRIX G15:15.6:AMD Ryzen 7 6800H:HS:16:1TB:RTX 3050:noOS:Gray",
                        price: 1499,
                        description: "Ноутбук игровой ASUS ROG STRIX G15:15.6:AMD Ryzen 7 6800H:HS:16:1TB:RTX 3050:noOS:Gray"
                    ),
                    Product(
                        name: "Ноутбук игровой MSI Katana",
                        image: "Ноутбук игровой MSI Katana 17:17.3:Core i5-12450H:8:512:RTX 3050:noOS:Black (B12UCR-1024XRU)",
                        price: 1299,
                        description: "Ноутбук игровой MSI Katana 17:17.3:Core i5-12450H:8:512:RTX 3050:noOS:Black (B12UCR-1024XRU)"
                    ),
                    Product(
                        name: "Ноутбук игровой Thunderobot 911S",
                        image:  "Ноутбук игровой Thunderobot 911S Core SD:15.6:Core i5-12450H:8:512:RTX 3050:noOs:Black",
                        price: 999,
                        description:  "Ноутбук игровой Thunderobot 911S Core SD:15.6:Core i5-12450H:8:512:RTX 3050:noOs:Black"
                    ),
                    Product(
                        name: "Ноутбук Apple MacBook Air 13",
                        image: "Ноутбук Apple MacBook Air 13 M1:8:256 Space Gray (MGN63)",
                        price: 1399,
                        description: "Ноутбук Apple MacBook Air 13 M1:8:256 Space Gray (MGN63)"
                    ),
                    Product(
                        name: "Ноутбук Apple MacBook Air 13 M2",
                        image: "Ноутбук Apple MacBook Air 13 M2 8 core:8 core:8:256:Space Gray (MLXW3)",
                        price: 2300,
                        description: "Ноутбук Apple MacBook Air 13 M2 8 core:8 core:8:256:Space Gray (MLXW3)"
                    ),
                    Product(
                        name: "Ноутбук Apple MacBook Pro 16 M3 Pro",
                        image: "Ноутбук Apple MacBook Pro 16 M3 Pro 12:18 core:18:512 Space Black (MRW13)",
                        price: 2699,
                        description: "Ноутбук Apple MacBook Pro 16 M3 Pro 12:18 core:18:512 Space Black (MRW13)"
                    ),
                    Product(
                        name: "Ноутбук HUAWEI MateBook 14",
                        image: "Ноутбук HUAWEI MateBook 14:14:Core i5-1240P:16:512:Win:Space Gray (53013PET)",
                        price: 1599,
                        description: "Ноутбук HUAWEI MateBook 14:14:Core i5-1240P:16:512:Win:Space Gray (53013PET)"
                    ),
                    Product(
                        name: "Ноутбук HUAWEI MateBook D 16",
                        image: "Ноутбук HUAWEI MateBook D 16:16:Core i5-12450H:8:512:Win:Space Gray (53013WXE)",
                        price: 1199,
                        description: "Ноутбук HUAWEI MateBook D 16:16:Core i5-12450H:8:512:Win:Space Gray (53013WXE)"
                    ),
                    Product(
                        name: "Ноутбук HUAWEI MateBook D 16",
                        image: "Ноутбук HUAWEI MateBook D 16:16:Core i7-13700H:16:1TB:Win:Space Gray (53013WXB)",
                        price: 699,
                        description: "Ноутбук HUAWEI MateBook D 16:16:Core i7-13700H:16:1TB:Win:Space Gray (53013WXB)"
                    ),
                    Product(
                        name: "Ноутбук-трансформер ASUS Vivobook",
                        image: "Ноутбук-трансформер ASUS Vivobook S 16 Flip:16:AMD Ryzen 5 7530U:16:512:Win:Black",
                        price: 1399,
                        description: "Ноутбук-трансформер ASUS Vivobook S 16 Flip:16:AMD Ryzen 5 7530U:16:512:Win:Black"
                    ),
                    Product(
                        name: "Ноутбук-трансформер Lenovo)",
                        image: "Ноутбук-трансформер Lenovo IdeaPad Flex 5 14IAU7:14:Core i3-1215U:8:256:Win:Grey (82R700JGPS)",
                        price: 1499,
                        description: "Ноутбук-трансформер Lenovo IdeaPad Flex 5 14IAU7:14:Core i3-1215U:8:256:Win:Grey (82R700JGPS)"
                    ),
                    Product(
                        name: "Ноутбук-трансформер Lenov",
                        image: "Ноутбук-трансформер Lenovo IdeaPad Flex 5 14ITL05:14:Core i3-1115G4:8:256:Win:Grey (82HS012RUE)",
                        price: 1899,
                        description: "Ноутбук-трансформер Lenovo IdeaPad Flex 5 14ITL05:14:Core i3-1115G4:8:256:Win:Grey (82HS012RUE)"
                    )
                ],
                    [
                    Product(
                        name: "Телевизор (ТВ Станция) Яндекс 43",
                        image: "Телевизор (ТВ Станция) Яндекс 43 YNDX-00091 с Алисой",
                        price: 1999,
                        description: "Телевизор (ТВ Станция) Яндекс 43 YNDX-00091 с Алисой"
                    ),
                    Product(
                        name: "Телевизор Grundig 55",
                        image: "Телевизор Grundig 55 OLED GH 9500",
                        price: 2300,
                        description: "Телевизор Grundig 55 OLED GH 9500"
                    ),
                    Product(
                        name: "Телевизор Haier 43 Smart TV S2",
                        image: "Телевизор Haier 43 Smart TV S2",
                        price: 1599,
                        description: "Телевизор Haier 43 Smart TV S2"
                    ),
                    Product(
                        name: "Телевизор Haier 50 Smart TV S3",
                        image: "Телевизор Haier 50 Smart TV S3",
                        price: 1199,
                        description: "Телевизор Haier 50 Smart TV S3"
                    ),
                    Product(
                        name: "Телевизор Haier 55 Smart TV",
                        image: "Телевизор Haier 55 Smart TV AX Pro",
                        price: 2599,
                        description: "Телевизор Haier 55 Smart TV AX Pro"
                    ),
                    Product(
                        name: "Телевизор Haier 65 Smart TV",
                        image: "Телевизор Haier 65 Smart TV AX Pro",
                        price: 1459,
                        description: "Телевизор Haier 65 Smart TV AX Pro"
                    ),
                    Product(
                        name: "Телевизор Haier H55S9UG",
                        image: "Телевизор Haier H55S9UG PRO (DH1VMGD01RU)",
                        price: 1499,
                        description: "Телевизор Haier H55S9UG PRO (DH1VMGD01RU)"
                    ),
                    Product(
                        name: "Телевизор Hisense",
                        image: "Телевизор Hisense 65E7KQ",
                        price: 499,
                        description: "Телевизор Hisense 65E7KQ"
                    ),
                    Product(
                        name: "Телевизор Philips",
                        image: "Телевизор Philips 43PUS8057:60",
                        price: 699,
                        description: "Телевизор Philips 43PUS8057:60"
                    ),
                    Product(
                        name: "Телевизор Philips",
                        image: "Телевизор Philips 50PUS8507:60",
                        price: 769,
                        description: "Телевизор Philips 50PUS8507:60"
                    ),
                    Product(
                        name: "Телевизор Philips",
                        image: "Телевизор Philips 58PUS8507:60",
                        price: 399,
                        description: "Телевизор Philips 58PUS8507:60"
                    ),
                    Product(
                        name: "QLED Телевизор Toshiba ",
                        image: "QLED Телевизор Toshiba 50C450KE",
                        price: 799,
                        description: "QLED Телевизор Toshiba 50C450KE"
                    )
                ],
                    [
                    Product(
                        name: "Игровые наушники Carrera",
                        image: "Игровые наушники Carrera Electra №601",
                        price: 59,
                        description: "Игровые наушники Carrera Electra №601"
                    ),
                    Product(
                        name: "Игровые наушники TFN Saibot",
                        image: "Игровые наушники TFN Saibot ZX-6 red (TFN-GM-HS-ZX-6RD)",
                        price: 39,
                        description: "Игровые наушники TFN Saibot ZX-6 red (TFN-GM-HS-ZX-6RD)"
                    ),
                    Product(
                        name: "Наушники внутриканальные Apple Apple EarPods",
                        image: "Наушники внутриканальные Apple Apple EarPods with Lightning Connector (MMTN2)",
                        price: 19,
                        description: "Наушники внутриканальные Apple Apple EarPods with Lightning Connector (MMTN2)"
                    ),
                    Product(
                        name: "Наушники внутриканальные Bluetooth JBL Tune",
                        image: "Наушники внутриканальные Bluetooth JBL Tune 125BT Black (JBLT125BTBLK)",
                        price: 23,
                        description: "Наушники внутриканальные Bluetooth JBL Tune 125BT Black (JBLT125BTBLK)"
                    ),
                    Product(
                        name: "Наушники накладные Bluetooth JBL Tune",
                        image: "Наушники накладные Bluetooth JBL Tune 520BT Black",
                        price: 23,
                        description: "Наушники накладные Bluetooth JBL Tune 520BT Black"
                    ),
                    Product(
                        name: "Наушники полноразмерные Apple AirPods Max Green",
                        image: "Наушники полноразмерные Bluetooth Apple AirPods Max Green (MGYN3RU:A)",
                        price: 499,
                        description: "Наушники полноразмерные Bluetooth Apple AirPods Max Green (MGYN3RU:A)"
                    ),
                    Product(
                        name: "Наушники Apple AirPods 3rd",
                        image: "Наушники Apple AirPods 3rd generation Lightning (MPNY3)",
                        price: 199,
                        description: "Наушники Apple AirPods 3rd generation Lightning (MPNY3)"
                    ),
                    Product(
                        name: "Наушники Apple AirPods Pro 2nd",
                        image: "Наушники Apple AirPods Pro 2nd generation MagSafe Case USB-C (MTJV3)",
                        price: 99,
                        description: "Наушники Apple AirPods Pro 2nd generation MagSafe Case USB-C (MTJV3)"
                    ),
                    Product(
                        name: "Наушники True Wireless Honor",
                        image: "Наушники True Wireless Honor Choice EarBuds X5 White",
                        price: 59,
                        description: "Наушники True Wireless Honor Choice EarBuds X5 White"
                    ),
                    Product(
                        name: "Наушники True Wireless HUAWEI",
                        image: "Наушники True Wireless HUAWEI Freebuds 5i Nebula Black (T0014)",
                        price: 39,
                        description: "Наушники True Wireless HUAWEI Freebuds 5i Nebula Black (T0014)"
                    ),
                    Product(
                        name: "Наушники True Wireless HUAWEI",
                        image: "Наушники True Wireless HUAWEI FreeBuds SE 2 Blue",
                        price: 39,
                        description: "Наушники True Wireless HUAWEI FreeBuds SE 2 Blue"
                    ),
                    Product(
                        name: "Наушники True Wireless Nothing Ear",
                        image: "Наушники True Wireless Nothing Ear stick (B157) белые",
                        price: 49,
                        description: "Наушники True Wireless Nothing Ear stick (B157) белые"
                    )
                ],
                    [
                    Product(
                        name: "Видеокамера для блогера DJI Action",
                        image: "Видеокамера для блогера DJI Action 2 Dual-Screen Combo (CP.OS.00000183.01)",
                        price: 499,
                        description: "Видеокамера для блогера DJI Action 2 Dual-Screen Combo (CP.OS.00000183.01)"
                    ),
                    Product(
                        name: "Зарядное устройство Apple Watch Magnetic Charger",
                        image: "Зарядное устройство Apple Watch Magnetic Charger to USB 1m (MX2E2)",
                        price: 29,
                        description: "Зарядное устройство Apple Watch Magnetic Charger to USB 1m (MX2E2)"
                    ),
                    Product(
                        name: "Кольцевая лампа Red Line",
                        image: "Кольцевая лампа Red Line RL-1 (УТ000026629)",
                        price: 49,
                        description: "Кольцевая лампа Red Line RL-1 (УТ000026629)"
                    ),
                    Product(
                        name: "Криптовалютный кошелек Tangem",
                        image: "Криптовалютный кошелек Tangem Note Ethereum",
                        price: 99,
                        description: "Криптовалютный кошелек Tangem Note Ethereum"
                    ),
                    Product(
                        name: "Набор подписок и сервисов Яндекс Плюс на 1 месяц",
                        image: "Набор подписок и сервисов Яндекс Плюс на 1 месяц",
                        price: 9,
                        description: "Набор подписок и сервисов Яндекс Плюс на 1 месяц"
                    ),
                    Product(
                        name: "Набор подписок и сервисов Яндекс Плюс на 12 месяцев",
                        image: "Набор подписок и сервисов Яндекс Плюс на 12 месяцев",
                        price: 29,
                        description: "Набор подписок и сервисов Яндекс Плюс на 12 месяцев"
                    ),
                    Product(
                        name: "Очки смешанной реальности Apple Vision Pro 512GB",
                        image: "Очки смешанной реальности Apple Vision Pro 512GB",
                        price: 699,
                        description: "Очки смешанной реальности Apple Vision Pro 512GB"
                    ),
                    Product(
                        name: "Робот-пылесос с базой очистки Xiaomi Robot Vacuum X10 EU",
                        image: "Робот-пылесос с базой очистки Xiaomi Robot Vacuum X10 EU",
                        price: 199,
                        description: "Робот-пылесос с базой очистки Xiaomi Robot Vacuum X10 EU"
                    ),
                    Product(
                        name: "Стайлер Dyson Complete Long",
                        image: "Стайлер Dyson Complete Long Blue Blush",
                        price: 349,
                        description: "Стайлер Dyson Complete Long Blue Blush"
                    ),
                    Product(
                        name: "Умная колонка Яндекс Станция Дуо Макс с Алисой на YaGPT",
                        image: "Умная колонка Яндекс Станция Дуо Макс с Алисой на YaGPT, с Zigbee, черный (60Вт) (YNDX-00055BLK)",
                        price: 79,
                        description: "Умная колонка Яндекс Станция Дуо Макс с Алисой на YaGPT, с Zigbee, черный (60Вт) (YNDX-00055BLK)"
                    ),
                    Product(
                        name: "Умная колонка Яндекс Станция Лайт с Алисой на YaGPT",
                        image: "Умная колонка Яндекс Станция Лайт с Алисой на YaGPT, бирюзовая мята (5Вт) (YNDX-00025G)",
                        price: 59,
                        description: "Умная колонка Яндекс Станция Лайт с Алисой на YaGPT, бирюзовая мята (5Вт) (YNDX-00025G)"
                    ),
                    Product(
                        name: "Умная колонка VK Капсула Мини",
                        image: "Умная колонка VK Капсула Мини с голосовым помощником Марусей, морская синяя",
                        price: 39,
                        description: "Умная колонка VK Капсула Мини с голосовым помощником Марусей, морская синяя"
                    )
                ]
            ]
        )
    }
}

struct Product: Codable {
    let name: String
    let image: String
    let price: Int
    let description: String
}
