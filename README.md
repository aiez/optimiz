<!-- Copyright (c) 2026 Tim Menzies, MIT License https://opensource.org/licenses/MIT -->
<a href="https://timm.fyi"><img align="right" alt="Author" src="https://img.shields.io/badge/Author-timm-dc143c?logo=readme&logoColor=white"></a><img align="right" alt="Language" src="https://img.shields.io/badge/Language-CSV-000080?logo=files&logoColor=white"><img align="right" alt="License" src="https://img.shields.io/badge/License-MIT-32cd32?logo=open-source-initiative&logoColor=white"><img align="right" alt="Purpose" src="https://img.shields.io/badge/Purpose-Data·Optimization-7b68ee?logo=githubcopilot&logoColor=white">

### [http://tiny.cc/optimiz](http://tiny.cc/optimiz)
Example multi-objective optimization datasets: 100+ CSV files with
self-describing headers — column names encode type and goal, so no
separate schema files are needed. Topics span software config,
hyper-parameter tuning, process models, health, finance, sales,
and RL. Data only, no code.

```bash
# install
git clone http://tiny.cc/konfig ../konfig
git clone http://tiny.cc/optimiz optimiz && cd optimiz
make help
```

<a href="http://tiny.cc/optimiz"><img width="150" align="right" alt="qr" src="https://tiny.cc/tiny/qr-image/tiny.cc~optimiz~l~150.png"></a>

**Sections:** [NAME](#name) | [DATA](#data) | [FILES](#files) | [SEE ALSO](#see-also) | [LICENSE](#license) | [AUTHOR](#author)

## NAME

    optimiz - multi-objective optimization CSVs. headers are the
    schema; goal columns end in '+' (maximize) or '-' (minimize).

## DATA

    CSV with self-describing header; no separate schema file:

      first char UPPER  -> numeric (Num)
      first char lower  -> symbolic (Sym)
      suffix '+'        -> numeric goal, maximize
      suffix '-'        -> numeric goal, minimize
      suffix '!'        -> symbolic goal (klass)
      suffix 'X'        -> ignore
      else              -> predictor
      missing value     -> '?'

    E.g. auto93.csv: Clndrs,Volume,HpX,Lbs-,Acc+,Model,origin,Mpg+

## FILES

    Gists are flat, so filenames keep their source-topic prefix:

      behavior_data_*   people: HR attrition, dropout, players
      binary_config_*   binary option models (FFM/FM, SAT)
      config_*          software config spaces (SS-*, Apache, SQL)
      financial_data_*  bonds, loans, markets
      health_data_*     medical + wellbeing tables
      hpo_*             hyper-parameter optimization landscapes
      misc_*            small classics (auto93, wine, ...)
      process_*         software process models (pom, xomo)
      rl_*              reinforcement-learning traces
      sales_data_*      retail + marketing tables
      systems_*         computer-systems tuning
      test_*            tiny smoke-test tables

[SS-N.csv](#file-ss-n-csv) | [auto93.csv](#file-auto93-csv) | [behavior_data_WA_Fn-UseC_-HR-Employee-Attrition.csv](#file-behavior_data_wa_fn-usec_-hr-employee-attrition-csv) | [behavior_data_all_players.csv](#file-behavior_data_all_players-csv) | [behavior_data_player_statistics_cleaned_final.csv](#file-behavior_data_player_statistics_cleaned_final-csv) | [behavior_data_student_dropout.csv](#file-behavior_data_student_dropout-csv) | [binary_config_FFM-1000-200-0.50-SAT-1.csv](#file-binary_config_ffm-1000-200-0-50-sat-1-csv) | [binary_config_FFM-125-25-0.50-SAT-1.csv](#file-binary_config_ffm-125-25-0-50-sat-1-csv) | [binary_config_FFM-250-50-0.50-SAT-1.csv](#file-binary_config_ffm-250-50-0-50-sat-1-csv) | [binary_config_FFM-500-100-0.50-SAT-1.csv](#file-binary_config_ffm-500-100-0-50-sat-1-csv) | [binary_config_FM-500-100-0.25-SAT-1.csv](#file-binary_config_fm-500-100-0-25-sat-1-csv) | [binary_config_FM-500-100-0.50-SAT-1.csv](#file-binary_config_fm-500-100-0-50-sat-1-csv) | [binary_config_FM-500-100-0.75-SAT-1.csv](#file-binary_config_fm-500-100-0-75-sat-1-csv) | [binary_config_FM-500-100-1.00-SAT-1.csv](#file-binary_config_fm-500-100-1-00-sat-1-csv) | [binary_config_Scrum100k.csv](#file-binary_config_scrum100k-csv) | [binary_config_Scrum10k.csv](#file-binary_config_scrum10k-csv) | [binary_config_Scrum1k.csv](#file-binary_config_scrum1k-csv) | [binary_config_billing10k.csv](#file-binary_config_billing10k-csv) | [config_Apache_AllMeasurements.csv](#file-config_apache_allmeasurements-csv) | [config_HSMGP_num.csv](#file-config_hsmgp_num-csv) | [config_SQL_AllMeasurements.csv](#file-config_sql_allmeasurements-csv) | [config_SS-A.csv](#file-config_ss-a-csv) | [config_SS-B.csv](#file-config_ss-b-csv) | [config_SS-C.csv](#file-config_ss-c-csv) | [config_SS-D.csv](#file-config_ss-d-csv) | [config_SS-E.csv](#file-config_ss-e-csv) | [config_SS-F.csv](#file-config_ss-f-csv) | [config_SS-G.csv](#file-config_ss-g-csv) | [config_SS-H.csv](#file-config_ss-h-csv) | [config_SS-I.csv](#file-config_ss-i-csv) | [config_SS-J.csv](#file-config_ss-j-csv) | [config_SS-K.csv](#file-config_ss-k-csv) | [config_SS-L.csv](#file-config_ss-l-csv) | [config_SS-M.csv](#file-config_ss-m-csv) | [config_SS-N.csv](#file-config_ss-n-csv) | [config_SS-O.csv](#file-config_ss-o-csv) | [config_SS-P.csv](#file-config_ss-p-csv) | [config_SS-Q.csv](#file-config_ss-q-csv) | [config_SS-R.csv](#file-config_ss-r-csv) | [config_SS-S.csv](#file-config_ss-s-csv) | [config_SS-T.csv](#file-config_ss-t-csv) | [config_SS-U.csv](#file-config_ss-u-csv) | [config_SS-V.csv](#file-config_ss-v-csv) | [config_SS-W.csv](#file-config_ss-w-csv) | [config_SS-X.csv](#file-config_ss-x-csv) | [config_X264_AllMeasurements.csv](#file-config_x264_allmeasurements-csv) | [config_rs-6d-c3_obj1.csv](#file-config_rs-6d-c3_obj1-csv) | [config_rs-6d-c3_obj2.csv](#file-config_rs-6d-c3_obj2-csv) | [config_sol-6d-c2-obj1.csv](#file-config_sol-6d-c2-obj1-csv) | [config_wc+rs-3d-c4-obj1.csv](#file-config_wc-rs-3d-c4-obj1-csv) | [config_wc+sol-3d-c4-obj1.csv](#file-config_wc-sol-3d-c4-obj1-csv) | [config_wc+wc-3d-c4-obj1.csv](#file-config_wc-wc-3d-c4-obj1-csv) | [config_wc-6d-c1-obj1.csv](#file-config_wc-6d-c1-obj1-csv) | [financial_data_BankChurners.csv](#file-financial_data_bankchurners-csv) | [financial_data_Loan.csv](#file-financial_data_loan-csv) | [financial_data_WA_Fn-UseC_-Telco-Customer-Churn.csv](#file-financial_data_wa_fn-usec_-telco-customer-churn-csv) | [financial_data_home_data_for_ml_course.csv](#file-financial_data_home_data_for_ml_course-csv) | [health_data_Data_COVID19_Indonesia.csv](#file-health_data_data_covid19_indonesia-csv) | [health_data_Life_Expectancy_Data.csv](#file-health_data_life_expectancy_data-csv) | [health_data_Medical_Data_and_Hospital_Readmissions.csv](#file-health_data_medical_data_and_hospital_readmissions-csv) | [hpo_Health-ClosedIssues0000.csv](#file-hpo_health-closedissues0000-csv) | [hpo_Health-ClosedIssues0001.csv](#file-hpo_health-closedissues0001-csv) | [hpo_Health-ClosedIssues0002.csv](#file-hpo_health-closedissues0002-csv) | [hpo_Health-ClosedIssues0003.csv](#file-hpo_health-closedissues0003-csv) | [hpo_Health-ClosedIssues0004.csv](#file-hpo_health-closedissues0004-csv) | [hpo_Health-ClosedIssues0005.csv](#file-hpo_health-closedissues0005-csv) | [hpo_Health-ClosedIssues0006.csv](#file-hpo_health-closedissues0006-csv) | [hpo_Health-ClosedIssues0007.csv](#file-hpo_health-closedissues0007-csv) | [hpo_Health-ClosedIssues0008.csv](#file-hpo_health-closedissues0008-csv) | [hpo_Health-ClosedIssues0009.csv](#file-hpo_health-closedissues0009-csv) | [hpo_Health-ClosedIssues0010.csv](#file-hpo_health-closedissues0010-csv) | [hpo_Health-ClosedIssues0011.csv](#file-hpo_health-closedissues0011-csv) | [hpo_Health-ClosedPRs0000.csv](#file-hpo_health-closedprs0000-csv) | [hpo_Health-ClosedPRs0002.csv](#file-hpo_health-closedprs0002-csv) | [hpo_Health-ClosedPRs0003.csv](#file-hpo_health-closedprs0003-csv) | [hpo_Health-ClosedPRs0004.csv](#file-hpo_health-closedprs0004-csv) | [hpo_Health-ClosedPRs0005.csv](#file-hpo_health-closedprs0005-csv) | [hpo_Health-ClosedPRs0006.csv](#file-hpo_health-closedprs0006-csv) | [hpo_Health-ClosedPRs0007.csv](#file-hpo_health-closedprs0007-csv) | [hpo_Health-ClosedPRs0008.csv](#file-hpo_health-closedprs0008-csv) | [hpo_Health-ClosedPRs0009.csv](#file-hpo_health-closedprs0009-csv) | [hpo_Health-ClosedPRs0010.csv](#file-hpo_health-closedprs0010-csv) | [hpo_Health-ClosedPRs0011.csv](#file-hpo_health-closedprs0011-csv) | [hpo_Health-Commits0000.csv](#file-hpo_health-commits0000-csv) | [hpo_Health-Commits0001.csv](#file-hpo_health-commits0001-csv) | [hpo_Health-Commits0002.csv](#file-hpo_health-commits0002-csv) | [hpo_Health-Commits0003.csv](#file-hpo_health-commits0003-csv) | [hpo_Health-Commits0004.csv](#file-hpo_health-commits0004-csv) | [hpo_Health-Commits0005.csv](#file-hpo_health-commits0005-csv) | [hpo_Health-Commits0006.csv](#file-hpo_health-commits0006-csv) | [hpo_Health-Commits0007.csv](#file-hpo_health-commits0007-csv) | [hpo_Health-Commits0008.csv](#file-hpo_health-commits0008-csv) | [hpo_Health-Commits0009.csv](#file-hpo_health-commits0009-csv) | [hpo_Health-Commits0010.csv](#file-hpo_health-commits0010-csv) | [hpo_Health-Commits0011.csv](#file-hpo_health-commits0011-csv) | [misc_Car_price_cleaned.csv](#file-misc_car_price_cleaned-csv) | [misc_Wine_quality.csv](#file-misc_wine_quality-csv) | [misc_auto93.csv](#file-misc_auto93-csv) | [misc_multiLabel.csv](#file-misc_multilabel-csv) | [process_coc1000.csv](#file-process_coc1000-csv) | [process_nasa93dem.csv](#file-process_nasa93dem-csv) | [process_pom3a.csv](#file-process_pom3a-csv) | [process_pom3b.csv](#file-process_pom3b-csv) | [process_pom3c.csv](#file-process_pom3c-csv) | [process_pom3d.csv](#file-process_pom3d-csv) | [process_xomo_flight.csv](#file-process_xomo_flight-csv) | [process_xomo_ground.csv](#file-process_xomo_ground-csv) | [process_xomo_osp.csv](#file-process_xomo_osp-csv) | [process_xomo_osp2.csv](#file-process_xomo_osp2-csv) | [rl_A2C_Acrobot.csv](#file-rl_a2c_acrobot-csv) | [rl_A2C_CartPole.csv](#file-rl_a2c_cartpole-csv) | [sales_data_Marketing_Analytics.csv](#file-sales_data_marketing_analytics-csv) | [sales_data_accessories.csv](#file-sales_data_accessories-csv) | [sales_data_dress-up.csv](#file-sales_data_dress-up-csv) | [sales_data_socks.csv](#file-sales_data_socks-csv) | [sales_data_wallpaper.csv](#file-sales_data_wallpaper-csv) | [systems_7z.csv](#file-systems_7z-csv) | [systems_BDBC.csv](#file-systems_bdbc-csv) | [systems_HSQLDB.csv](#file-systems_hsqldb-csv) | [systems_LLVM.csv](#file-systems_llvm-csv) | [systems_PostgreSQL.csv](#file-systems_postgresql-csv) | [systems_dconvert.csv](#file-systems_dconvert-csv) | [systems_deeparch.csv](#file-systems_deeparch-csv) | [systems_exastencils.csv](#file-systems_exastencils-csv) | [systems_javagc.csv](#file-systems_javagc-csv) | [systems_redis.csv](#file-systems_redis-csv) | [systems_storm.csv](#file-systems_storm-csv) | [systems_x264.csv](#file-systems_x264-csv) | [test_dataset120.csv](#file-test_dataset120-csv) | [test_dataset600.csv](#file-test_dataset600-csv)

## SEE ALSO

    konfig    http://tiny.cc/konfig   shared Makefile, dotfiles
    regress   http://tiny.cc/regress  regression datasets
    klassif   http://tiny.cc/klassif  classification datasets
    luamine   http://tiny.cc/luamine  code that reads these files

## LICENSE

    MIT. https://choosealicense.com/licenses/mit/

## AUTHOR

    Tim Menzies <timm@ieee.org>
