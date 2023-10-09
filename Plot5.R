NEI <- readRDS("C:/Users/mdibaba/Downloads/The DS Toolbox/EPA National Emissions Inventory/exdata_data_NEI_data/summarySCC_PM25.rds")
SCC <- readRDS("C:/Users/mdibaba/Downloads/The DS Toolbox/EPA National Emissions Inventory/exdata_data_NEI_data/Source_Classification_Code.rds")


library(ggplot2)
graph <- NEI[NEI$fips == "24510" & NEI$type == "ON-ROAD",]
graph <- aggregate(Emissions ~ year, graph, sum) 


## plot5.png

png(filename = "C:/Users/mdibaba/Downloads/The DS Toolbox/EPA National Emissions Inventory/exdata_data_NEI_data/plot5.png", width = 480, height = 480, units = "px", bg = "white")
g <- ggplot(graph, aes(factor(year), Emissions))
g <- g + geom_bar(stat = "identity") + xlab("Year") + ylab("Total Emissions from Motor Sources in Baltimore City") + ggtitle("Variation in Motor Source Related Emissions in Baltimore City over the years")
print(g)
dev.off()
