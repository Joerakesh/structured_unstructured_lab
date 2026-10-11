// U01 — MongoDB CRUD Operations
// PDS1MC17 | Joe Rakesh A | Department No. 26-PDS-002

use("structured_unstructured_lab");
db.students.deleteMany({});
db.students.insertMany([{roll_no:1,name:"Asha",department:"Data Science",marks:88},{roll_no:2,name:"Bala",department:"Computer Science",marks:76},{roll_no:3,name:"Chitra",department:"Data Science",marks:93}]);
db.students.find();
db.students.find({department:"Data Science"});
db.students.updateOne({roll_no:2},{$set:{marks:81}});
db.students.deleteOne({roll_no:1});
db.students.find().sort({marks:-1});
