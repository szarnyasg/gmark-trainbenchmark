MATCH (x0)-[:p16|p16*]->(x1), (x1)<-[:p7]-()-[:p7]->()-[:p16]->()<-[:p23]-(x2), (x0)-[:p16*]->(x3), (x2)-[:p16|p16|p7*]->(x4) RETURN DISTINCT x1, x2, x3, x0 UNION  UNION  UNION ;
