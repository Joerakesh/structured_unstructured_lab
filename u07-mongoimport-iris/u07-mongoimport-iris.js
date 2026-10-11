// U07 — Importing JSON Data Using mongoimport (Iris Dataset)
// PDS1MC17 | Joe Rakesh A | Department No. 26-PDS-002

// Terminal import: mongoimport --db structured_unstructured_lab --collection iris --file iris.json --jsonArray
use("structured_unstructured_lab");
db.iris.findOne();
db.iris.countDocuments();
db.iris.find({}).limit(5);
db.iris.createIndex({species:1});
db.iris.aggregate([{$group:{_id:"$species",count:{$sum:1},meanSepalLength:{$avg:"$sepalLength"},meanPetalLength:{$avg:"$petalLength"}}},{$sort:{_id:1}}]);
