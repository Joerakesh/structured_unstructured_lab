// U02 — Collection Queries in MongoDB
// PDS1MC17 | Joe Rakesh A | Department No. 26-PDS-002

use("structured_unstructured_lab");
db.products.deleteMany({});
db.products.insertMany([{name:"Keyboard",category:"Accessories",price:1200,stock:12},{name:"Mouse",category:"Accessories",price:700,stock:30},{name:"Monitor",category:"Display",price:9500,stock:5},{name:"USB Drive",category:"Storage",price:500,stock:50}]);
db.products.find({price:{$gte:700}});
db.products.find({category:{$in:["Accessories","Storage"]}});
db.products.find({stock:{$gt:10}},{_id:0,name:1,stock:1});
db.products.find({name:/^m/i});
db.products.find().sort({price:-1}).limit(3);
db.products.countDocuments({category:"Accessories"});
