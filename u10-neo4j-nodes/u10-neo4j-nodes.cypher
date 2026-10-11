// U10 — Neo4j Nodes and Matching
// PDS1MC17 | Joe Rakesh A | Department No. 26-PDS-002

MERGE (a:Student {student_id:1}) SET a.name='Asha',a.department='Data Science';
MERGE (b:Student {student_id:2}) SET b.name='Bala',b.department='Computer Science';
MERGE (c:Course {course_id:'PDS1MC17'}) SET c.name='Structured and Unstructured Database Lab';
MATCH (s:Student) RETURN s.student_id,s.name,s.department ORDER BY s.student_id;
MATCH (c:Course {course_id:'PDS1MC17'}) RETURN c;
CREATE INDEX student_id_index IF NOT EXISTS FOR (s:Student) ON (s.student_id);
SHOW INDEXES;
