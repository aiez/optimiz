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

## SEE ALSO

    konfig    http://tiny.cc/konfig   shared Makefile, dotfiles
    regress   http://tiny.cc/regress  regression datasets
    klassif   http://tiny.cc/klassif  classification datasets
    lull      http://tiny.cc/lull     code that reads these files

## LICENSE

    MIT. https://choosealicense.com/licenses/mit/

## AUTHOR

    Tim Menzies <timm@ieee.org>
