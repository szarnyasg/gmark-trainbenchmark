MATCH (x0)<-[:phomepage]-()-[:pbookEdition]->()<-[:pcontentSize]-(x1), (x0)-[:purl]->()<-[:pemail]-(x2), (x1)-[:purl]->()<-[:pname]-()-[:ppaymentAccepted]->()<-[:ppaymentAccepted]-(x3) RETURN DISTINCT x0, x1;
