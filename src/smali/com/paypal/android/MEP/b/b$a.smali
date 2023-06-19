.class public final enum Lcom/paypal/android/MEP/b/b$a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/paypal/android/MEP/b/b$a;

.field public static final enum b:Lcom/paypal/android/MEP/b/b$a;

.field public static final enum c:Lcom/paypal/android/MEP/b/b$a;

.field private static final synthetic d:[Lcom/paypal/android/MEP/b/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/paypal/android/MEP/b/b$a;

    const-string v1, "STATE_NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/MEP/b/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/MEP/b/b$a;->a:Lcom/paypal/android/MEP/b/b$a;

    new-instance v0, Lcom/paypal/android/MEP/b/b$a;

    const-string v1, "STATE_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/paypal/android/MEP/b/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/MEP/b/b$a;->b:Lcom/paypal/android/MEP/b/b$a;

    new-instance v0, Lcom/paypal/android/MEP/b/b$a;

    const-string v1, "STATE_PIN_SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/paypal/android/MEP/b/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/MEP/b/b$a;->c:Lcom/paypal/android/MEP/b/b$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/paypal/android/MEP/b/b$a;

    sget-object v1, Lcom/paypal/android/MEP/b/b$a;->a:Lcom/paypal/android/MEP/b/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/paypal/android/MEP/b/b$a;->b:Lcom/paypal/android/MEP/b/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/paypal/android/MEP/b/b$a;->c:Lcom/paypal/android/MEP/b/b$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/paypal/android/MEP/b/b$a;->d:[Lcom/paypal/android/MEP/b/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/paypal/android/MEP/b/b$a;
    .locals 1

    const-class v0, Lcom/paypal/android/MEP/b/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/b/b$a;

    return-object v0
.end method

.method public static values()[Lcom/paypal/android/MEP/b/b$a;
    .locals 1

    sget-object v0, Lcom/paypal/android/MEP/b/b$a;->d:[Lcom/paypal/android/MEP/b/b$a;

    invoke-virtual {v0}, [Lcom/paypal/android/MEP/b/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/paypal/android/MEP/b/b$a;

    return-object v0
.end method
