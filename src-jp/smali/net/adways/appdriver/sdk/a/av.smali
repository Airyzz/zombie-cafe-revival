.class public final Lnet/adways/appdriver/sdk/a/av;
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

    sget-object v0, Lnet/adways/appdriver/sdk/a/aj;->c:Lnet/adways/appdriver/sdk/a/aj;

    const-string v1, "t"

    invoke-direct {p0, v0, v1}, Lnet/adways/appdriver/sdk/a/ag;-><init>(Lnet/adways/appdriver/sdk/a/aj;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/adways/appdriver/sdk/a/av;->e:Ljava/lang/String;

    iput-object v2, p0, Lnet/adways/appdriver/sdk/a/av;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnet/adways/appdriver/sdk/a/av;->g:F

    const/4 v0, 0x0

    iput v0, p0, Lnet/adways/appdriver/sdk/a/av;->h:I

    iput-object v2, p0, Lnet/adways/appdriver/sdk/a/av;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Lnet/adways/appdriver/sdk/a/ad;

    invoke-direct {v0}, Lnet/adways/appdriver/sdk/a/ad;-><init>()V

    const-string v1, "APPDRIVER_PAYMENT_VER"

    invoke-virtual {v0, v1}, Lnet/adways/appdriver/sdk/a/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/adways/appdriver/sdk/a/an;

    const-string v1, "not find api version:APPDRIVER_PAYMENT_VER"

    invoke-direct {v0, v1}, Lnet/adways/appdriver/sdk/a/an;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method protected final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lnet/adways/appdriver/sdk/a/av;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c(Landroid/content/Context;)Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "transaction"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/av;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "product"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/adways/appdriver/sdk/a/av;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnet/adways/appdriver/sdk/a/av;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "price"

    iget v2, p0, Lnet/adways/appdriver/sdk/a/av;->g:F

    iget v3, p0, Lnet/adways/appdriver/sdk/a/av;->h:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "price_locale"

    const-string v2, "JP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "quantity"

    iget v2, p0, Lnet/adways/appdriver/sdk/a/av;->h:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "price_currency"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/av;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss Z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "date"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lnet/adways/appdriver/sdk/a/af;->a(Landroid/content/Context;)Lnet/adways/appdriver/sdk/a/af;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1}, Lnet/adways/appdriver/sdk/a/af;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
