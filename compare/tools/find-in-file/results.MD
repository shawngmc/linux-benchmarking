| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `find /etc -type f -exec grep password {} \;` | 217.5 ± 2.6 | 202.7 | 223.1 | 43.25 ± 6.38 |
| `rg -uuu password /etc` | 5.0 ± 0.7 | 3.6 | 7.8 | 1.00 |
