// U12 — Indexing in MongoDB (additional)
// PDS1MC17 | Joe Rakesh A | Department No. 26-PDS-002

use("structured_unstructured_lab");
db.customers.deleteMany({});
db.customers.insertMany([{customer_id:1,email:"asha@example.com",city:"Chennai",last_name:"Rao"},{customer_id:2,email:"bala@example.com",city:"Madurai",last_name:"Kumar"},{customer_id:3,email:"chitra@example.com",city:"Chennai",last_name:"Iyer"}]);
db.customers.createIndex({email:1},{unique:true});
db.customers.createIndex({city:1,last_name:1});
db.customers.getIndexes();
db.customers.find({city:"Chennai"}).explain("executionStats");
db.customers.dropIndex("city_1_last_name_1");
