.class public final Lnet/adways/appdriver/sdk/a/k;
.super Lnet/adways/appdriver/sdk/a/ag;

# interfaces
.implements Lnet/adways/appdriver/sdk/a/p;


# instance fields
.field private final e:Landroid/os/Bundle;

.field private f:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lnet/adways/appdriver/sdk/a/aj;->j:Lnet/adways/appdriver/sdk/a/aj;

    const-string v1, "i"

    invoke-direct {p0, v0, v1}, Lnet/adways/appdriver/sdk/a/ag;-><init>(Lnet/adways/appdriver/sdk/a/aj;Ljava/lang/String;)V

    iput-object p1, p0, Lnet/adways/appdriver/sdk/a/k;->e:Landroid/os/Bundle;

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

    invoke-static {p1}, Lnet/adways/appdriver/sdk/a/k;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0, p1}, Lnet/adways/appdriver/sdk/a/k;->b(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final b(Landroid/app/Activity;)Landroid/widget/FrameLayout;
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/k;->f:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/k;->f:Landroid/widget/FrameLayout;

    new-instance v0, Lnet/adways/appdriver/sdk/a/q;

    invoke-direct {v0, p1}, Lnet/adways/appdriver/sdk/a/q;-><init>(Landroid/content/Context;)V

    new-instance v1, Lnet/adways/appdriver/sdk/a/r;

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/k;->e:Landroid/os/Bundle;

    invoke-direct {v1, p1, v2}, Lnet/adways/appdriver/sdk/a/r;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/k;->f:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Lnet/adways/appdriver/sdk/a/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/adways/appdriver/sdk/a/v;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/k;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final b()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/k;->e:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/k;->e:Landroid/os/Bundle;

    const-string v3, "media_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    const-string v0, "appdriver-log"

    const-string v2, "media ID is need"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_0
    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/k;->e:Landroid/os/Bundle;

    const-string v3, "item_identifier"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/k;->e:Landroid/os/Bundle;

    const-string v3, "item_identifier"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/k;->e:Landroid/os/Bundle;

    const-string v3, "item_price"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    const-string v0, "appdriver-log"

    const-string v2, "item price can not less than 0"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v0, "appdriver-log"

    const-string v2, "no enough parameters"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method protected final synthetic c(Landroid/content/Context;)Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "media_id"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/k;->e:Landroid/os/Bundle;

    const-string v3, "media_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "identifier"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/k;->e:Landroid/os/Bundle;

    const-string v3, "identifier"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/adways/appdriver/sdk/a/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/k;->e:Landroid/os/Bundle;

    const-string v2, "item_identifier"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "item_identifier"

    invoke-interface {v0, v2, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "item_price"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/k;->e:Landroid/os/Bundle;

    const-string v3, "item_price"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/adways/appdriver/sdk/a/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "item_name"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/k;->e:Landroid/os/Bundle;

    const-string v3, "item_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/adways/appdriver/sdk/a/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "item_image"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/k;->e:Landroid/os/Bundle;

    const-string v3, "item_image"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/adways/appdriver/sdk/a/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
