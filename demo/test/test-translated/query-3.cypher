MATCH (x0)<-[:p3]-()<-[:p0]-()-[:p0]->(x1), (x1)-[:p1|p1|p1*]->(x2), (x0)<-[:p3]-()-[:p3]->()<-[:p3]-()<-[:p0]-(x3), (x2)<-[:p3]-()<-[:p0]-()-[:p0]->()<-[:p0]-(x4) RETURN DISTINCT x2, x0, x3, x1;
