WITH RECURSIVE c0(src, trg) AS ((SELECT s0.src, s2.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, (SELECT trg as src, src as trg, label FROM edge) as s1, (SELECT trg as src, src as trg, label FROM edge) as s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = 2 AND s1.label = 1  AND s2.label = 0  UNION SELECT s0.src, s2.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, (SELECT trg as src, src as trg, label FROM edge) as s1, (SELECT trg as src, src as trg, label FROM edge) as s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = 2 AND s1.label = 1  AND s2.label = 0 )) , c1(src, trg) AS ((SELECT s0.src, s3.trg FROM edge s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = 0 AND s1.label = 1  AND s2.label = 1  AND s3.label = 1  UNION SELECT s0.src, s1.trg FROM edge s0, edge s1 WHERE s0.trg = s1.src AND s0.label = 0 AND s1.label = 1  UNION SELECT s0.src, s3.trg FROM edge s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = 0 AND s1.label = 1  AND s2.label = 1  AND s3.label = 1 )) , c2(src, trg) AS ((SELECT s0.src, s2.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = 2 AND s1.label = 1  AND s2.label = 3  UNION SELECT s0.src, s2.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = 2 AND s1.label = 1  AND s2.label = 3 )) , c3(src, trg) AS ((SELECT s0.src, s2.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = 2 AND s1.label = 1  AND s2.label = 3 )) SELECT DISTINCT c3.src, c0.src, c1.src, c2.trg  FROM c0, c1, c2, c3 WHERE c0.src = c2.src AND c1.src = c0.trg AND c3.src = c1.trg;
