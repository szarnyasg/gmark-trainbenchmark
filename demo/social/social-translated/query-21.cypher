MATCH (x0)-[:p26]->()<-[:p20]-()-[:p16]->()<-[:p16]-(x1), (x1)-[:p16|p16*]->(x2), (x0)-[:p2]->()-[:p19]->()<-[:p21]-()-[:p4]->(x3), (x2)-[:p3]->()-[:p0]->()-[:p4]->(x4) RETURN DISTINCT x0, x2;
