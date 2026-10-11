// U11 — Neo4j Relationship Creation and Display
// PDS1MC17 | Joe Rakesh A | Department No. 26-PDS-002

MATCH (s:Student {student_id:1}),(c:Course {course_id:'PDS1MC17'})
MERGE (s)-[r:ENROLLED_IN]->(c) SET r.semester=1,r.academic_year='2026-2027';
MATCH (s:Student)-[r:ENROLLED_IN]->(c:Course)
RETURN s.name,type(r) AS relationship,c.name,r.semester,r.academic_year;
MATCH p=(s:Student)-[:ENROLLED_IN]->(c:Course) RETURN p;
