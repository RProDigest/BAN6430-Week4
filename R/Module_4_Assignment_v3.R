################################################################################
# Name: Mubanga Nsofu                                                          #
# Institution: Nexford University (NXU)                                        #
# Date : 29th September 2024                                                   #
# Course: BAN 6430 (Data Modeling & Mining)                                    #                  
# Program: Master of Science Data Analytics (MSDA)                             #
# Lecturer: Professor Rajan Thapaliya                                          #
# Assignment : 4 (Anomaly Detection Using SOM)                                           #
################################################################################

# 1.0 INSTALL NECESSARY PACKAGES AND SET SEED----

if(!require(pacman))
  install.packages("pacman") # Check if package manager is installed 

# Next line manages the installation and loading of required R packages 


pacman::p_load(tidyverse, # Meta package for the data analytics life cycle
               magrittr, # advanced pipes
               janitor, # package to help clean a dataset
               caret, # Machine learning framework
               kohonen # package for Self Organising Maps (SOM)
)

set.seed(149050)

# 2.0 LOAD, EXPLORE AND PREPARE THE DATASET----

dummy_transactions <-  read_csv("dummy_transaction_data.csv")


dummy_transactions %>% glimpse()


# Let us clean the dataset names

dummy_transactions %>% 
  janitor::clean_names() -> dummy_transactions 


# Let us convert char variables to factors

dummy_transactions$transaction_type %<>% as.factor() # Using advanced pipe %<>% 
dummy_transactions$transaction_channel %<>% as.factor() 



dummy_transactions %>%  glimpse()


# Finally, let us prepare the data set for the SOM algorithm
# Prepare data for SOM (select the relevant numerical columns)

dummy_transactions %>% 
  select(transaction_amount, transaction_type, transaction_channel)-> som_dataset

# We use one hot encoding

df_encoded <- dummyVars(" ~ .", data = som_dataset)
df_transformed <- predict(df_encoded, newdata = som_dataset)


# Let us then convert to a matrix and normalize the transaction amount

som_data <- scale(as.matrix(df_transformed))  


# 3.0 TRAIN SOM MODEL ------------

# Define the SOM grid

som_grid <- somgrid(xdim = 100, ydim = 100, topo = "hexagonal")

# Train the SOM model
som_model <- som(som_data, grid = som_grid, rlen = 100)


# 4.0 EXTRACT CODE BOOK AND GRID COORDINATES -----------

# Extract codebook vectors (i.e., the SOM nodes)
codes_df <- as.data.frame(som_model$codes[[1]])

# Extract the grid coordinates for each SOM unit
grid_df <- as.data.frame(som_model$grid$pts)
colnames(grid_df) <- c("x", "y")

# Combine the codebook vectors with the grid coordinates
som_data <- cbind(grid_df, codes_df)

# 5.0 VIZUALIZE AND SAVE THE PLOT ----

som_data %>% 
ggplot( aes(x, y, fill = transaction_amount)) +
  geom_tile() +
  scale_fill_viridis_c(option = "H") +  # Use a color gradient for the tile fill
  labs(title = "SOM Visualization: Transaction Amount",
       x = "SOM X Dimension", y = "SOM Y Dimension", fill = "Transaction Amount") +
  theme_minimal()


# We Save the SOM plot visualization to a png file

ggsave("som.png", dpi = 960)

