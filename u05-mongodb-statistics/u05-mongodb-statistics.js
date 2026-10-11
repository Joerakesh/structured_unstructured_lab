// U05 — Standard Deviation and Variance
// PDS1MC17 | Joe Rakesh A | Department No. 26-PDS-002

use("structured_unstructured_lab");
db.exam_scores.deleteMany({});
db.exam_scores.insertMany([{student:"Asha",score:85},{student:"Bala",score:76},{student:"Chitra",score:93},{student:"Dev",score:81},{student:"Esha",score:65}]);
db.exam_scores.aggregate([{$group:{_id:null,count:{$sum:1},mean:{$avg:"$score"},stdPopulation:{$stdDevPop:"$score"},stdSample:{$stdDevSamp:"$score"}}},{$project:{_id:0,count:1,mean:1,stdPopulation:1,stdSample:1}}]);
