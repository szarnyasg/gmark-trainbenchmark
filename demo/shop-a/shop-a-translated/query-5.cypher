MATCH (x0)<-[:ptype]-()-[:plike]->()-[:pkeywords]->()<-[:ptitle]-(x1), (x1)-[:pdirector]->()<-[:pfriendOf]-()-[:page]->(x2), (x2)<-[:page]-()-[:puserId]->()<-[:pcontentRating]-()-[:ptext]->(x3) RETURN "true" LIMIT 1;
