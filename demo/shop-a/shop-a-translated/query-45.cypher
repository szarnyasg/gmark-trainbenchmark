MATCH (x0)<-[:phomepage]-()-[:pdescription]->()<-[:pname]-(x1), (x0)-[:phits]->()<-[:pfaxNumber]-(x2), (x0)<-[:psubscribes]-()<-[:pauthor]-()-[:pwordCount]->()<-[:pfaxNumber]-(x3) RETURN "true" LIMIT 1;
