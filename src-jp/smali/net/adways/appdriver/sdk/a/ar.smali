.class public final Lnet/adways/appdriver/sdk/a/ar;
.super Lnet/adways/appdriver/sdk/a/ag;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lnet/adways/appdriver/sdk/a/aj;->e:Lnet/adways/appdriver/sdk/a/aj;

    const-string v1, "t"

    invoke-direct {p0, v0, v1}, Lnet/adways/appdriver/sdk/a/ag;-><init>(Lnet/adways/appdriver/sdk/a/aj;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/ar;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Lnet/adways/appdriver/sdk/a/ad;

    invoke-direct {v0}, Lnet/adways/appdriver/sdk/a/ad;-><init>()V

    const-string v1, "GYRO_ACHIEVE_VER"

    invoke-virtual {v0, v1}, Lnet/adways/appdriver/sdk/a/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnet/adways/appdriver/sdk/a/ar;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p1}, Lnet/adways/appdriver/sdk/a/af;->a(Landroid/content/Context;)Lnet/adways/appdriver/sdk/a/af;

    move-result-object v0

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/af;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "appdriver-log"

    const-string v2, "skipped Gryo Request in Sandbox mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method protected final c(Landroid/content/Context;)Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "advertisement"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/ar;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
