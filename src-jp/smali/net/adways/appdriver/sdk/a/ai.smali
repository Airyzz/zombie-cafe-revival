.class public final enum Lnet/adways/appdriver/sdk/a/ai;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lnet/adways/appdriver/sdk/a/ai;

.field public static final enum b:Lnet/adways/appdriver/sdk/a/ai;

.field public static final enum c:Lnet/adways/appdriver/sdk/a/ai;

.field public static final enum d:Lnet/adways/appdriver/sdk/a/ai;

.field public static final enum e:Lnet/adways/appdriver/sdk/a/ai;

.field private static final synthetic f:[Lnet/adways/appdriver/sdk/a/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lnet/adways/appdriver/sdk/a/ai;

    const-string v1, "Success"

    invoke-direct {v0, v1, v2}, Lnet/adways/appdriver/sdk/a/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/adways/appdriver/sdk/a/ai;->a:Lnet/adways/appdriver/sdk/a/ai;

    new-instance v0, Lnet/adways/appdriver/sdk/a/ai;

    const-string v1, "Failure"

    invoke-direct {v0, v1, v3}, Lnet/adways/appdriver/sdk/a/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/adways/appdriver/sdk/a/ai;->b:Lnet/adways/appdriver/sdk/a/ai;

    new-instance v0, Lnet/adways/appdriver/sdk/a/ai;

    const-string v1, "Retry"

    invoke-direct {v0, v1, v4}, Lnet/adways/appdriver/sdk/a/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/adways/appdriver/sdk/a/ai;->c:Lnet/adways/appdriver/sdk/a/ai;

    new-instance v0, Lnet/adways/appdriver/sdk/a/ai;

    const-string v1, "Redirect"

    invoke-direct {v0, v1, v5}, Lnet/adways/appdriver/sdk/a/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/adways/appdriver/sdk/a/ai;->d:Lnet/adways/appdriver/sdk/a/ai;

    new-instance v0, Lnet/adways/appdriver/sdk/a/ai;

    const-string v1, "Canceled"

    invoke-direct {v0, v1, v6}, Lnet/adways/appdriver/sdk/a/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/adways/appdriver/sdk/a/ai;->e:Lnet/adways/appdriver/sdk/a/ai;

    const/4 v0, 0x5

    new-array v0, v0, [Lnet/adways/appdriver/sdk/a/ai;

    sget-object v1, Lnet/adways/appdriver/sdk/a/ai;->a:Lnet/adways/appdriver/sdk/a/ai;

    aput-object v1, v0, v2

    sget-object v1, Lnet/adways/appdriver/sdk/a/ai;->b:Lnet/adways/appdriver/sdk/a/ai;

    aput-object v1, v0, v3

    sget-object v1, Lnet/adways/appdriver/sdk/a/ai;->c:Lnet/adways/appdriver/sdk/a/ai;

    aput-object v1, v0, v4

    sget-object v1, Lnet/adways/appdriver/sdk/a/ai;->d:Lnet/adways/appdriver/sdk/a/ai;

    aput-object v1, v0, v5

    sget-object v1, Lnet/adways/appdriver/sdk/a/ai;->e:Lnet/adways/appdriver/sdk/a/ai;

    aput-object v1, v0, v6

    sput-object v0, Lnet/adways/appdriver/sdk/a/ai;->f:[Lnet/adways/appdriver/sdk/a/ai;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/adways/appdriver/sdk/a/ai;
    .locals 1

    const-class v0, Lnet/adways/appdriver/sdk/a/ai;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/adways/appdriver/sdk/a/ai;

    return-object v0
.end method

.method public static values()[Lnet/adways/appdriver/sdk/a/ai;
    .locals 1

    sget-object v0, Lnet/adways/appdriver/sdk/a/ai;->f:[Lnet/adways/appdriver/sdk/a/ai;

    invoke-virtual {v0}, [Lnet/adways/appdriver/sdk/a/ai;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/adways/appdriver/sdk/a/ai;

    return-object v0
.end method
