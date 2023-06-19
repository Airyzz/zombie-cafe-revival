.class public final Lnet/adways/appdriver/sdk/a/am;
.super Lnet/adways/appdriver/sdk/a/ag;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lnet/adways/appdriver/sdk/a/aj;->a:Lnet/adways/appdriver/sdk/a/aj;

    const-string v1, "z"

    invoke-direct {p0, v0, v1}, Lnet/adways/appdriver/sdk/a/ag;-><init>(Lnet/adways/appdriver/sdk/a/aj;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "SUPER_SWITCH_%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lnet/adways/appdriver/sdk/a/v;->a(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Lnet/adways/appdriver/sdk/a/ad;

    invoke-direct {v0}, Lnet/adways/appdriver/sdk/a/ad;-><init>()V

    const-string v1, "APPDRIVER_SITE_AVAILABLE_VER"

    invoke-virtual {v0, v1}, Lnet/adways/appdriver/sdk/a/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/adways/appdriver/sdk/a/an;

    const-string v1, "not find api version:APPDRIVER_SITE_AVAILABLE_VER"

    invoke-direct {v0, v1}, Lnet/adways/appdriver/sdk/a/an;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method protected final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lnet/adways/appdriver/sdk/a/am;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lorg/apache/http/HttpResponse;)Lnet/adways/appdriver/sdk/a/ai;
    .locals 3

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    const-string v0, "appdriver-log"

    const-string v1, "server unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lnet/adways/appdriver/sdk/a/ae;

    invoke-direct {v0, p1}, Lnet/adways/appdriver/sdk/a/ae;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lnet/adways/appdriver/sdk/a/am;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lnet/adways/appdriver/sdk/a/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appdriver-log"

    const-string v1, "super switch changed to off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lnet/adways/appdriver/sdk/a/ai;->a:Lnet/adways/appdriver/sdk/a/ai;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "appdriver-log"

    const-string v2, "failed to get app version code"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string v0, "super switch not changed since it can not cache in preference file"

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/v;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    const-string v0, "switch not changed since server available"

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/v;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "switch not changed since unknown server status "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/v;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c(Landroid/content/Context;)Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "app"

    invoke-static {p1}, Lnet/adways/appdriver/sdk/a/af;->a(Landroid/content/Context;)Lnet/adways/appdriver/sdk/a/af;

    move-result-object v2

    invoke-virtual {v2}, Lnet/adways/appdriver/sdk/a/af;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected final h(Landroid/content/Context;)Ljava/util/Map;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
