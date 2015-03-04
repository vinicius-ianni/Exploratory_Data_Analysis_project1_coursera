file <- "household_power_consumption.txt";
datum <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".");
data_interval <- datum[datum$Date %in% c("1/2/2007","2/2/2007") ,];
date_and_time <- strptime(paste(data_interval$Date, data_interval$Time, sep=" "), "%d/%m/%Y %H:%M:%S");
power <- as.numeric(data_interval$Global_active_power);
png("plot2.png", width=480, height=480);
plot(date_and_time, power, type="l", xlab="", ylab="Global active power - kw");
dev.off()