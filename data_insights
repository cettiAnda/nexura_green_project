-- Trovare i top 3 paesi per score attrattività 
USE nexura_expansion;

SELECT 
    id_paese,
    nome_paese,
    dimensione_mercato_pmi,
    costo_energia_kwh,
    indice_burocrazia,
    score_1_a_10
FROM 
    view_score_1_10
ORDER BY 
    score_1_a_10 DESC
    LIMIT 3;

/* ======================================================================================
REPORT DIREZIONALE: GO-TO-MARKET E LEVA FINANZIARIA SUI MERCATI EUROPEI
======================================================================================
Obiettivo: 
Produrre una vista unificata (Executive Summary) pronta per l'ingestion 
in dashboard di Business Intelligence (PowerBI/Tableau).

Logica Strutturale:
- INNER JOIN su 'strategie_marketing': Agisce come filtro per isolare la "Top 3" dei mercati.
- LEFT JOIN su 'incentivi_locali': Garantisce la persistenza dei mercati target anche in assenza di bandi.
- Aggregazioni (COUNT e GROUP_CONCAT): Collassano la moltiplicazione delle righe generata 
  dagli incentivi multipli in un'unica riga deterministica per ogni paese.
======================================================================================
*/

SELECT 
    v.nome_paese AS Mercato_Target,
    v.score_1_a_10 AS Score_Attrattivita,
	FORMAT(v.dimensione_mercato_pmi, 0) AS Numero_PMI,
    s.canale_prioritario AS Canali_Acquisizione,
    s.messaggio_chiave AS Posizionamento_Marketing,
    COUNT(i.id_incentivo) AS Numero_Incentivi_Attivi,
    GROUP_CONCAT(i.nome_programma SEPARATOR ' | ') AS Dettaglio_Bandi_Locali
    
FROM 
    view_score_1_10 v
JOIN 
    strategie_marketing s ON v.id_paese = s.id_paese
LEFT JOIN 
    incentivi_locali i ON v.id_paese = i.id_paese
    
GROUP BY 
    v.id_paese, 
    v.nome_paese, 
    v.score_1_a_10, 
    v.dimensione_mercato_pmi, 
    s.canale_prioritario, 
    s.messaggio_chiave
    
ORDER BY 
    v.score_1_a_10 DESC;
