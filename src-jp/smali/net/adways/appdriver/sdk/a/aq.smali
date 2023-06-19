.class public final Lnet/adways/appdriver/sdk/a/aq;
.super Lnet/adways/appdriver/sdk/a/ag;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lnet/adways/appdriver/sdk/a/aj;->d:Lnet/adways/appdriver/sdk/a/aj;

    const-string v1, "t"

    invoke-direct {p0, v0, v1}, Lnet/adways/appdriver/sdk/a/ag;-><init>(Lnet/adways/appdriver/sdk/a/aj;Ljava/lang/String;)V

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

    invoke-static {}, Lnet/adways/appdriver/sdk/a/aq;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lnet/adways/appdriver/sdk/a/ai;Lnet/adways/appdriver/sdk/a/ab;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lnet/adways/appdriver/sdk/a/ag;->a(Landroid/content/Context;Lnet/adways/appdriver/sdk/a/ai;Lnet/adways/appdriver/sdk/a/ab;)V

    sget-object v0, Lnet/adways/appdriver/sdk/a/ai;->a:Lnet/adways/appdriver/sdk/a/ai;

    if-ne p2, v0, :cond_1

    new-instance v2, Lnet/adways/appdriver/sdk/a/ae;

    invoke-direct {v2, p1}, Lnet/adways/appdriver/sdk/a/ae;-><init>(Landroid/content/Context;)V

    const-string v0, "ACHIEVE_COMPLETED"

    invoke-virtual {v2, v0}, Lnet/adways/appdriver/sdk/a/ae;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v0

    :goto_0
    :try_start_0
    const-string v0, "list_req_completed"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lnet/adways/appdriver/sdk/a/aq;->e()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "list_req_completed"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ACHIEVE_COMPLETED"

    invoke-virtual {v2, v0, v1}, Lnet/adways/appdriver/sdk/a/ae;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "saved completed req:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/v;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "appdriver-log"

    const-string v2, "completed achieve JSON format error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
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
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lnet/adways/appdriver/sdk/a/aq;->e(Landroid/content/Context;)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p1}, Lnet/adways/appdriver/sdk/a/aq;->f(Landroid/content/Context;)Z

    move-result v0

    :cond_2
    return v0
.end method

.method protected final c(Landroid/content/Context;)Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lnet/adways/appdriver/sdk/a/ad;

    invoke-direct {v1}, Lnet/adways/appdriver/sdk/a/ad;-><init>()V

    const-string v2, "advertisement"

    const-string v3, "DEFAULT_THANKS"

    invoke-virtual {v1, v3}, Lnet/adways/appdriver/sdk/a/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
