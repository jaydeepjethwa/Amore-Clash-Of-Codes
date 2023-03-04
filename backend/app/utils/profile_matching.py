from sentence_transformers import SentenceTransformer
from sklearn.metrics.pairwise import cosine_similarity
import pandas as pd

model = SentenceTransformer('bert-base-nli-mean-tokens')


# function to calculate profile match
def setMatchingScore(userA: str, userB: pd.DataFrame):
    userA_embeddings = model.encode([userA])
    userB_embeddings = model.encode([userB["profile"]])

    score = cosine_similarity(userA_embeddings, userB_embeddings)[0].item()
    userB["score"] = score * 100

    return userB


def findProfileMatch(user_profile: str, others_df: pd.DataFrame):
    others_df["score"] = 0

    others_df = others_df.apply(
        lambda other_user: setMatchingScore(user_profile, other_user), axis=1)
    others_df.sort_values(by=["score"], ascending=False, inplace=True)

    others_df = others_df[others_df["score"] >= 85]
    others_df.drop(['profile'], axis=1, inplace=True)

    return others_df
