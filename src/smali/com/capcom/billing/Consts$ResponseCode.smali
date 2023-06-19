.class public final enum Lcom/capcom/billing/Consts$ResponseCode;
.super Ljava/lang/Enum;


# static fields
.field public static final enum RESULT_BILLING_UNAVAILABLE:Lcom/capcom/billing/Consts$ResponseCode;

.field public static final enum RESULT_DEVELOPER_ERROR:Lcom/capcom/billing/Consts$ResponseCode;

.field public static final enum RESULT_ERROR:Lcom/capcom/billing/Consts$ResponseCode;

.field public static final enum RESULT_ITEM_UNAVAILABLE:Lcom/capcom/billing/Consts$ResponseCode;

.field public static final enum RESULT_OK:Lcom/capcom/billing/Consts$ResponseCode;

.field public static final enum RESULT_SERVICE_UNAVAILABLE:Lcom/capcom/billing/Consts$ResponseCode;

.field public static final enum RESULT_USER_CANCELED:Lcom/capcom/billing/Consts$ResponseCode;

.field private static final synthetic a:[Lcom/capcom/billing/Consts$ResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/capcom/billing/Consts$ResponseCode;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v3}, Lcom/capcom/billing/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/capcom/billing/Consts$ResponseCode;->RESULT_OK:Lcom/capcom/billing/Consts$ResponseCode;

    new-instance v0, Lcom/capcom/billing/Consts$ResponseCode;

    const-string v1, "RESULT_USER_CANCELED"

    invoke-direct {v0, v1, v4}, Lcom/capcom/billing/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/capcom/billing/Consts$ResponseCode;->RESULT_USER_CANCELED:Lcom/capcom/billing/Consts$ResponseCode;

    new-instance v0, Lcom/capcom/billing/Consts$ResponseCode;

    const-string v1, "RESULT_SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lcom/capcom/billing/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/capcom/billing/Consts$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/capcom/billing/Consts$ResponseCode;

    new-instance v0, Lcom/capcom/billing/Consts$ResponseCode;

    const-string v1, "RESULT_BILLING_UNAVAILABLE"

    invoke-direct {v0, v1, v6}, Lcom/capcom/billing/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/capcom/billing/Consts$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/capcom/billing/Consts$ResponseCode;

    new-instance v0, Lcom/capcom/billing/Consts$ResponseCode;

    const-string v1, "RESULT_ITEM_UNAVAILABLE"

    invoke-direct {v0, v1, v7}, Lcom/capcom/billing/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/capcom/billing/Consts$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/capcom/billing/Consts$ResponseCode;

    new-instance v0, Lcom/capcom/billing/Consts$ResponseCode;

    const-string v1, "RESULT_DEVELOPER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/capcom/billing/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/capcom/billing/Consts$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/capcom/billing/Consts$ResponseCode;

    new-instance v0, Lcom/capcom/billing/Consts$ResponseCode;

    const-string v1, "RESULT_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/capcom/billing/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/capcom/billing/Consts$ResponseCode;->RESULT_ERROR:Lcom/capcom/billing/Consts$ResponseCode;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/capcom/billing/Consts$ResponseCode;

    sget-object v1, Lcom/capcom/billing/Consts$ResponseCode;->RESULT_OK:Lcom/capcom/billing/Consts$ResponseCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/capcom/billing/Consts$ResponseCode;->RESULT_USER_CANCELED:Lcom/capcom/billing/Consts$ResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/capcom/billing/Consts$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/capcom/billing/Consts$ResponseCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/capcom/billing/Consts$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/capcom/billing/Consts$ResponseCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/capcom/billing/Consts$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/capcom/billing/Consts$ResponseCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/capcom/billing/Consts$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/capcom/billing/Consts$ResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/capcom/billing/Consts$ResponseCode;->RESULT_ERROR:Lcom/capcom/billing/Consts$ResponseCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/capcom/billing/Consts$ResponseCode;->a:[Lcom/capcom/billing/Consts$ResponseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/capcom/billing/Consts$ResponseCode;
    .locals 2

    invoke-static {}, Lcom/capcom/billing/Consts$ResponseCode;->values()[Lcom/capcom/billing/Consts$ResponseCode;

    move-result-object v0

    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/capcom/billing/Consts$ResponseCode;->RESULT_ERROR:Lcom/capcom/billing/Consts$ResponseCode;

    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/capcom/billing/Consts$ResponseCode;
    .locals 1

    const-class v0, Lcom/capcom/billing/Consts$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/capcom/billing/Consts$ResponseCode;

    return-object v0
.end method

.method public static values()[Lcom/capcom/billing/Consts$ResponseCode;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/capcom/billing/Consts$ResponseCode;->a:[Lcom/capcom/billing/Consts$ResponseCode;

    array-length v1, v0

    new-array v2, v1, [Lcom/capcom/billing/Consts$ResponseCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
