**# Credit-_Card_Fraud_Detection**

Nowadays Credit card usage has drastically increased across the world, now people believe in going cashless and are completely dependent on online transactions. The credit card has made the digital transaction easier and more accessible. 
‘Fraud’ in credit card transactions is unauthorized and unwanted usage of an account by someone other than the owner of that account. The PwC global economic crime survey of 2017 suggests that approximately 48% of organizations experienced economic crime. Therefore, there’s positively a necessity to unravel the matter of credit card fraud detection. Fraud Detection is the process of monitoring the transaction behavior of a cardholder to detect whether an incoming transaction is authentic and authorized or not otherwise it will be detected as illicit. We will use machine learning algorithms like the Logistic Regression K- Nearest Neighbors (KNN) algorithm. For carrying out credit card fraud detection, we will make use of the Card Transactions dataset that contains a mix of fraud as well as non-fraudulent transactions.

**PROBLEM STATEMENT:**

The aim of this R project is to build a classifier that can detect credit card fraudulent transactions.
We will use machine learning algorithms that will be able to discern fraudulent transactions.
The scenario involves the ongoing challenge faced by financial institutions and credit card companies to identify and prevent fraudulent transactions. With the increasing sophistication of fraud techniques, there is a need for effective and accurate fraud detection methods to minimize financial losses and protect both financial institutions and customers.

**SCOPE OF THE PROPOSED WORK :**

 In this proposed project we designed a protocol or a model to detect fraud activity in credit card transactions. This system can provide most of the essential features required to detect fraudulent and legitimate transactions. As technology changes, it becomes difficult to track the Modeling and pattern of fraudulent transactions. With the rise of machine learning, artificial intelligence, and other relevant fields of information technology, it becomes feasible to automate this process and to save some of the intensive amounts of labor that is put into detecting credit card fraud.

 ### Dataset Features:
- **Time:** The seconds elapsed between the transaction and the first transaction in the dataset.
- **V1 - V28:** The result of a PCA transformation applied to anonymize the data.
- **Amount:** The transaction amount.
- **Class:** The target variable, where 1 represents a fraudulent transaction and 0 represents a legitimate transaction.

## Key Techniques
- **Data Preprocessing:** 
  - Handled missing values, outliers, and normalized transaction amounts.
  - Balanced the dataset using techniques like undersampling and oversampling (SMOTE).
  
- **Feature Engineering:**
  - Feature scaling using MinMaxScaler.
  - Feature selection to reduce noise and improve model performance.
  
- **Modeling:**
  - Built and compared multiple models, including Logistic Regression, Decision Trees, Random Forests, Gradient Boosting, and Neural Networks.
  - Optimized the best-performing models using hyperparameter tuning.

## Results
- The Random Forest model performed the best, achieving:
  - **Accuracy:** 95%
  - **Recall:** 90%
  - **Precision:** 92%
  - **F1-Score:** 91%

The model was integrated into a real-time fraud detection system that significantly reduced false positives and improved fraud detection accuracy by 30%.
