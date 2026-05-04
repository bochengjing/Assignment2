# Assignment #2 Repository

This repository includes the simulated data for Assignment #2. Fork this repository and add your analysis as described in the canvas assignment.

The csv file for `cohort` in the `raw-data` folder includes 5,000 observations with variables `smoke`, `female`, `age`, `cardiac`, and `cost`.


I created a Table 1 using the "tableone" library. A logistic regression model was used to predict cardiac events using smoking status, sex, age, and healthcare cost. Model performance was evaluated using a ROC curve and AUC value

---

## Summary of Findings

In this 5000 patients with mean[SD] age 44.96[15.69], 57.3% female, 12.9% smoking, a mean cost[SD] 9398.06 [447.60], 5.5% had a cadiac event. Smoking, age, and cost were significantly associated with cardiac events, while sex was not. Higher healthcare cost was associated with increased odds of cardiac events. Interestingly, smoking and older age were associated with lower odds of cardiac events.

---

##

All analyses are coded and can be reproduced using the `analysis.R` script.

##
I did not use generative AI technology (e.g., ChatGPT) to complete any portion of the work.

Adding a test change. 