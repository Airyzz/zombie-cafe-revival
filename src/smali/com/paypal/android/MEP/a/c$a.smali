.class public final enum Lcom/paypal/android/MEP/a/c$a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/paypal/android/MEP/a/c$a;

.field public static final enum b:Lcom/paypal/android/MEP/a/c$a;

.field public static final enum c:Lcom/paypal/android/MEP/a/c$a;

.field private static final synthetic d:[Lcom/paypal/android/MEP/a/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/paypal/android/MEP/a/c$a;

    const-string v1, "PAYMENT_DETAILS_FUNDING"

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/MEP/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/MEP/a/c$a;->a:Lcom/paypal/android/MEP/a/c$a;

    new-instance v0, Lcom/paypal/android/MEP/a/c$a;

    const-string v1, "PAYMENT_DETAILS_FEES"

    invoke-direct {v0, v1, v3}, Lcom/paypal/android/MEP/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/MEP/a/c$a;->b:Lcom/paypal/android/MEP/a/c$a;

    new-instance v0, Lcom/paypal/android/MEP/a/c$a;

    const-string v1, "PAYMENT_DETAILS_SHIPPING"

    invoke-direct {v0, v1, v4}, Lcom/paypal/android/MEP/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/MEP/a/c$a;->c:Lcom/paypal/android/MEP/a/c$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/paypal/android/MEP/a/c$a;

    sget-object v1, Lcom/paypal/android/MEP/a/c$a;->a:Lcom/paypal/android/MEP/a/c$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/paypal/android/MEP/a/c$a;->b:Lcom/paypal/android/MEP/a/c$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/paypal/android/MEP/a/c$a;->c:Lcom/paypal/android/MEP/a/c$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/paypal/android/MEP/a/c$a;->d:[Lcom/paypal/android/MEP/a/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/paypal/android/MEP/a/c$a;
    .locals 1

    const-class v0, Lcom/paypal/android/MEP/a/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/a/c$a;

    return-object v0
.end method

.method public static values()[Lcom/paypal/android/MEP/a/c$a;
    .locals 1

    sget-object v0, Lcom/paypal/android/MEP/a/c$a;->d:[Lcom/paypal/android/MEP/a/c$a;

    invoke-virtual {v0}, [Lcom/paypal/android/MEP/a/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/paypal/android/MEP/a/c$a;

    return-object v0
.end method
