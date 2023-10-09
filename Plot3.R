NEI <- readRDS("C:/Users/mdibaba/Downloads/The DS Toolbox/EPA National Emissions Inventory/exdata_data_NEI_data/summarySCC_PM25.rds")
SCC <- readRDS("C:/Users/mdibaba/Downloads/The DS Toolbox/EPA National Emissions Inventory/exdata_data_NEI_data/Source_Classification_Code.rds")


library(ggplot2)
graph <- NEI[NEI$fips == "24510",]
graph <- aggregate(Emissions ~ year + type, graph, sum) 

## plot3.png

png(filename = "C:/Users/mdibaba/Downloads/The DS Toolbox/EPA National Emissions Inventory/exdata_data_NEI_data/plot3.png", width = 600, height = 480, units = "px", bg = "white")
g <- ggplot(graph, aes(year, Emissions, col = type))
g <- g + geom_line() + xlab("Year") + ylab("Total PM2.5 Emission in Baltimore City") + ggtitle("Variation in PM2.5 Emission in Baltimore City over the years")
print(g)
dev.off()