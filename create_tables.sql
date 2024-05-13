-- Creating a table to store all NYC COVID-19 data
BEGIN;
CREATE TABLE nyc_data AS (
    SELECT 
        date_of_interest, 
        case_count, 
        probable_case_count, 
        hospitalized_count, 
        death_count, 
        case_count_7day_avg, 
        all_case_count_7day_avg, 
        hosp_count_7day_avg, 
        death_count_7day_avg
    FROM 
        covid_data
    WHERE 
        case_count > 0
);
COMMIT;

-- Creating separate tables for each borough

-- The Bronx
BEGIN;
CREATE TABLE bx_data AS (
    SELECT 
        date_of_interest, 
        bx_case_count, 
        bx_probable_case_count, 
        bx_hospitalized_count, 
        bx_death_count, 
        bx_case_count_7day_avg, 
        bx_probable_case_count_7day_avg, 
        bx_all_case_count_7day_avg, 
        bx_hospitalized_count_7day_avg, 
        bx_death_count_7day_avg
    FROM 
        covid_data
    WHERE 
        bx_case_count > 0
);
COMMIT;

-- Brooklyn
BEGIN;
CREATE TABLE bk_data AS (
    SELECT 
        date_of_interest, 
        bk_case_count, 
        bk_probable_case_count, 
        bk_hospitalized_count, 
        bk_death_count, 
        bk_case_count_7day_avg, 
        bk_probable_case_count_7day_avg, 
        bk_all_case_count_7day_avg, 
        bk_hospitalized_count_7day_avg, 
        bk_death_count_7day_avg
    FROM 
        covid_data
    WHERE 
        bk_case_count > 0
);
COMMIT;

-- Manhattan  
BEGIN;
CREATE TABLE mn_data AS (
    SELECT 
        date_of_interest, 
        mn_case_count, 
        mn_probable_case_count, 
        mn_hospitalized_count, 
        mn_death_count, 
        mn_case_count_7day_avg, 
        mn_probable_case_count_7day_avg, 
        mn_all_case_count_7day_avg, 
        mn_hospitalized_count_7day_avg, 
        mn_death_count_7day_avg
    FROM 
        covid_data
    WHERE 
        mn_case_count > 0
);
COMMIT;

-- Queens
BEGIN;
CREATE TABLE qn_data AS (
    SELECT 
        date_of_interest, 
        qn_case_count, 
        qn_probable_case_count, 
        qn_hospitalized_count, 
        qn_death_count, 
        qn_case_count_7day_avg, 
        qn_probable_case_count_7day_avg, 
        qn_all_case_count_7day_avg, 
        qn_hospitalized_count_7day_avg, 
        qn_death_count_7day_avg
    FROM 
        covid_data
    WHERE 
        qn_case_count > 0
);
COMMIT;

-- Staten Island
BEGIN;
CREATE TABLE si_data AS (
    SELECT 
        date_of_interest, 
        si_case_count, 
        si_probable_case_count, 
        si_hospitalized_count, 
        si_death_count, 
        si_case_count_7day_avg, 
        si_probable_case_count_7day_avg, 
        si_all_case_count_7day_avg, 
        si_hospitalized_count_7day_avg, 
        si_death_count_7day_avg
    FROM 
        covid_data
    WHERE 
        si_case_count > 0
);
COMMIT;
