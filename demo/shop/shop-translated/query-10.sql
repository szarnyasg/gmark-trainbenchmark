WITH RECURSIVE c0(src, trg) AS ((SELECT s0.src, s1.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1 WHERE s0.trg = s1.src AND s0.label = 56 AND s1.label = 81  UNION SELECT s0.src, s3.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = 56 AND s1.label = 79  AND s2.label = 79  AND s3.label = 81 )) , c1(src, trg) AS ((SELECT s0.src, s2.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = 81 AND s1.label = 54  AND s2.label = 54  UNION SELECT s0.src, s2.trg FROM edge s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = 80 AND s1.label = 58  AND s2.label = 54 )) , c2(src, trg) AS ((SELECT s0.src, s1.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1 WHERE s0.trg = s1.src AND s0.label = 76 AND s1.label = 39 )) SELECT "true" FROM edge WHERE EXISTS (SELECT * FROM c0, c1, c2 WHERE c2.src = c1.trg AND c1.src = c0.trg);
