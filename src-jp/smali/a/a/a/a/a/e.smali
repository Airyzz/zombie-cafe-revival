.class public final enum La/a/a/a/a/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:La/a/a/a/a/e;

.field public static final enum b:La/a/a/a/a/e;

.field private static final synthetic c:[La/a/a/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, La/a/a/a/a/e;

    const-string v1, "STRICT"

    invoke-direct {v0, v1, v2}, La/a/a/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/a/a/e;->a:La/a/a/a/a/e;

    new-instance v0, La/a/a/a/a/e;

    const-string v1, "BROWSER_COMPATIBLE"

    invoke-direct {v0, v1, v3}, La/a/a/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/a/a/e;->b:La/a/a/a/a/e;

    const/4 v0, 0x2

    new-array v0, v0, [La/a/a/a/a/e;

    sget-object v1, La/a/a/a/a/e;->a:La/a/a/a/a/e;

    aput-object v1, v0, v2

    sget-object v1, La/a/a/a/a/e;->b:La/a/a/a/a/e;

    aput-object v1, v0, v3

    sput-object v0, La/a/a/a/a/e;->c:[La/a/a/a/a/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/a/a/a/e;
    .locals 1

    const-class v0, La/a/a/a/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/a/a/a/a/e;

    return-object v0
.end method

.method public static final values()[La/a/a/a/a/e;
    .locals 1

    sget-object v0, La/a/a/a/a/e;->c:[La/a/a/a/a/e;

    invoke-virtual {v0}, [La/a/a/a/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/a/a/e;

    return-object v0
.end method
