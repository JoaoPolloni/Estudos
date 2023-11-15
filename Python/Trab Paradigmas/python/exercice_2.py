import pandas as pd

data = pd.read_csv('./archive/Pokemon.csv')

# Primeiro Gráfico
data_group = data.groupby("Type 1")[["HP","Attack"]].mean()
data_final = data_group.sort_values(by=["Type 1"], ascending=False).reset_index().rename(columns={"Type 1": "Type Name", "HP": "Average HP"})
data_final.plot(kind="bar", x="Type Name", y="Average HP",figsize=(40, 10), rot=0, fontsize=30, title="Average Attack of Pokemon Type")

# Segundo Gráfico
data_filter = data[data["Generation"]==1]["Type 1"].value_counts()
data_filter.plot(kind="pie", title="Pokemons Types in Generation 1")

# Terceiro Gráfico
data_lengendary = data[data["Legendary"] == True]["Generation"].value_counts().reset_index().sort_values(by=["Generation"])
print(data_lengendary)
data_lengendary.plot(kind="barh", x="Generation",  title="Quantity Legendary Pokemons of Generation")