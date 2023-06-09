# Create a data frame that looks like this:

#Months old        Size Weight Breed
#Flipper         53      medium     21   dog
#Bromley         19       small      8   dog
#Nox             34      medium      4   cat
#Orion           41       large      6   cat
#Dagger          84       small      7   dog
#Zizi           140 extra small      2   cat
#Carrie         109       large     36   dog

# Can you think of a way to invert the values for breed?
  
# Hint: if you haven't set the stringsAsFactors argument to FALSE, 
# all your character variables will be recorded as factors. 
# Edit the levels of the Breed variable to complete the task.

library(here)

# You can access a specific variable in a data frame like you would in a matrix.

breed_df <- read_csv(here("data", "breed-dataset.csv"))
breed_df

colnames(breed_df)

# rownames(breed_df)

# breed_df <- t(breed_df)
# breed_df


head(breed_df)

str(breed_df)

summary(breed_df)

breed_df$Months

breed_df["Months"]

