MATCH (x0)<-[:p51]-()<-[:p53]-()-[:p65]->()-[:p51]->(x1), (x0)<-[:p51]-()-[:p52]->()<-[:p52]-()-[:p52]->(x2), (x1)<-[:p51]-()<-[:p53]-()-[:p52]->(x3) RETURN DISTINCT x0, x2, x1, x3;
