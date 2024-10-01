
# Anomaly Detection Using Self-Organizing Maps (SOM)

**Overview:**

This project focuses on implementing an anomaly detection model using Self-Organizing Maps (SOM) in R. The dataset used in this project is a dummy transactions dataset, and the model aims to detect anomalies in transaction amounts across different transaction types and channels. The project is developed as part of the BAN 6430 (Data Modeling & Mining) course at Nexford University.
## Project Structure

1. Install necessary packages: Install and load all required R packages using the pacman package manager.

2. Load, explore, and clean the dataset: Import the dataset and clean it by converting character variables to factors and preparing it for the SOM algorithm.

3. Train the SOM model: Define a SOM grid and train the model using scaled and normalized transaction data.
4. Extract codebook and grid coordinates: Extract the codebook vectors and grid coordinates from the trained SOM model for further analysis.

5. Visualize the SOM results: Generate a visualization of the SOM using a heatmap, showing the distribution of transaction amounts across the SOM grid.

6. Save the SOM plot: Save the final SOM plot as a PNG file.
## Requirements

- R(version 4.0 or higher)
- The following R packages must be installed:
    - tidyverse
    - magrittr
    - janitor
    - caret
    - kohonen

To install the required libraries, you can run the following code:

```r

if(!require(pacman))
  install.packages("pacman") # Check if package manager is installed 

# Next line manages the installation and loading of required R packages 


pacman::p_load(tidyverse, # Meta package for the data analytics life cycle
               magrittr, # advanced pipes
               janitor, # package to help clean a dataset
               caret, # Machine learning framework
               kohonen # package for Self Organising Maps (SOM)
)

```



## Usage

- Ensure the synthetic dataset "dummy_transactio_data.csv" is in the same working directory as the script Module_4_Assignment_v3.R. 

- Preferably ensure both the script and the dataset are in your working directory.

- Run the script by selecting the entire code and hitting run by using the following key strokes:
    - CTRL+ALT+E (Windows) or Command+Option+E (MAC OS)
    




## Results

The resulting SOM plot visualizes how transaction amounts are distributed across different nodes of the SOM. Areas of higher concentration or unusual values may indicate potential anomalies in the transactions.

## Files

- Module_4_Assignment_v3.R: The main R script for anomaly detection using SOM.
- dummy_transaction_data.csv: The dataset containing synthetic transaction records.
- som.png: The saved SOM plot after running the model.
## Authors

- [@RProDigest](https://x.com/rprodigest)
- [@RProDigest](https://github.com/RProDigest)


## Badges

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)
[![AGPL License](https://img.shields.io/badge/license-AGPL-blue.svg)](http://www.gnu.org/licenses/agpl-3.0)

