MATCH (x0)<-[:pheldIn]-()<-[:ppublishedIn]-()<-[:pauthors]-(x1), (x0)<-[:pheldIn]-()-[:pheldIn]->()<-[:pheldIn]-()<-[:ppublishedIn]-(x2), (x1)<-[:pheldIn]-()-[:pheldIn]->()<-[:pheldIn]-()<-[:ppublishedIn]-(x3) RETURN DISTINCT x0, x2, x1, x3;
