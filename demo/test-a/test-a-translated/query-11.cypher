MATCH (x0)<-[:pextendedTo]-()-[:ppublishedIn]->()<-[:ppublishedIn]-()<-[:pauthors]-(x1), (x1)-[:pauthors]->()-[:ppublishedIn]->()<-[:ppublishedIn]-()<-[:pauthors]-(x2), (x2)-[:pauthors]->()-[:ppublishedIn]->()-[:pheldIn]->(x3) RETURN DISTINCT x0, x3;
