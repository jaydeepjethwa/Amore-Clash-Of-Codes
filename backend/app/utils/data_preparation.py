import pandas as pd


def generateProfile(data: dict, df: pd.DataFrame):
    profile = f"""{data['About']}. I am looking for {data['Type']}. When I am free, I do {data['Creativity']}. I like {data['Sports']} in sports. 
                When I am at home, I do {data['StayingIn']}. My goto outdoor activities are {data['GoingOut']}. {data['Travelling']} 
                are my travelling essentials. I groove on these music genres {data['Music']}. My Food and Beverages preferences include
                {data['FoodDrinks']}"""

    user_dict = {
        "user_id": [data["UserId"]],
        "profile": [profile]
    }
    df = pd.concat([df, pd.DataFrame(user_dict)], ignore_index=True)

    return df


def preprocessing(user_data: dict, other_users: dict):
    user_df = pd.DataFrame(columns=["user_id", "profile"])
    user_df = generateProfile(user_data, user_df)

    others_df = pd.DataFrame(columns=["user_id", "profile"])
    for user in other_users:
        others_df = generateProfile(user, others_df)

    return user_df.iloc[0, 1], others_df
