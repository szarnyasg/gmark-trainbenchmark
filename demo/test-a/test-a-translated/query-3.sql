WITH RECURSIVE c0(src, trg) AS ((SELECT s0.src, s2.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1, edge s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = publishedIn AND s1.label = publishedIn  AND s2.label = heldIn  UNION SELECT s0.src, s2.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1, edge s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = publishedIn AND s1.label = publishedIn  AND s2.label = heldIn )) , c1(src, trg) AS ((SELECT s0.src, s2.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, (SELECT trg as src, src as trg, label FROM edge) as s1, (SELECT trg as src, src as trg, label FROM edge) as s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = heldIn AND s1.label = publishedIn  AND s2.label = authors )) , c2(src, trg) AS ((SELECT s0.src, s3.trg FROM edge s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = authors AND s1.label = extendedTo  AND s2.label = extendedTo  AND s3.label = extendedTo  UNION SELECT s0.src, s3.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = authors AND s1.label = authors  AND s2.label = authors  AND s3.label = extendedTo )) SELECT DISTINCT c0.src, c2.trg  FROM c0, c1, c2 WHERE c2.src = c1.trg AND c1.src = c0.trg;
