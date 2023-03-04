from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from .database import Database


app = FastAPI()


app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


@app.on_event("startup")
async def startup():
    await Database.establish_db_connection()


@app.on_event("shutdown")
async def shutdown():
    await Database.close_db_connection()


@app.get("/")
async def main():
    return "Welcome to Amore"


# app.include_router(auth_router, tags=["Authentication"], prefix="/auth")
