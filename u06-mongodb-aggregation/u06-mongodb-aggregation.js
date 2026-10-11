// U06 — Aggregate Functions in MongoDB
// PDS1MC17 | Joe Rakesh A | Department No. 26-PDS-002

use("structured_unstructured_lab");
db.sales.deleteMany({});
db.sales.insertMany([{region:"North",category:"Electronics",amount:1500},{region:"South",category:"Electronics",amount:800},{region:"North",category:"Furniture",amount:400},{region:"North",category:"Electronics",amount:1200},{region:"South",category:"Furniture",amount:600}]);
db.sales.aggregate([{$group:{_id:"$region",count:{$sum:1},total:{$sum:"$amount"},average:{$avg:"$amount"},minimum:{$min:"$amount"},maximum:{$max:"$amount"}}},{$sort:{total:-1}}]);
db.sales.aggregate([{$group:{_id:"$category",revenue:{$sum:"$amount"}}},{$match:{revenue:{$gt:1000}}}]);
