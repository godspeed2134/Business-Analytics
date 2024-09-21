#######READ AND WRITE DATA########3
#Read in data----
jan17i <- read.csv('jan17Items.csv'
                       , stringsAsFactors = F
                       , header = T)
jan17w <- read.csv('jan17Weather.csv'
                   , stringsAsFactors = F
                   , header = T
                   , sep = '\t')#\t is used to seperate columns if they are not comma seperated

#Write data
write.csv(jan17w, 'j17w.csv')
j17w2 <- read.csv('j17w.csv'
                  , stringsAsFactors = F
                  , header = T
                  , sep = ',')
