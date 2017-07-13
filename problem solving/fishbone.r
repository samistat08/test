effect<-"Flight Time"
causes.gr<-c("Operator", "Environment", "Tools", "Design", 
             "Raw.Material","Measure.Tool")
causes<-vector(mode="list", length=length(causes.gr))
causes[1]<-list(c("operator #1", "operator #2", "operator #3"))
causes[2]<-list(c("height", "cleaning"))
causes[3]<-list(c("scissors", "tape"))
causes[4]<-list(c("rotor.length", "rotor.width2", "paperclip"))
causes[5]<-list(c("thickness", "marks"))
causes[6]<-list(c("calibrate", "model"))
ss.ceDiag(effect, causes.gr, causes, sub="BestMile Fish-bone")



#pareto
defect <- c(80, 27, 66, 94, 33)
names(defect) <- c("price code", "schedule date", "supplier code", "contact num.", "part num.")
paretoChart(defect, ylab = "Error frequency")
paretoChart(defect, ylab = "Error frequency", xlab = "Error causes", las=1)
paretoChart(defect, ylab = "Error frequency", col=rainbow(length(defect)))
paretoChart(defect, cumperc = seq(0, 100, by = 5), ylab2 = "BestMile Pareto")