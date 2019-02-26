require(MRIcloudT1volumetrics)
require(dplyr)
dat = readSubject("https://raw.githubusercontent.com/neuroconductor/kirby21.mricloud/master/inst/visit_1/127/kirby_3_1_ax_283Labels_M2_corrected_stats.txt")
dat = subject2df(dat)
dat$rawid = NULL 
head(dat, 5)
dat  = filter(dat, type == 1, level == 1)
sum(dat$volume)
