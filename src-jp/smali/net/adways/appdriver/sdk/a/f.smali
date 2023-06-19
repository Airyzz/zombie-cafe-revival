.class public final Lnet/adways/appdriver/sdk/a/f;
.super Lnet/adways/appdriver/sdk/a/ag;

# interfaces
.implements Lnet/adways/appdriver/sdk/a/p;


# instance fields
.field private e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lnet/adways/appdriver/sdk/a/aj;->m:Lnet/adways/appdriver/sdk/a/aj;

    const-string v1, "si"

    invoke-direct {p0, v0, v1}, Lnet/adways/appdriver/sdk/a/ag;-><init>(Lnet/adways/appdriver/sdk/a/aj;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/f;->e:Landroid/os/Bundle;

    iput-object p1, p0, Lnet/adways/appdriver/sdk/a/f;->e:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic a(Lnet/adways/appdriver/sdk/a/f;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/f;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic a(Lnet/adways/appdriver/sdk/a/f;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lnet/adways/appdriver/sdk/a/f;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Lnet/adways/appdriver/sdk/a/ad;

    invoke-direct {v0}, Lnet/adways/appdriver/sdk/a/ad;-><init>()V

    const-string v1, "APPDRIVER_SHOTAPP_VER"

    invoke-virtual {v0, v1}, Lnet/adways/appdriver/sdk/a/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/adways/appdriver/sdk/a/an;

    const-string v1, "not find api version:APPDRIVER_SHOTAPP_VER"

    invoke-direct {v0, v1}, Lnet/adways/appdriver/sdk/a/an;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method protected final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lnet/adways/appdriver/sdk/a/f;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 8

    const/4 v4, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v2, Lnet/adways/appdriver/sdk/a/q;

    invoke-direct {v2, p1}, Lnet/adways/appdriver/sdk/a/q;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/16 v0, 0x64

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setInitialScale(I)V

    const-string v0, "3."

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v6}, Landroid/webkit/WebView;->setInitialScale(I)V

    :cond_0
    const-string v0, "4.0.3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "4.0.4"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const v0, -0xbbbbbc

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    :cond_2
    new-instance v0, Lnet/adways/appdriver/sdk/a/i;

    invoke-direct {v0, p0, p1}, Lnet/adways/appdriver/sdk/a/i;-><init>(Lnet/adways/appdriver/sdk/a/f;Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lnet/adways/appdriver/sdk/a/f;->e:Landroid/os/Bundle;

    const-string v5, "orientation"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/adways/appdriver/sdk/a/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "3."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "4.4"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "landscape"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    :cond_4
    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, p1

    check-cast v0, Lnet/adways/appdriver/sdk/a/n;

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/n;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/n;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v4, "dialog"

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    new-instance v0, Lnet/adways/appdriver/sdk/a/m;

    invoke-direct {v0}, Lnet/adways/appdriver/sdk/a/m;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "style"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lnet/adways/appdriver/sdk/a/m;->a(Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v4}, Lnet/adways/appdriver/sdk/a/m;->setArguments(Landroid/os/Bundle;)V

    const-string v1, "dialog"

    invoke-virtual {v0, v3, v1}, Lnet/adways/appdriver/sdk/a/m;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lnet/adways/appdriver/sdk/a/g;

    invoke-direct {v1, p0, p1, v2}, Lnet/adways/appdriver/sdk/a/g;-><init>(Lnet/adways/appdriver/sdk/a/f;Landroid/app/Activity;Landroid/webkit/WebView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/f;->e:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/f;->e:Landroid/os/Bundle;

    const-string v3, "cross_media_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    const-string v0, "appdriver-log"

    const-string v2, "media ID is need"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_0
    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/f;->e:Landroid/os/Bundle;

    const-string v3, "orientation"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "landscape"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "portrait"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v0, "appdriver-log"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "orientation can not be : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_2
    :goto_0
    return v0

    :cond_3
    const-string v0, "appdriver-log"

    const-string v2, "no enough parameters"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method protected final synthetic c(Landroid/content/Context;)Ljava/util/Map;
    .locals 10

    const-wide v8, 0x3fe199999999999aL    # 0.55

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const-string v0, "cross_media_id"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/f;->e:Landroid/os/Bundle;

    const-string v3, "cross_media_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dialog"

    const-string v2, "1"

    invoke-interface {v1, v0, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    new-instance v2, Lnet/adways/appdriver/sdk/a/aa;

    invoke-direct {v2, p1}, Lnet/adways/appdriver/sdk/a/aa;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lnet/adways/appdriver/sdk/a/aa;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "campaign_id"

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/f;->e:Landroid/os/Bundle;

    const-string v2, "orientation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "orientation"

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/f;->e:Landroid/os/Bundle;

    const-string v3, "width"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lnet/adways/appdriver/sdk/a/f;->e:Landroid/os/Bundle;

    const-string v4, "height"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v5, "landscape"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    int-to-double v6, v3

    mul-double/2addr v6, v8

    double-to-int v0, v6

    if-eqz v0, :cond_2

    const-string v2, "4.4"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    int-to-double v2, v3

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "height"

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v3, "portrait"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    int-to-double v2, v2

    mul-double/2addr v2, v8

    double-to-int v0, v2

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "width"

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
