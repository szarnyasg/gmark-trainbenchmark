MATCH (x0)<-[:pextendedTo]-()-[:pextendedTo]->()<-[:pextendedTo]-()<-[:pauthors]-(x1), (x0)<-[:pextendedTo]-()-[:pextendedTo]->()<-[:pextendedTo]-()<-[:pauthors]-(x2), (x1)<-[:pextendedTo]-()<-[:pauthors]-()-[:pauthors]->()<-[:pauthors]-(x3) RETURN DISTINCT x0, x1;
