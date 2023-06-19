.class final enum Lcom/capcom/billing/an;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/capcom/billing/an;

.field public static final enum b:Lcom/capcom/billing/an;

.field private static final synthetic c:[Lcom/capcom/billing/an;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/capcom/billing/an;

    const-string v1, "MANAGED"

    invoke-direct {v0, v1, v2}, Lcom/capcom/billing/an;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/capcom/billing/an;->a:Lcom/capcom/billing/an;

    new-instance v0, Lcom/capcom/billing/an;

    const-string v1, "UNMANAGED"

    invoke-direct {v0, v1, v3}, Lcom/capcom/billing/an;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/capcom/billing/an;->b:Lcom/capcom/billing/an;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/capcom/billing/an;

    sget-object v1, Lcom/capcom/billing/an;->a:Lcom/capcom/billing/an;

    aput-object v1, v0, v2

    sget-object v1, Lcom/capcom/billing/an;->b:Lcom/capcom/billing/an;

    aput-object v1, v0, v3

    sput-object v0, Lcom/capcom/billing/an;->c:[Lcom/capcom/billing/an;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/capcom/billing/an;
    .locals 1

    const-class v0, Lcom/capcom/billing/an;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/capcom/billing/an;

    return-object v0
.end method

.method public static values()[Lcom/capcom/billing/an;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/capcom/billing/an;->c:[Lcom/capcom/billing/an;

    array-length v1, v0

    new-array v2, v1, [Lcom/capcom/billing/an;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
