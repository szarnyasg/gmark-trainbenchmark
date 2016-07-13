WITH RECURSIVE c0(src, trg) AS ((SELECT s0.src, s3.trg FROM edge s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2, (SELECT trg as src, src as trg, label FROM edge) as s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = editor AND s1.label = like  AND s2.label = like  AND s3.label = actor  UNION SELECT s0.src, s3.trg FROM edge s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2, (SELECT trg as src, src as trg, label FROM edge) as s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = editor AND s1.label = like  AND s2.label = like  AND s3.label = actor )) , c1(src, trg) AS ((SELECT s0.src, s2.trg FROM edge s0, edge s1, edge s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = actor AND s1.label = like  AND s2.label = hasReview )) , c2(src, trg) AS ((SELECT s0.src, s1.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1 WHERE s0.trg = s1.src AND s0.label = includes AND s1.label = includes  UNION SELECT s0.src, s1.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1 WHERE s0.trg = s1.src AND s0.label = purchaseFor AND s1.label = purchaseFor )) , c3(src, trg) AS ((SELECT s0.src, s2.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1, (SELECT trg as src, src as trg, label FROM edge) as s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = author AND s1.label = friendOf  AND s2.label = author  UNION SELECT s0.src, s1.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1 WHERE s0.trg = s1.src AND s0.label = purchaseFor AND s1.label = purchaseFor )) SELECT DISTINCT c0.src FROM c0, c1, c2, c3 WHERE c0.src = c2.src AND c1.src = c0.trg AND c3.src = c1.trg;
