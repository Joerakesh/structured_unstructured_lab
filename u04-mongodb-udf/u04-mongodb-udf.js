// U04 — User-Defined Functions in MongoDB
// PDS1MC17 | Joe Rakesh A | Department No. 26-PDS-002

// MongoDB differs from MySQL: use reusable mongosh helpers or aggregation expressions.
function addNumbers(a,b){return a+b;}
print("addNumbers(4,5) =",addNumbers(4,5));
use("structured_unstructured_lab");
db.values.deleteMany({});
db.values.insertMany([{a:4,b:5},{a:10,b:7},{a:2,b:9}]);
db.values.aggregate([{$project:{a:1,b:1,sum:{$add:["$a","$b"]}}}]);
