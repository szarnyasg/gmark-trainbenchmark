MATCH (x0)<-[:planguage]-()-[:ptext]->()<-[:ptitle]-()-[:pnumberOfPages]->(x1), (x0)<-[:planguage]-()-[:ptitle]->()<-[:ptitle]-()-[:pcontentSize]->(x2), (x0)<-[:planguage]-()-[:pkeywords]->()<-[:ppublished]-()-[:pprintPage]->(x3) RETURN DISTINCT x0, x1;
