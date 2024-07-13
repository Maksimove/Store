//
//  Products.swift
//  Store
//
//  Created by Evgeniy Maksimov on 13.07.2024.
//

import Foundation

final class Products {
    static let shared = Products()
    
    let phones = [
        "Смартфон Apple iPhone 15 Pro Max 256GB nanoSim:eSim Natural Titanium",
        "Смартфон Apple iPhone 15 128GB Dual Sim Pink",
        "Смартфон Apple iPhone 15 128GB Dual Sim Black",
        "Смартфон realme 11 8:256 GB Black (RMX3636)",
        "Смартфон realme C53 6+128GB Mighty Black (RMX3760)",
        "Смартфон realme GT 6 16:512GB Green",
        "Смартфон Samsung Galaxy A15 LTE 4:128GB Light Blue",
        "Смартфон Samsung Galaxy S24 8:256GB Onyx Black",
        "Смартфон Samsung Galaxy S24 Ultra 12:256GB Cobalt Violet",
        "Мобильный телефон F+ B280 Dark Grey",
        "Мобильный телефон F+ Ezzy Trendy1 Red",
        "Мобильный телефон F+ F197 Black"
    ]
    
    let laptops = [
        "Ноутбук игровой ASUS ROG STRIX G15:15.6:AMD Ryzen 7 6800H:HS:16:1TB:RTX 3050:noOS:Gray",
        "Ноутбук игровой MSI Katana 17:17.3:Core i5-12450H:8:512:RTX 3050:noOS:Black (B12UCR-1024XRU)",
        "Ноутбук игровой Thunderobot 911S Core SD:15.6:Core i5-12450H:8:512:RTX 3050:noOs:Black",
        "Ноутбук Apple MacBook Air 13 M1:8:256 Space Gray (MGN63)",
        "Ноутбук Apple MacBook Air 13 M2 8 core:8 core:8:256:Space Gray (MLXW3)",
        "Ноутбук Apple MacBook Pro 16 M3 Pro 12:18 core:18:512 Space Black (MRW13)",
        "Ноутбук HUAWEI MateBook 14:14:Core i5-1240P:16:512:Win:Space Gray (53013PET)",
        "Ноутбук HUAWEI MateBook D 16:16:Core i5-12450H:8:512:Win:Space Gray (53013WXE)",
        "Ноутбук HUAWEI MateBook D 16:16:Core i7-13700H:16:1TB:Win:Space Gray (53013WXB)",
        "Ноутбук-трансформер ASUS Vivobook S 16 Flip:16:AMD Ryzen 5 7530U:16:512:Win:Black",
        "Ноутбук-трансформер Lenovo IdeaPad Flex 5 14IAU7:14:Core i3-1215U:8:256:Win:Grey (82R700JGPS)",
        "Ноутбук-трансформер Lenovo IdeaPad Flex 5 14ITL05:14:Core i3-1115G4:8:256:Win:Grey (82HS012RUE)"
    ]
    
    let tvs = [
        "Телевизор (ТВ Станция) Яндекс 43 YNDX-00091 с Алисой",
        "Телевизор Grundig 55 OLED GH 9500",
        "Телевизор Haier 43 Smart TV S2",
        "Телевизор Haier 50 Smart TV S3",
        "Телевизор Haier 55 Smart TV AX Pro",
        "Телевизор Haier 65 Smart TV AX Pro",
        "Телевизор Haier H55S9UG PRO (DH1VMGD01RU)",
        "Телевизор Hisense 65E7KQ",
        "Телевизор Philips 43PUS8057:60",
        "Телевизор Philips 50PUS8507:60",
        "Телевизор Philips 58PUS8507:60",
        "QLED Телевизор Toshiba 50C450KE"
    ]
    
    let audioEquipment = [
        "Игровые наушники Carrera Electra №601",
        "Игровые наушники TFN Saibot ZX-6 red (TFN-GM-HS-ZX-6RD)",
        "Наушники внутриканальные Apple Apple EarPods with Lightning Connector (MMTN2)",
        "Наушники внутриканальные Bluetooth JBL Tune 125BT Black (JBLT125BTBLK)",
        "Наушники накладные Bluetooth JBL Tune 520BT Black",
        "Наушники полноразмерные Bluetooth Apple AirPods Max Green (MGYN3RU:A)",
        "Наушники Apple AirPods 3rd generation Lightning (MPNY3)",
        "Наушники Apple AirPods Pro 2nd generation MagSafe Case USB-C (MTJV3)",
        "Наушники True Wireless Honor Choice EarBuds X5 White",
        "Наушники True Wireless HUAWEI Freebuds 5i Nebula Black (T0014)",
        "Наушники True Wireless HUAWEI FreeBuds SE 2 Blue",
        "Наушники True Wireless Nothing Ear stick (B157) белые"
    ]
    
    let smartHome = [
        "Видеокамера для блогера DJI Action 2 Dual-Screen Combo (CP.OS.00000183.01)",
        "Зарядное устройство Apple Watch Magnetic Charger to USB 1m (MX2E2)",
        "Кольцевая лампа Red Line RL-1 (УТ000026629)",
        "Криптовалютный кошелек Tangem Note Ethereum",
        "Набор подписок и сервисов Яндекс Плюс на 1 месяц",
        "Набор подписок и сервисов Яндекс Плюс на 12 месяцев",
        "Очки смешанной реальности Apple Vision Pro 512GB",
        "Робот-пылесос с базой очистки Xiaomi Robot Vacuum X10 EU",
        "Стайлер Dyson Complete Long Blue Blush",
        "Умная колонка Яндекс Станция Дуо Макс с Алисой на YaGPT, с Zigbee, черный (60Вт) (YNDX-00055BLK)",
        "Умная колонка Яндекс Станция Лайт с Алисой на YaGPT, бирюзовая мята (5Вт) (YNDX-00025G)",
        "Умная колонка VK Капсула Мини с голосовым помощником Марусей, морская синяя"
    ]
    
    private init() {}
}
