file <- "household_power_consumption.txt";
datum <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".");
data_interval <- datum[datum$Date %in% c("1/2/2007","2/2/2007") ,];
power <- as.numeric(data_interval$Global_active_power);
png("plot1.png", width=480, height=480);
hist(power, col="red", main="Global active power", xlab="Global active power - kw");
dev.off();