.class public final Lnet/adways/appdriver/sdk/a/at;
.super Lnet/adways/appdriver/sdk/a/ag;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:F

.field private final h:I

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lnet/adways/appdriver/sdk/a/aj;->g:Lnet/adways/appdriver/sdk/a/aj;

    const-string v1, "t"

    invoke-direct {p0, v0, v1}, Lnet/adways/appdriver/sdk/a/ag;-><init>(Lnet/adways/appdriver/sdk/a/aj;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/adways/appdriver/sdk/a/at;->e:Ljava/lang/String;

    iput-object v2, p0, Lnet/adways/appdriver/sdk/a/at;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnet/adways/appdriver/sdk/a/at;->g:F

    const/4 v0, 0x0

    iput v0, p0, Lnet/adways/appdriver/sdk/a/at;->h:I

    iput-object v2, p0, Lnet/adways/appdriver/sdk/a/at;->i:Ljava/lang/String;

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

    if-nez v0, :cond_0

    new-instance v0, Lnet/adways/appdriver/sdk/a/an;

    const-string v1, "not find api version:GYRO_ACHIEVE_VER"

    invoke-direct {v0, v1}, Lnet/adways/appdriver/sdk/a/an;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method protected final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnet/adways/appdriver/sdk/a/at;->d()Ljava/lang/String;

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

    const-string v1, "transaction"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/at;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "product"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/at;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "price"

    iget v2, p0, Lnet/adways/appdriver/sdk/a/at;->g:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "quantity"

    iget v2, p0, Lnet/adways/appdriver/sdk/a/at;->h:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "price_currency"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/at;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
