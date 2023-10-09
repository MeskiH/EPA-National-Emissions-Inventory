NEI <- readRDS("C:/Users/mdibaba/Downloads/The DS Toolbox/EPA National Emissions Inventory/exdata_data_NEI_data/summarySCC_PM25.rds")
SCC <- readRDS("C:/Users/mdibaba/Downloads/The DS Toolbox/EPA National Emissions Inventory/exdata_data_NEI_data/Source_Classification_Code.rds")

graph <- NEI[NEI$fips == "24510",]
graph <- aggregate(Emissions ~ year, graph, sum)

## plot2.png

png(filename = "C:/Users/mdibaba/Downloads/The DS Toolbox/EPA National Emissions Inventory/exdata_data_NEI_data/plot2.png", width = 480, height = 480, units = "px", bg = "white")
par(mfrow = c(1,1), mar = c(4,5,2.5,2))
barplot(height=graph$Emissions, col = 'wheat', xlab = "Year", ylab = "Total PM2.5 Emission in Baltimore City", main = "Variation in PM2.5 Emission in Baltimore City over the years")
dev.off()