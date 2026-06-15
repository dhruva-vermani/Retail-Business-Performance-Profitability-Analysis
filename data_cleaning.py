import pandas as pd
#check import
df = pd.read_csv("retail_data_raw.csv")
print(df.head())
print(df.shape)
#check data types
print(df.dtypes)
#check missing values
print(df.isnull().sum())
#get summary statistics
print(df.describe())
#check duplicates
print("Duplicate Rows:", df.duplicated().sum()) #none found
#Fill missing inventory days values with median because this column often has outliers
df['inventory_days'] = df['inventory_days'].fillna(
    df['inventory_days'].median()
)
#Fill missing discount pct values with median
df['discount_pct'] = df['discount_pct'].fillna(
    df['discount_pct'].median()
)
#Recalculate profit margin percentage:
mask = df['profit_margin_pct'].isnull()

df.loc[mask, 'profit_margin_pct'] = (
    df.loc[mask, 'profit'] /
    df.loc[mask, 'revenue']
) * 100
#Verify whether missing values are handled
print(df.isnull().sum())
#check for negative values
print(df[df['revenue'] < 0].shape)
print(df[df['profit'] < 0].shape)
#check for outliers
print(
    df[['sale_price',
        'cost_price',
        'units_sold',
        'inventory_days',
        'discount_pct',
        'revenue',
        'profit']].describe()
)
#create new columns
df["inventory_status"] = df["inventory_days"].apply(
    lambda x: "Slow Moving" if x > 60 else "Fast Moving"
)
df["profit_status"] = df["profit"].apply(
    lambda x: "Loss" if x < 0 else "Profit"
)
#export the cleaned dataset
df.to_csv("retail_data_clean.csv", index=False)

print("Dataset cleaned and exported successfully!")
corr = df['inventory_days'].corr(df['profit'])

print(corr)