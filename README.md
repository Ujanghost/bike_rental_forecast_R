# Bike Rental Forcasting Using R

# Bike Rentals Forecasting with Prophet

## Overview
This R script utilizes the `prophet` package to forecast bike rentals based on historical data. The script includes data import, visualization, creating a data frame, forecasting using Prophet, making predictions, and model validation using a simple linear regression. Additionally, there's a comment about exploring other models for validation like sarima, halter, and winters_expo.

## Program Flow

### 1. Libraries
- The necessary libraries (`prophet`, `lubridate`, `ggplot2`) are loaded to the R environment.

### 2. Importing Data
- The script prompts the user to choose a CSV file, reads the data, and converts the date column to the `Date` format using `lubridate`.

### 3. Plotting
- A quick plot is generated to visualize the bike rental data over time.

### 4. Creating a Data Frame
- A data frame (`df`) is created using relevant columns from the imported dataset, including the date, rental count, temperature (`temp`), and humidity (`hum`).

### 5. Forecasting using Prophet
- A Prophet model (`m`) is created and trained using the data frame (`df`). Country holidays, temperature, and humidity are added as regressors.

### 6. Prediction
- Future dates are generated, and random values for temperature are added to the dataset. The model is used to predict the bike rental counts for these future dates.

### 7. Plotting Forecast
- The script plots the original data and the forecasted values using the Prophet model.

### 8. Additional Plots
- Additional plots, including a dynamic plot and component plots, are generated to further analyze the forecast.

### 9. Model Validation
- A simple linear regression model is applied to validate the Prophet model. The script plots the predicted values against the actual values and prints the regression summary.

### 10. Exploration of Other Models (Comment)
- A comment suggests exploring other models such as sarima, halter, and winters_expo for additional validation.

## Expected Outcomes
- The script aims to provide a comprehensive analysis of bike rental forecasting using the `prophet` package. Users can expect visualizations of historical data, a forecast of future bike rental counts, and a basic validation using a linear regression model. The comment at the end encourages users to explore alternative models for further validation.

