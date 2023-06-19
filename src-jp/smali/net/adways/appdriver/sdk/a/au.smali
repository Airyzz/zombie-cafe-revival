.class public final Lnet/adways/appdriver/sdk/a/au;
.super Lnet/adways/appdriver/sdk/a/ag;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lnet/adways/appdriver/sdk/a/aj;->h:Lnet/adways/appdriver/sdk/a/aj;

    const-string v1, "a"

    invoke-direct {p0, v0, v1}, Lnet/adways/appdriver/sdk/a/ag;-><init>(Lnet/adways/appdriver/sdk/a/aj;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/adways/appdriver/sdk/a/au;->f:Ljava/lang/String;

    iput-object v2, p0, Lnet/adways/appdriver/sdk/a/au;->e:Ljava/lang/String;

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

    invoke-static {p1}, Lnet/adways/appdriver/sdk/a/au;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c(Landroid/content/Context;)Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "advertisement"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/au;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "click_id"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/au;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
