WITH RECURSIVE c0(src, trg) AS ((SELECT s0.src, s3.trg FROM edge s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = 0 AND s1.label = 3  AND s2.label = 3  AND s3.label = 1  UNION SELECT s0.src, s3.trg FROM edge s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = 0 AND s1.label = 3  AND s2.label = 3  AND s3.label = 1 )) , c1(src, trg) AS ((SELECT s0.src, s3.trg FROM edge s0, edge s1, edge s2, (SELECT trg as src, src as trg, label FROM edge) as s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = 0 AND s1.label = 1  AND s2.label = 2  AND s3.label = 2  UNION SELECT s0.src, s3.trg FROM edge s0, edge s1, edge s2, (SELECT trg as src, src as trg, label FROM edge) as s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = 0 AND s1.label = 1  AND s2.label = 2  AND s3.label = 2  UNION SELECT s0.src, s3.trg FROM edge s0, edge s1, edge s2, (SELECT trg as src, src as trg, label FROM edge) as s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = 0 AND s1.label = 1  AND s2.label = 2  AND s3.label = 2 )) , c2(src, trg) AS ((SELECT s0.src, s3.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = 0 AND s1.label = 0  AND s2.label = 0  AND s3.label = 1 )) SELECT DISTINCT c2.trg , c0.trg , c1.trg , c0.src FROM c0, c1, c2 WHERE c0.src = c1.src AND c0.src = c2.src;
