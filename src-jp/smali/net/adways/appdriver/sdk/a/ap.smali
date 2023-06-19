.class public final Lnet/adways/appdriver/sdk/a/ap;
.super Lnet/adways/appdriver/sdk/a/ag;


# instance fields
.field private e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lnet/adways/appdriver/sdk/a/aj;->b:Lnet/adways/appdriver/sdk/a/aj;

    const-string v1, "a"

    invoke-direct {p0, v0, v1}, Lnet/adways/appdriver/sdk/a/ag;-><init>(Lnet/adways/appdriver/sdk/a/aj;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/adways/appdriver/sdk/a/ap;->e:Ljava/lang/String;

    iput-object v2, p0, Lnet/adways/appdriver/sdk/a/ap;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Lnet/adways/appdriver/sdk/a/ad;

    invoke-direct {v0}, Lnet/adways/appdriver/sdk/a/ad;-><init>()V

    const-string v1, "APPDRIVER_PROMOTION_VER"

    invoke-virtual {v0, v1}, Lnet/adways/appdriver/sdk/a/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/adways/appdriver/sdk/a/an;

    const-string v1, "not find api version:APPDRIVER_PROMOTION_VER"

    invoke-direct {v0, v1}, Lnet/adways/appdriver/sdk/a/an;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method protected final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lnet/adways/appdriver/sdk/a/ap;->g(Landroid/content/Context;)Ljava/lang/String;

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
    invoke-virtual {p0}, Lnet/adways/appdriver/sdk/a/ap;->e()Lorg/json/JSONObject;

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
    .locals 1

    invoke-virtual {p0, p1}, Lnet/adways/appdriver/sdk/a/ap;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lnet/adways/appdriver/sdk/a/ap;->f(Landroid/content/Context;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method protected final c(Landroid/content/Context;)Ljava/util/Map;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lnet/adways/appdriver/sdk/a/ad;

    invoke-direct {v1}, Lnet/adways/appdriver/sdk/a/ad;-><init>()V

    const-string v2, "advertisement"

    const-string v3, "DEFAULT_THANKS"

    invoke-virtual {v1, v3}, Lnet/adways/appdriver/sdk/a/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/ap;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "advertisement"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/ap;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/ap;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "requirement"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/ap;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v1, Lnet/adways/appdriver/sdk/a/ae;

    invoke-direct {v1, p1}, Lnet/adways/appdriver/sdk/a/ae;-><init>(Landroid/content/Context;)V

    const-string v2, "REFERRER"

    invoke-virtual {v1, v2, v4}, Lnet/adways/appdriver/sdk/a/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "referrer"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v2, "click_id"

    invoke-virtual {v1, v2, v4}, Lnet/adways/appdriver/sdk/a/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "click_id"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v2, "identifier"

    invoke-virtual {v1, v2, v4}, Lnet/adways/appdriver/sdk/a/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "cookie_identifier"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v2, "user"

    invoke-virtual {v1, v2, v4}, Lnet/adways/appdriver/sdk/a/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "user"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method
