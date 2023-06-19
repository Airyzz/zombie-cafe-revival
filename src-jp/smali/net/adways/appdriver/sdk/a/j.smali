.class public final Lnet/adways/appdriver/sdk/a/j;
.super Lnet/adways/appdriver/sdk/a/ag;

# interfaces
.implements Lnet/adways/appdriver/sdk/a/p;


# instance fields
.field private final e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lnet/adways/appdriver/sdk/a/aj;->k:Lnet/adways/appdriver/sdk/a/aj;

    const-string v1, "r"

    invoke-direct {p0, v0, v1}, Lnet/adways/appdriver/sdk/a/ag;-><init>(Lnet/adways/appdriver/sdk/a/aj;Ljava/lang/String;)V

    iput-object p1, p0, Lnet/adways/appdriver/sdk/a/j;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Lnet/adways/appdriver/sdk/a/ad;

    invoke-direct {v0}, Lnet/adways/appdriver/sdk/a/ad;-><init>()V

    const-string v1, "APPDRIVER_REWARD_VER"

    invoke-virtual {v0, v1}, Lnet/adways/appdriver/sdk/a/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/adways/appdriver/sdk/a/an;

    const-string v1, "not find api version:APPDRIVER_REWARD_VER"

    invoke-direct {v0, v1}, Lnet/adways/appdriver/sdk/a/an;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method protected final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lnet/adways/appdriver/sdk/a/j;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 5

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lnet/adways/appdriver/sdk/a/q;

    invoke-direct {v1, p1}, Lnet/adways/appdriver/sdk/a/q;-><init>(Landroid/content/Context;)V

    new-instance v2, Lnet/adways/appdriver/sdk/a/r;

    iget-object v3, p0, Lnet/adways/appdriver/sdk/a/j;->e:Landroid/os/Bundle;

    invoke-direct {v2, p1, v3}, Lnet/adways/appdriver/sdk/a/r;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lnet/adways/appdriver/sdk/a/j;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/v;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final b()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/j;->e:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/j;->e:Landroid/os/Bundle;

    const-string v3, "media_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    const-string v0, "appdriver-log"

    const-string v2, "media ID is need"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_0
    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/j;->e:Landroid/os/Bundle;

    const-string v3, "campaign_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_2

    const-string v0, "appdriver-log"

    const-string v2, "campain ID is need"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_1
    const-string v0, "appdriver-log"

    const-string v2, "no enough parameters"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method protected final synthetic c(Landroid/content/Context;)Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "media_id"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/j;->e:Landroid/os/Bundle;

    const-string v3, "media_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/j;->e:Landroid/os/Bundle;

    const-string v2, "identifier"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "identifier"

    invoke-interface {v0, v2, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "campaign_id"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/j;->e:Landroid/os/Bundle;

    const-string v3, "campaign_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
