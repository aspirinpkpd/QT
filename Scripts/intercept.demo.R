fit.moxi <- lme(DQTF ~ TAFD + TRTG + CONC + DBQTF -1, data = moxi, 
                na.action = na.exclude,
                random = ~ 1 + CONC|SUBJID)

fit.moxi.int <- lme(DQTF ~ TAFD + TRTG + CONC + DBQTF, data = moxi, 
                na.action = na.exclude,
                random = ~ 1 + CONC|SUBJID)


names(fit.moxi)
fit.moxi$coefficients

summary(fit.moxi)

summary(fit.moxi.int)
levels(as.factor(moxi$TRTG))
