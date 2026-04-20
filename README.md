# 🌍 Nexura GreenTech: European Market Expansion Strategy

## Business Case
Nexura GreenTech, azienda B2B nel settore della transizione energetica, sta pianificando l'espansione in Europa. L'obiettivo di questo progetto è costruire un'architettura relazionale (SQL) per identificare i mercati ad alto potenziale per le PMI, incrociando dati macroeconomici e leve finanziarie locali.

## Architettura Dati e Metodologia
Il database relazionale è strutturato per isolare la misurazione quantitativa dalle tattiche qualitative:

1. **Normalizzazione Matematica (Min-Max):** Per rendere confrontabili parametri eterogenei (es. costo dell'energia in centesimi vs. numero di PMI in milioni), è stato calcolato uno 'score_attrattivita' grezzo, successivamente ricondotto a una scala 1-10 tramite normalizzazione globale su Vista (Window Functions SQL).
2. **Denormalizzazione Logica (Views):** Utilizzo di 'LEFT JOIN' e funzioni di aggregazione ('GROUP_CONCAT') per generare un Executive Summary piatto, robusto e pronto per l'ingestion in software di Business Intelligence (PowerBI/Tableau).

## Key Insights (Top 3 Markets)
Dall'analisi del database emergono i seguenti mercati prioritari:
* **🇩🇪 Germania (Score: 10.00):** Mercato solido con ottimi incentivi per l'efficienza energetica (es. fondi ZIM).
* **🇮🇹 Italia (Score: 9.36):** Altissimo numero di PMI e forte leva statale (Transizione 5.0).
* **🇫🇷 Francia (Score: 7.29):** Ecosistema favorevole grazie al basso costo energetico e sgravi per la R&D.

## Tech Stack
* MySQL 8.0
* Data Definition Language (DDL) & Data Manipulation Language (DML)
* Advanced SQL: Window Functions, CTE, Aggregate Functions.
