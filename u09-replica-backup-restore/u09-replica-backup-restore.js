// U09 — Replica Set, Backup and Restore
// PDS1MC17 | Joe Rakesh A | Department No. 26-PDS-002

// Start mongod with --replSet rs0, then run in mongosh:
rs.status();
rs.initiate({_id:"rs0",members:[{_id:0,host:"localhost:27017"}]});
// Terminal backup:
// mongodump --uri="mongodb://localhost:27017/?replicaSet=rs0" --db=structured_unstructured_lab --out=./backup
// Restore to a separate test database:
// mongorestore --uri="mongodb://localhost:27017/?replicaSet=rs0" --nsFrom="structured_unstructured_lab.*" --nsTo="structured_unstructured_lab_restore.*" ./backup/structured_unstructured_lab
use("structured_unstructured_lab_restore");
db.getCollectionNames();
