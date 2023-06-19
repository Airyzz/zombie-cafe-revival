.class public final Lcom/google/android/gms/internal/am;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/bu;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/q;

.field private d:Lcom/google/android/gms/ads/AdListener;

.field private e:Lcom/google/android/gms/internal/y;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field private i:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

.field private j:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/q;->a()Lcom/google/android/gms/internal/q;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/am;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/q;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/bu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/am;->a:Lcom/google/android/gms/internal/bu;

    iput-object p1, p0, Lcom/google/android/gms/internal/am;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/am;->c:Lcom/google/android/gms/internal/q;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/am;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/am;->b:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/al;

    invoke-direct {v1}, Lcom/google/android/gms/internal/al;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/am;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/am;->a:Lcom/google/android/gms/internal/bu;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/o;->a(Landroid/content/Context;Lcom/google/android/gms/internal/al;Ljava/lang/String;Lcom/google/android/gms/internal/bu;)Lcom/google/android/gms/internal/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/am;->e:Lcom/google/android/gms/internal/y;

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->d:Lcom/google/android/gms/ads/AdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->e:Lcom/google/android/gms/internal/y;

    new-instance v1, Lcom/google/android/gms/internal/n;

    iget-object v2, p0, Lcom/google/android/gms/internal/am;->d:Lcom/google/android/gms/ads/AdListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/n;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/u;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/am;->h:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->e:Lcom/google/android/gms/internal/y;

    new-instance v1, Lcom/google/android/gms/internal/s;

    iget-object v2, p0, Lcom/google/android/gms/internal/am;->h:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/s;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/ae;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/am;->j:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->e:Lcom/google/android/gms/internal/y;

    new-instance v1, Lcom/google/android/gms/internal/fe;

    iget-object v2, p0, Lcom/google/android/gms/internal/am;->j:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/fe;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/en;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/am;->i:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->e:Lcom/google/android/gms/internal/y;

    new-instance v1, Lcom/google/android/gms/internal/fn;

    iget-object v2, p0, Lcom/google/android/gms/internal/am;->i:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/fn;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/am;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/fa;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->e:Lcom/google/android/gms/internal/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The ad unit ID must be set on InterstitialAd before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->d:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/ads/AdListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/am;->d:Lcom/google/android/gms/ads/AdListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->e:Lcom/google/android/gms/internal/y;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/am;->e:Lcom/google/android/gms/internal/y;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/n;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/n;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/u;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AdListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/am;->h:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->e:Lcom/google/android/gms/internal/y;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/am;->e:Lcom/google/android/gms/internal/y;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/s;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/s;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/ae;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AppEventListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->i:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Play store purchase parameter has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/am;->j:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->e:Lcom/google/android/gms/internal/y;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/am;->e:Lcom/google/android/gms/internal/y;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/fe;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/fe;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/en;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the InAppPurchaseListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/am;->i:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->e:Lcom/google/android/gms/internal/y;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/am;->e:Lcom/google/android/gms/internal/y;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/fn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/fn;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    :goto_0
    invoke-interface {v1, v0, p2}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/fa;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the play store purchase parameter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/internal/ah;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/am;->e:Lcom/google/android/gms/internal/y;

    if-nez v0, :cond_0

    const-string v0, "loadAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/am;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/am;->e:Lcom/google/android/gms/internal/y;

    iget-object v1, p0, Lcom/google/android/gms/internal/am;->c:Lcom/google/android/gms/internal/q;

    iget-object v2, p0, Lcom/google/android/gms/internal/am;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/q;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ah;)Lcom/google/android/gms/internal/ai;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/ai;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->a:Lcom/google/android/gms/internal/bu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ah;->i()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bu;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on InterstitialAd."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/am;->f:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->h:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object v0
.end method

.method public d()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->j:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    return-object v0
.end method

.method public e()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/am;->e:Lcom/google/android/gms/internal/y;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/am;->e:Lcom/google/android/gms/internal/y;

    invoke-interface {v1}, Lcom/google/android/gms/internal/y;->c()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to check if ad is ready."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public f()V
    .locals 2

    :try_start_0
    const-string v0, "show"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/am;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->e:Lcom/google/android/gms/internal/y;

    invoke-interface {v0}, Lcom/google/android/gms/internal/y;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
