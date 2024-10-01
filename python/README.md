
# Fake Transaction Data Generator

**Overview:**

This project generates synthetic data using the Faker library in Python.  The generated dataset simulates transaction details for CyberBank a fictional financial institution, including customer information, transaction types, amounts, and channels.
## Features

- Generates upto 50,000 fake transactions.
- Each transation record contains:
    - Transaction Date  
    - Customer Name
    - Card Number (random credit card) 
    - Zip Code (customer's zip code)
    - Transaction Amount (random amount between 100 and 10,000)
    - Transaction Type (Debit Card, Online Transfer, ATM Withdrawal)
    - Transaction Channel (Branch, Mobile App, ATM, Website)


## Requirements

- Python 3.x
- The following Python libraries must be installed:
    - pandas
    - numpy
    - faker
    - random

To install the required libraries, you can run:

```python

pip install pandas numpy faker
```



## Usage

To generate fake data, run the jupyter notebook called FakeTransactions.ipynb The script will automatically save the dataset in your working directory.

The fake data will contain 50,000 fake records.





## Authors

- [@RProDigest](https://x.com/rprodigest)
- [@RProDigest](https://github.com/RProDigest)


## Badges

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)
[![AGPL License](https://img.shields.io/badge/license-AGPL-blue.svg)](http://www.gnu.org/licenses/agpl-3.0)

