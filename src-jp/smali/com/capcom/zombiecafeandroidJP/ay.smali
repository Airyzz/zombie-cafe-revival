.class final enum Lcom/capcom/zombiecafeandroidJP/ay;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/capcom/zombiecafeandroidJP/ay;

.field public static final enum b:Lcom/capcom/zombiecafeandroidJP/ay;

.field private static final synthetic c:[Lcom/capcom/zombiecafeandroidJP/ay;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/capcom/zombiecafeandroidJP/ay;

    const-string v1, "MANAGED"

    invoke-direct {v0, v1, v2}, Lcom/capcom/zombiecafeandroidJP/ay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/ay;->a:Lcom/capcom/zombiecafeandroidJP/ay;

    new-instance v0, Lcom/capcom/zombiecafeandroidJP/ay;

    const-string v1, "UNMANAGED"

    invoke-direct {v0, v1, v3}, Lcom/capcom/zombiecafeandroidJP/ay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/ay;->b:Lcom/capcom/zombiecafeandroidJP/ay;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/capcom/zombiecafeandroidJP/ay;

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/ay;->a:Lcom/capcom/zombiecafeandroidJP/ay;

    aput-object v1, v0, v2

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/ay;->b:Lcom/capcom/zombiecafeandroidJP/ay;

    aput-object v1, v0, v3

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/ay;->c:[Lcom/capcom/zombiecafeandroidJP/ay;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/capcom/zombiecafeandroidJP/ay;
    .locals 1

    const-class v0, Lcom/capcom/zombiecafeandroidJP/ay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/capcom/zombiecafeandroidJP/ay;

    return-object v0
.end method

.method public static values()[Lcom/capcom/zombiecafeandroidJP/ay;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ay;->c:[Lcom/capcom/zombiecafeandroidJP/ay;

    array-length v1, v0

    new-array v2, v1, [Lcom/capcom/zombiecafeandroidJP/ay;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
