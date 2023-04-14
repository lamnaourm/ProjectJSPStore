create database dbstore; 

use dbstore; 

create table t_categorie (id int primary key, name varchar(255), image varchar(1000), creationAt varchar(255), updatedAt varchar(255));

insert into t_categorie select a.* from JSON_TABLE('[
    {
        "id": 1,
        "name": "Clothesxh",
        "image": "https://t3.ftcdn.net/jpg/02/10/85/26/360_F_210852662_KWN4O1tjxIQt8axc2r82afdSwRSLVy7g.jpg",
        "creationAt": "2023-03-23T04:28:01.000Z",
        "updatedAt": "2023-03-24T02:01:33.000Z"
    },
    {
        "id": 2,
        "name": "a cute dinosaur",
        "image": "https://api.lorem.space/image/watch?w=640&h=480&r=1119",
        "creationAt": "2023-03-23T04:28:01.000Z",
        "updatedAt": "2023-03-24T00:21:35.000Z"
    },
    {
        "id": 3,
        "name": "Change title1ss",
        "image": "https://api.lorem.space/image/furniture?w=640&h=480&r=27",
        "creationAt": "2023-03-23T04:28:01.000Z",
        "updatedAt": "2023-03-24T02:30:08.000Z"
    },
    {
        "id": 4,
        "name": "Shoes",
        "image": "https://api.lorem.space/image/shoes?w=640&h=480&r=6519",
        "creationAt": "2023-03-23T04:28:01.000Z",
        "updatedAt": "2023-03-24T00:15:31.000Z"
    },
    {
        "id": 5,
        "name": "Others",
        "image": "https://api.lorem.space/image?w=640&h=480&r=9440",
        "creationAt": "2023-03-23T04:28:01.000Z",
        "updatedAt": "2023-03-24T00:16:33.000Z"
    },
    {
        "id": 28,
        "name": "Nueva Categoria",
        "image": "https://placeimg.com/640/480/any",
        "creationAt": "2023-03-24T01:10:04.000Z",
        "updatedAt": "2023-03-24T01:10:04.000Z"
    },
    {
        "id": 29,
        "name": "Nueva Categoria actualizada",
        "image": "https://placeimg.com/640/480/any",
        "creationAt": "2023-03-24T01:10:04.000Z",
        "updatedAt": "2023-03-24T01:12:39.000Z"
    },
    {
        "id": 30,
        "name": "xzx",
        "image": "https://firebasestorage.googleapis.com/v0/b/platzi-store-forms.appspot.com/o/4463%2B.png?alt=media&token=24e1f541-c05d-4406-afef-ac11fcd826b5",
        "creationAt": "2023-03-24T01:11:00.000Z",
        "updatedAt": "2023-03-24T01:11:00.000Z"
    },
    {
        "id": 31,
        "name": "sd",
        "image": "https://firebasestorage.googleapis.com/v0/b/platzi-store-forms.appspot.com/o/527%2B.png?alt=media&token=05c69869-d2a6-4e17-8412-270356c7754c",
        "creationAt": "2023-03-24T01:45:00.000Z",
        "updatedAt": "2023-03-24T01:45:00.000Z"
    },
    {
        "id": 32,
        "name": "xc",
        "image": "https://firebasestorage.googleapis.com/v0/b/platzi-store-forms.appspot.com/o/8469%2B.png?alt=media&token=98b7bb7d-8601-4500-a549-7946c6fff00f",
        "creationAt": "2023-03-24T02:00:22.000Z",
        "updatedAt": "2023-03-24T02:00:22.000Z"
    },
    {
        "id": 33,
        "name": "Clothesxb",
        "image": "https://t3.ftcdn.net/jpg/02/10/85/26/360_F_210852662_KWN4O1tjxIQt8axc2r82afdSwRSLVy7g.jpg",
        "creationAt": "2023-03-24T02:00:31.000Z",
        "updatedAt": "2023-03-24T02:00:31.000Z"
    },
    {
        "id": 34,
        "name": "cxcx",
        "image": "https://firebasestorage.googleapis.com/v0/b/platzi-store-forms.appspot.com/o/4677%2B.png?alt=media&token=5ad50af8-2d97-4ece-b5e4-e9b29850008c",
        "creationAt": "2023-03-24T02:02:27.000Z",
        "updatedAt": "2023-03-24T02:02:27.000Z"
    }
]', '$[*]' COLUMNS(id INT PATH '$.id', name varchar(50) PATH '$.name', image varchar(1000) PATH '$.image', creationAt varchar(50) PATH '$.creationAt', updatedAt varchar(50) PATH '$.updatedAt')) a;


select * from t_categorie;
