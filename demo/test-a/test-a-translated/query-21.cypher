MATCH (x0)<-[:pheldIn]-()<-[:ppublishedIn]-(x1), (x1)-[:ppublishedIn]->()-[:pheldIn]->()<-[:pheldIn]-()-[:pheldIn]->(x2), (x0)<-[:pheldIn]-()<-[:ppublishedIn]-()-[:ppublishedIn]->()-[:pheldIn]->(x3), (x2)<-[:pheldIn]-()-[:pheldIn]->(x4) RETURN "true" LIMIT 1;
