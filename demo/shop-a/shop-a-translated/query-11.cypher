MATCH (x0)-[:phasReview]->()-[:ptext]->()<-[:ptext]-(x1), (x0)-[:pdescription]->()<-[:ptitle]-()<-[:ppurchaseFor]-()-[:ppurchaseFor]->(x2), (x0)-[:pprintColumn]->()<-[:pduration]-(x3), (x0)-[:pprintEdition]->()<-[:pcontentSize]-()-[:pcaption]->()<-[:paward]-(x4) RETURN DISTINCT x0, x1;
