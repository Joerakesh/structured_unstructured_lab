// U08 — Array Data in MongoDB
// PDS1MC17 | Joe Rakesh A | Department No. 26-PDS-002

use("structured_unstructured_lab");
db.students_array.deleteMany({});
db.students_array.insertMany([{name:"Asha",skills:["Python","SQL"],scores:[78,88]},{name:"Bala",skills:["Java","MongoDB"],scores:[70,82]},{name:"Chitra",skills:["Python","MongoDB","SQL"],scores:[91,95]}]);
db.students_array.find({skills:"MongoDB"});
db.students_array.updateOne({name:"Asha"},{$addToSet:{skills:"MongoDB"}});
db.students_array.updateOne({name:"Bala"},{$push:{scores:89}});
db.students_array.updateOne({name:"Chitra"},{$pull:{skills:"Java"}});
db.students_array.find({scores:{$elemMatch:{$gte:90}}});
db.students_array.aggregate([{$unwind:"$skills"},{$group:{_id:"$skills",studentCount:{$sum:1}}},{$sort:{studentCount:-1}}]);
