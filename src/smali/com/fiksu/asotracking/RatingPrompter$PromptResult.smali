.class final enum Lcom/fiksu/asotracking/RatingPrompter$PromptResult;
.super Ljava/lang/Enum;


# static fields
.field public static final enum USER_DID_NOT_RATE:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

.field public static final enum USER_POSTPONED_RATING:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

.field public static final enum USER_RATED:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

.field private static final synthetic a:[Lcom/fiksu/asotracking/RatingPrompter$PromptResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    const-string v1, "USER_RATED"

    invoke-direct {v0, v1, v2}, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->USER_RATED:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    new-instance v0, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    const-string v1, "USER_DID_NOT_RATE"

    invoke-direct {v0, v1, v3}, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->USER_DID_NOT_RATE:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    new-instance v0, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    const-string v1, "USER_POSTPONED_RATING"

    invoke-direct {v0, v1, v4}, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->USER_POSTPONED_RATING:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    sget-object v1, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->USER_RATED:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->USER_DID_NOT_RATE:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->USER_POSTPONED_RATING:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->a:[Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fiksu/asotracking/RatingPrompter$PromptResult;
    .locals 1

    const-class v0, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    return-object v0
.end method

.method public static values()[Lcom/fiksu/asotracking/RatingPrompter$PromptResult;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->a:[Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    array-length v1, v0

    new-array v2, v1, [Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
