| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `find /etc -type f -exec grep password {} \;` | 217.6 ± 2.3 | 211.9 | 222.7 | 43.26 ± 6.90 |
| `rg -uuu password /etc` | 5.0 ± 0.8 | 3.6 | 8.1 | 1.00 |
