WITH RECURSIVE c0(src, trg) AS ((SELECT edge.src, edge.src FROM edge UNION SELECT edge.trg, edge.trg FROM edge UNION SELECT s0.src, s3.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = gender AND s1.label = locationIP  AND s2.label = locationIP  AND s3.label = browserUsed  UNION SELECT s0.src, s1.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1 WHERE s0.trg = s1.src AND s0.label = gender AND s1.label = locationIP )) , c1(src, trg) AS (SELECT src, trg FROM c0 UNION SELECT head.src, tail.trg FROM c0 as head, c1 as tail WHERE head.trg = tail.src) , c2(src, trg) AS ((SELECT edge.src, edge.src FROM edge UNION SELECT edge.trg, edge.trg FROM edge UNION SELECT s0.src, s3.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = content AND s1.label = content  AND s2.label = name  AND s3.label = gender  UNION SELECT s0.src, s1.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1 WHERE s0.trg = s1.src AND s0.label = name AND s1.label = name )) , c3(src, trg) AS (SELECT src, trg FROM c2 UNION SELECT head.src, tail.trg FROM c2 as head, c3 as tail WHERE head.trg = tail.src) , c4(src, trg) AS ((SELECT edge.src, edge.src FROM edge UNION SELECT edge.trg, edge.trg FROM edge UNION SELECT s0.src, s1.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1 WHERE s0.trg = s1.src AND s0.label = name AND s1.label = name  UNION SELECT s0.src, s3.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = browserUsed AND s1.label = browserUsed  AND s2.label = language  AND s3.label = imageFile )) , c5(src, trg) AS (SELECT src, trg FROM c4 UNION SELECT head.src, tail.trg FROM c4 as head, c5 as tail WHERE head.trg = tail.src) SELECT DISTINCT c0.src, c4.src FROM c0, c1, c2, c3, c4, c5 WHERE c4.src = c0.trg AND c0.src = c2.src;
