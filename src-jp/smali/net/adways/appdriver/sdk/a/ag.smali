.class public abstract Lnet/adways/appdriver/sdk/a/ag;
.super Lnet/adways/appdriver/sdk/a/t;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public d:Ljava/lang/String;

.field private e:Lnet/adways/appdriver/sdk/a/aj;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/adways/appdriver/sdk/a/aj;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Lnet/adways/appdriver/sdk/a/t;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/ag;->d:Ljava/lang/String;

    iput-object p1, p0, Lnet/adways/appdriver/sdk/a/ag;->e:Lnet/adways/appdriver/sdk/a/aj;

    return-void
.end method

.method private a(Lnet/adways/appdriver/sdk/a/ag;)I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p1, Lnet/adways/appdriver/sdk/a/ag;->e:Lnet/adways/appdriver/sdk/a/aj;

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/ag;->e:Lnet/adways/appdriver/sdk/a/aj;

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lnet/adways/appdriver/sdk/a/ag;->b:Ljava/lang/String;

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/ag;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lnet/adways/appdriver/sdk/a/ag;->a:Ljava/util/SortedMap;

    invoke-static {v1}, Lnet/adways/appdriver/sdk/a/ag;->a(Ljava/util/Map;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/ag;->a:Ljava/util/SortedMap;

    invoke-static {v2}, Lnet/adways/appdriver/sdk/a/ag;->a(Ljava/util/Map;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private static a(Ljava/util/Map;)Ljava/util/SortedMap;
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "click_id"

    aput-object v3, v2, v0

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-interface {v1, v4}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v4}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static a(Landroid/content/Context;I)V
    .locals 5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    new-instance v2, Lnet/adways/appdriver/sdk/a/ae;

    invoke-direct {v2, p0}, Lnet/adways/appdriver/sdk/a/ae;-><init>(Landroid/content/Context;)V

    const-string v3, "REFUND_LIMIT"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/adways/appdriver/sdk/a/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save refund period:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/v;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected static d()Ljava/lang/String;
    .locals 2

    new-instance v0, Lnet/adways/appdriver/sdk/a/ad;

    invoke-direct {v0}, Lnet/adways/appdriver/sdk/a/ad;-><init>()V

    const-string v1, "DOMAIN_GYRO"

    invoke-virtual {v0, v1}, Lnet/adways/appdriver/sdk/a/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/adways/appdriver/sdk/a/an;

    const-string v1, "not find api domain"

    invoke-direct {v0, v1}, Lnet/adways/appdriver/sdk/a/an;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method protected static f(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Lnet/adways/appdriver/sdk/a/ae;

    invoke-direct {v1, p0}, Lnet/adways/appdriver/sdk/a/ae;-><init>(Landroid/content/Context;)V

    const-string v2, "REFUND_LIMIT"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lnet/adways/appdriver/sdk/a/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/util/Date;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "couldAppRefund = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/adways/appdriver/sdk/a/v;->a(Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception v1

    const-string v2, "appdriver-log"

    const-string v3, "ignore refund limite date format warning"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lnet/adways/appdriver/sdk/a/ad;

    invoke-direct {v0}, Lnet/adways/appdriver/sdk/a/ad;-><init>()V

    invoke-static {p0}, Lnet/adways/appdriver/sdk/a/af;->a(Landroid/content/Context;)Lnet/adways/appdriver/sdk/a/af;

    move-result-object v1

    invoke-virtual {v1}, Lnet/adways/appdriver/sdk/a/af;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DOMAIN_APPDRIVER_SANDBOX"

    invoke-virtual {v0, v1}, Lnet/adways/appdriver/sdk/a/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lnet/adways/appdriver/sdk/a/an;

    const-string v1, "not find api domain"

    invoke-direct {v0, v1}, Lnet/adways/appdriver/sdk/a/an;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v1, "DOMAIN_APPDRIVER"

    invoke-virtual {v0, v1}, Lnet/adways/appdriver/sdk/a/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract a(Landroid/content/Context;)Ljava/lang/String;
.end method

.method protected a(Landroid/content/Context;Lorg/apache/http/HttpResponse;)Lnet/adways/appdriver/sdk/a/ai;
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/adways/appdriver/sdk/a/ag;->e:Lnet/adways/appdriver/sdk/a/aj;

    invoke-virtual {v3}, Lnet/adways/appdriver/sdk/a/aj;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " get response status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/adways/appdriver/sdk/a/v;->a(Ljava/lang/String;)V

    const/16 v2, 0x190

    if-lt v1, v2, :cond_1

    const-string v0, "appdriver-log"

    const-string v1, "failed to send, retry later"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lnet/adways/appdriver/sdk/a/ai;->c:Lnet/adways/appdriver/sdk/a/ai;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v2, 0x133

    if-ne v1, v2, :cond_4

    const-string v0, "Retry-After"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    const-string v1, "Location"

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lnet/adways/appdriver/sdk/a/ag;->a(Landroid/content/Context;I)V

    :cond_2
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/ag;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "redirect location >> "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/v;->a(Ljava/lang/String;)V

    sget-object v0, Lnet/adways/appdriver/sdk/a/ai;->d:Lnet/adways/appdriver/sdk/a/ai;

    goto :goto_0

    :cond_3
    const-string v0, "appdriver-log"

    const-string v1, "cannot redirect without redirect url"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lnet/adways/appdriver/sdk/a/ai;->b:Lnet/adways/appdriver/sdk/a/ai;

    goto :goto_0

    :cond_4
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const-string v0, "Retry-After"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lnet/adways/appdriver/sdk/a/ag;->a(Landroid/content/Context;I)V

    sget-object v0, Lnet/adways/appdriver/sdk/a/ai;->c:Lnet/adways/appdriver/sdk/a/ai;

    goto :goto_0

    :cond_5
    const-string v0, "appdriver-log"

    const-string v1, "request complete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lnet/adways/appdriver/sdk/a/ai;->a:Lnet/adways/appdriver/sdk/a/ai;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lnet/adways/appdriver/sdk/a/ai;Lnet/adways/appdriver/sdk/a/ab;)V
    .locals 3

    const-string v0, "appdriver-log"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnet/adways/appdriver/sdk/a/ai;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lnet/adways/appdriver/sdk/a/ah;->a:[I

    invoke-virtual {p2}, Lnet/adways/appdriver/sdk/a/ai;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lnet/adways/appdriver/sdk/a/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown http response status:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnet/adways/appdriver/sdk/a/ai;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/adways/appdriver/sdk/a/an;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lnet/adways/appdriver/sdk/a/ag;->c()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "appdriver-log"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "retrial count down = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lnet/adways/appdriver/sdk/a/ag;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3, p0}, Lnet/adways/appdriver/sdk/a/ab;->a(Lnet/adways/appdriver/sdk/a/ag;)V

    :goto_0
    :pswitch_1
    return-void

    :cond_0
    const-string v0, "appdriver-log"

    const-string v1, "abandon for retrial"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    new-instance v0, Lnet/adways/appdriver/sdk/a/ae;

    invoke-direct {v0, p1}, Lnet/adways/appdriver/sdk/a/ae;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lnet/adways/appdriver/sdk/a/ab;->b()Ljava/util/Queue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/adways/appdriver/sdk/a/ae;->a(Ljava/util/Collection;)V

    invoke-virtual {p3}, Lnet/adways/appdriver/sdk/a/ab;->a()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/ag;->d:Ljava/lang/String;

    iput-object v0, p3, Lnet/adways/appdriver/sdk/a/ab;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-string v0, "appdriver-log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/ag;->e:Lnet/adways/appdriver/sdk/a/aj;

    invoke-virtual {v2}, Lnet/adways/appdriver/sdk/a/aj;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already completed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lnet/adways/appdriver/sdk/a/ag;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected b(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract c(Landroid/content/Context;)Ljava/util/Map;
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lnet/adways/appdriver/sdk/a/ag;

    invoke-direct {p0, p1}, Lnet/adways/appdriver/sdk/a/ag;->a(Lnet/adways/appdriver/sdk/a/ag;)I

    move-result v0

    return v0
.end method

.method protected final d(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/ag;->f:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-static {p1}, Lnet/adways/appdriver/sdk/a/af;->a(Landroid/content/Context;)Lnet/adways/appdriver/sdk/a/af;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/adways/appdriver/sdk/a/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/adways/appdriver/sdk/a/ag;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/af;->a()I

    move-result v3

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/af;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/ag;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/ag;->a:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lnet/adways/appdriver/sdk/a/ag;->h(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lnet/adways/appdriver/sdk/a/ag;->a:Ljava/util/SortedMap;

    invoke-interface {v3, v2}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p0, p1}, Lnet/adways/appdriver/sdk/a/ag;->c(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lnet/adways/appdriver/sdk/a/ag;->a:Ljava/util/SortedMap;

    invoke-interface {v3, v2}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    :cond_1
    :try_start_0
    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/ag;->a:Ljava/util/SortedMap;

    invoke-static {v2, v0}, Lnet/adways/appdriver/sdk/a/aa;->a(Ljava/util/SortedMap;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    const-string v1, "?"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/ag;->f:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/ag;->f:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "appdriver-log"

    const-string v3, "make request url failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "appdriver-log"

    const-string v3, "make request url failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "type"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/ag;->e:Lnet/adways/appdriver/sdk/a/aj;

    invoke-virtual {v2}, Lnet/adways/appdriver/sdk/a/aj;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/ag;->a:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lnet/adways/appdriver/sdk/a/ag;->a:Ljava/util/SortedMap;

    invoke-interface {v4, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v0, "params"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method

.method protected final e(Landroid/content/Context;)Z
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Lnet/adways/appdriver/sdk/a/ae;

    invoke-direct {v0, p1}, Lnet/adways/appdriver/sdk/a/ae;-><init>(Landroid/content/Context;)V

    const-string v2, "ACHIEVE_COMPLETED"

    invoke-virtual {v0, v2}, Lnet/adways/appdriver/sdk/a/ae;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "current reqs:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/adways/appdriver/sdk/a/ag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/adways/appdriver/sdk/a/v;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "completed reqs:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/adways/appdriver/sdk/a/v;->a(Ljava/lang/String;)V

    new-instance v3, Lnet/adways/appdriver/sdk/a/ak;

    invoke-direct {v3}, Lnet/adways/appdriver/sdk/a/ak;-><init>()V

    const-string v2, "list_req_completed"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move v2, v1

    move v0, v1

    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, p1, v5}, Lnet/adways/appdriver/sdk/a/ak;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lnet/adways/appdriver/sdk/a/ag;

    move-result-object v5

    invoke-direct {p0, v5}, Lnet/adways/appdriver/sdk/a/ag;->a(Lnet/adways/appdriver/sdk/a/ag;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    :goto_2
    const-string v2, "appdriver-log"

    const-string v3, "ignore completed reqs JSON format warning"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isCompletedRequest = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/adways/appdriver/sdk/a/v;->a(Ljava/lang/String;)V

    return v0

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3
.end method

.method protected h(Landroid/content/Context;)Ljava/util/Map;
    .locals 5

    new-instance v0, Lnet/adways/appdriver/sdk/a/ad;

    invoke-direct {v0}, Lnet/adways/appdriver/sdk/a/ad;-><init>()V

    invoke-static {p1}, Lnet/adways/appdriver/sdk/a/af;->a(Landroid/content/Context;)Lnet/adways/appdriver/sdk/a/af;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "sdk"

    const-string v4, "APPDRIVER_SDK_VERSION"

    invoke-virtual {v0, v4}, Lnet/adways/appdriver/sdk/a/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app"

    invoke-virtual {v1}, Lnet/adways/appdriver/sdk/a/af;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "carrier"

    invoke-virtual {v1}, Lnet/adways/appdriver/sdk/a/af;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "spn"

    invoke-virtual {v1}, Lnet/adways/appdriver/sdk/a/af;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "system"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "privileged"

    invoke-virtual {v1}, Lnet/adways/appdriver/sdk/a/af;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/ag;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "refresh"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lnet/adways/appdriver/sdk/a/af;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";URL="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/adways/appdriver/sdk/a/ag;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    const-string v0, "identifier"

    invoke-virtual {v1}, Lnet/adways/appdriver/sdk/a/af;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lnet/adways/appdriver/sdk/a/af;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "idfa"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1}, Lnet/adways/appdriver/sdk/a/af;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "verbose"

    invoke-virtual {v1}, Lnet/adways/appdriver/sdk/a/af;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v2

    :cond_3
    invoke-virtual {v1}, Lnet/adways/appdriver/sdk/a/af;->c()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lnet/adways/appdriver/sdk/a/af;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "refresh"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lnet/adways/appdriver/sdk/a/af;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";URL="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lnet/adways/appdriver/sdk/a/af;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    new-instance v0, Lnet/adways/appdriver/sdk/a/an;

    const-string v1, "meta-data scheme/host is required"

    invoke-direct {v0, v1}, Lnet/adways/appdriver/sdk/a/an;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/ag;->e:Lnet/adways/appdriver/sdk/a/aj;

    invoke-virtual {v2}, Lnet/adways/appdriver/sdk/a/aj;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/ag;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
