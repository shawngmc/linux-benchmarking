| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `find /etc -type f -exec grep password {} \;` | 216.8 ± 2.2 | 207.0 | 221.8 | 43.26 ± 6.33 |
| `rg -uuu password /etc` | 5.0 ± 0.7 | 3.6 | 7.7 | 1.00 |
