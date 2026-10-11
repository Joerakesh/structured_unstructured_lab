// U03 — String Manipulations in MongoDB
// PDS1MC17 | Joe Rakesh A | Department No. 26-PDS-002

use("structured_unstructured_lab");
db.people.deleteMany({});
db.people.insertMany([{name:"  Asha Rao ",email:"ASHA@EXAMPLE.COM"},{name:"Bala Kumar",email:"bala@college.edu"},{name:"Chitra Iyer",email:"chitra@example.com"}]);
db.people.aggregate([{$project:{_id:0,name:1,trimmed:{$trim:{input:"$name"}},upper:{$toUpper:{$trim:{input:"$name"}}},lowerEmail:{$toLower:"$email"},firstName:{$arrayElemAt:[{$split:[{$trim:{input:"$name"}}," "]},0]}}}]);
db.people.find({email:{$regex:"@example\\.com$",$options:"i"}});
