MATCH (x0)<-[:pheldIn]-()<-[:ppublishedIn]-()-[:ppublishedIn]->()-[:pheldIn]->(x1), (x0)<-[:pheldIn]-()-[:pheldIn]->(x2), (x0)<-[:pheldIn]-()-[:pheldIn]->(x3) RETURN "true" LIMIT 1;
