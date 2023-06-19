.class public final Lnet/adways/appdriver/sdk/a/ak;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lorg/json/JSONObject;)Lnet/adways/appdriver/sdk/a/ag;
    .locals 6

    const/4 v1, 0x0

    const-string v0, "type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/aj;->valueOf(Ljava/lang/String;)Lnet/adways/appdriver/sdk/a/aj;

    move-result-object v0

    sget-object v2, Lnet/adways/appdriver/sdk/a/al;->a:[I

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/aj;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v2, Lnet/adways/appdriver/sdk/a/an;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unsupport json parse for request "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/aj;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lnet/adways/appdriver/sdk/a/an;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lnet/adways/appdriver/sdk/a/an; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parse request from json failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lnet/adways/appdriver/sdk/a/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "appdriver-log"

    const-string v2, "parse request from json failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0

    :pswitch_0
    :try_start_1
    new-instance v0, Lnet/adways/appdriver/sdk/a/ap;

    invoke-direct {v0}, Lnet/adways/appdriver/sdk/a/ap;-><init>()V
    :try_end_1
    .catch Lnet/adways/appdriver/sdk/a/an; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    :try_start_2
    invoke-virtual {v0, p2}, Lnet/adways/appdriver/sdk/a/ag;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v0, p1}, Lnet/adways/appdriver/sdk/a/ag;->d(Landroid/content/Context;)Ljava/lang/String;
    :try_end_2
    .catch Lnet/adways/appdriver/sdk/a/an; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    :pswitch_1
    :try_start_3
    new-instance v0, Lnet/adways/appdriver/sdk/a/au;

    invoke-direct {v0}, Lnet/adways/appdriver/sdk/a/au;-><init>()V

    :pswitch_2
    new-instance v0, Lnet/adways/appdriver/sdk/a/av;

    invoke-direct {v0}, Lnet/adways/appdriver/sdk/a/av;-><init>()V

    goto :goto_2

    :pswitch_3
    new-instance v0, Lnet/adways/appdriver/sdk/a/aq;

    invoke-direct {v0}, Lnet/adways/appdriver/sdk/a/aq;-><init>()V

    goto :goto_2

    :pswitch_4
    new-instance v0, Lnet/adways/appdriver/sdk/a/at;

    invoke-direct {v0}, Lnet/adways/appdriver/sdk/a/at;-><init>()V

    goto :goto_2

    :pswitch_5
    new-instance v0, Lnet/adways/appdriver/sdk/a/ar;

    invoke-direct {v0}, Lnet/adways/appdriver/sdk/a/ar;-><init>()V

    goto :goto_2

    :pswitch_6
    new-instance v0, Lnet/adways/appdriver/sdk/a/as;

    invoke-direct {v0}, Lnet/adways/appdriver/sdk/a/as;-><init>()V
    :try_end_3
    .catch Lnet/adways/appdriver/sdk/a/an; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
