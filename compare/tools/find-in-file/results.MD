| Command | Mean [ms] | Min [ms] | Max [ms] | Relative |
|:---|---:|---:|---:|---:|
| `find /etc -type f -exec grep password {} \;` | 673.1 ± 5.8 | 659.6 | 691.2 | 45.71 ± 2.88 |
| `rg -uuu password /etc` | 14.7 ± 0.9 | 12.7 | 17.2 | 1.00 |
