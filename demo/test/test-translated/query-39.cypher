MATCH (x0)<-[:p2]-()<-[:p1]-()<-[:p0]-(x1), (x1)-[:p0]->()-[:p3]->()<-[:p3]-(x2), (x2)-[:p1]->()-[:p2]->()<-[:p2]-(x3), (x3)-[:p2]->()<-[:p2]-()-[:p2]->(x4) RETURN DISTINCT x0, x4;
