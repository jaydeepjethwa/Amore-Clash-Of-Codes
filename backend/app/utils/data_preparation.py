import pandas as pd
from nltk.corpus import stopwords
import re

cachedStopWords = stopwords.words("english")


def generateProfile(data: dict, df: pd.DataFrame):
    profile = f"""{data['About']}. I am looking for {data['Type']}. When I am free, I do {data['Creativity']}. I like {data['Sports']} in sports. 
                When I am at home, I do {data['StayingIn']}. My goto outdoor activities are {data['GoingOut']}. {data['Travelling']} 
                are my travelling essentials. I groove on these music genres {data['Music']}. My Food and Beverages preferences include
                {data['FoodDrinks']}"""

    pattern = re.compile(r'\b(' + r'|'.join(cachedStopWords) + r')\b\s*')
    profile = pattern.sub('', profile)

    user_dict = {
        "user_id": [data["UserId"]],
        "profile": [profile],
        "start_time": [pd.to_datetime(data["StartTime"]) if "StartTime" in data else None]
    }
    df = pd.concat([df, pd.DataFrame(user_dict)], ignore_index=True)

    return df


def preprocessing(user_data: dict, other_users: dict):
    user_df = pd.DataFrame(columns=["user_id", "profile", "start_time"])
    user_df = generateProfile(user_data, user_df)

    others_df = pd.DataFrame(columns=["user_id", "profile", "start_time"])
    for user in other_users:
        others_df = generateProfile(user, others_df)

    return user_df.iloc[0, 1], others_df
