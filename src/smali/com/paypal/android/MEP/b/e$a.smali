.class public final enum Lcom/paypal/android/MEP/b/e$a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/paypal/android/MEP/b/e$a;

.field public static final enum b:Lcom/paypal/android/MEP/b/e$a;

.field public static final enum c:Lcom/paypal/android/MEP/b/e$a;

.field public static final enum d:Lcom/paypal/android/MEP/b/e$a;

.field private static final synthetic e:[Lcom/paypal/android/MEP/b/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/paypal/android/MEP/b/e$a;

    const-string v1, "STATE_NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/MEP/b/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/MEP/b/e$a;->a:Lcom/paypal/android/MEP/b/e$a;

    new-instance v0, Lcom/paypal/android/MEP/b/e$a;

    const-string v1, "STATE_LOGGING_IN"

    invoke-direct {v0, v1, v3}, Lcom/paypal/android/MEP/b/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/MEP/b/e$a;->b:Lcom/paypal/android/MEP/b/e$a;

    new-instance v0, Lcom/paypal/android/MEP/b/e$a;

    const-string v1, "STATE_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/paypal/android/MEP/b/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/MEP/b/e$a;->c:Lcom/paypal/android/MEP/b/e$a;

    new-instance v0, Lcom/paypal/android/MEP/b/e$a;

    const-string v1, "STATE_LOGGING_OUT"

    invoke-direct {v0, v1, v5}, Lcom/paypal/android/MEP/b/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/MEP/b/e$a;->d:Lcom/paypal/android/MEP/b/e$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/paypal/android/MEP/b/e$a;

    sget-object v1, Lcom/paypal/android/MEP/b/e$a;->a:Lcom/paypal/android/MEP/b/e$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/paypal/android/MEP/b/e$a;->b:Lcom/paypal/android/MEP/b/e$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/paypal/android/MEP/b/e$a;->c:Lcom/paypal/android/MEP/b/e$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/paypal/android/MEP/b/e$a;->d:Lcom/paypal/android/MEP/b/e$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/paypal/android/MEP/b/e$a;->e:[Lcom/paypal/android/MEP/b/e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/paypal/android/MEP/b/e$a;
    .locals 1

    const-class v0, Lcom/paypal/android/MEP/b/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/b/e$a;

    return-object v0
.end method

.method public static values()[Lcom/paypal/android/MEP/b/e$a;
    .locals 1

    sget-object v0, Lcom/paypal/android/MEP/b/e$a;->e:[Lcom/paypal/android/MEP/b/e$a;

    invoke-virtual {v0}, [Lcom/paypal/android/MEP/b/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/paypal/android/MEP/b/e$a;

    return-object v0
.end method
