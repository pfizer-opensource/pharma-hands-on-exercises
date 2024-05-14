phuse_data <- haven::read_xpt("https://github.com/phuse-org/phuse-scripts/raw/master/data/adam/cdisc/adsl.xpt")

adsl_data <- wrangle_data(phuse_data)

expected_vars <- c("TRT01AN", "TRT01A", "SEX")

test_data <- tribble(
  ~STUDYID,  ~TRT01AN,   ~TRT01A,       ~SEX,    ~SAFFL, ~USUBJID,
  "CDISCPILOT01",    1,     "Treatment A",  'Female',  "Y",   "01-701-1015", 
  "CDISCPILOT01",    1,     "Treatment A",  'Male',    "Y",   "01-701-1023",
  "CDISCPILOT01",    2,     "Treatment B",  'Female',  "Y",   "01-701-1180",
  "CDISCPILOT01",    1,     "Treatment A",  'Male',    "Y",   "01-701-1138",
  "CDISCPILOT01",    1,     "Treatment A",  'Female',  "Y",   "01-702-1145",
  "CDISCPILOT01",    2,     "Treatment B",  'Male',    "Y",   "01-702-1180",
  "CDISCPILOT01",    2,     "Treatment B",  'Female',  "Y",   "01-703-1558",
  "CDISCPILOT01",    1,     "Treatment A",  'Male',    "Y",   "01-703-1678",
)

test_small_n_cnt <- calculate_small_n_cnt(test_data)
test_Big_N_cnt <- calculate_Big_N_cnt(test_data)

aggergate_small_n_cnt <- aggregate(
  x = test_small_n_cnt$n, 
  by=list(TRT01A=test_small_n_cnt$TRT01A), 
  FUN=sum)


