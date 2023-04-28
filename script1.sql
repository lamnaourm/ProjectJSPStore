create database dbstore; 

use dbstore; 

create table t_categorie (id int primary key, name varchar(255), image varchar(1000), creationAt varchar(255), updatedAt varchar(255));

insert into t_categorie select a.* from JSON_TABLE('[
    {
        "id": 1,
        "name": "PC Portable",
        "image": "https://ma.jumia.is/cms/1_2020/00_L2Cat_Nav/Computing/Mobile/Laptop_220x220.jpg",
        "creationAt": "2023-03-23T04:28:01.000Z",
        "updatedAt": "2023-03-24T02:01:33.000Z"
    },
    {
        "id": 2,
        "name": "Ecrans PC",
        "image": "https://ma.jumia.is/cms/1_2020/00_L2Cat_Nav/Computing/Mobile/Monitors-220X220.png",
        "creationAt": "2023-03-23T04:28:01.000Z",
        "updatedAt": "2023-03-24T00:21:35.000Z"
    },
    {
        "id": 3,
        "name": "PC Bureau",
        "image": "https://ma.jumia.is/cms/1_2020/00_L2Cat_Nav/Computing/Mobile/Data-Storage-220X220.png",
        "creationAt": "2023-03-23T04:28:01.000Z",
        "updatedAt": "2023-03-24T02:30:08.000Z"
    },
    {
        "id": 4,
        "name": "Claviers et souris",
        "image": "https://ma.jumia.is/cms/1_2020/00_L2Cat_Nav/Computing/Mobile/Keyboards_220x220.jpg",
        "creationAt": "2023-03-23T04:28:01.000Z",
        "updatedAt": "2023-03-24T00:15:31.000Z"
    },
    {
        "id": 5,
        "name": "Materiel Gaming",
        "image": "https://ma.jumia.is/cms/1_2020/00_L2Cat_Nav/Computing/Mobile/Game-Hardware_220x220.jpg",
        "creationAt": "2023-03-23T04:28:01.000Z",
        "updatedAt": "2023-03-24T00:16:33.000Z"
    },
    {
        "id": 6,
        "name": "Accesoires IT",
        "image": "https://ma.jumia.is/cms/1_2020/00_L2Cat_Nav/Computing/Mobile/Laptop-Accessories-220X220.png",
        "creationAt": "2023-03-24T01:10:04.000Z",
        "updatedAt": "2023-03-24T01:10:04.000Z"
    },
    {
        "id": 7,
        "name": "Reseaux et WIFI",
        "image": "https://ma.jumia.is/cms/1_2020/00_L2Cat_Nav/Computing/Mobile/Wifi-220x220.jpg",
        "creationAt": "2023-03-24T01:10:04.000Z",
        "updatedAt": "2023-03-24T01:12:39.000Z"
    },
    {
        "id": 8,
        "name": "Les imprimantes",
        "image": "https://ma.jumia.is/cms/1_2020/00_L2Cat_Nav/Computing/Mobile/Printers-220X220.png",
        "creationAt": "2023-03-24T01:11:00.000Z",
        "updatedAt": "2023-03-24T01:11:00.000Z"
    },
    {
        "id": 9,
        "name": "Composants PC",
        "image": "https://ma.jumia.is/cms/1_2020/00_L2Cat_Nav/Computing/Mobile/Composants-220x220.jpg",
        "creationAt": "2023-03-24T01:45:00.000Z",
        "updatedAt": "2023-03-24T01:45:00.000Z"
    },
    {
        "id": 10,
        "name": "Stockage",
        "image": "https://ma.jumia.is/cms/1_2020/00_L2Cat_Nav/Computing/Mobile/Stockage-220x220.jpg",
        "creationAt": "2023-03-24T02:00:22.000Z",
        "updatedAt": "2023-03-24T02:00:22.000Z"
    }
]', '$[*]' COLUMNS(id INT PATH '$.id', name varchar(50) PATH '$.name', image varchar(1000) PATH '$.image', creationAt varchar(50) PATH '$.creationAt', updatedAt varchar(50) PATH '$.updatedAt')) a;


select * from t_categorie;
