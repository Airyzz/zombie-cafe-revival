.class public final Lcom/google/android/gms/internal/ak;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/bu;

.field private final b:Lcom/google/android/gms/internal/q;

.field private c:Lcom/google/android/gms/ads/AdListener;

.field private d:Lcom/google/android/gms/internal/y;

.field private e:[Lcom/google/android/gms/ads/AdSize;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/view/ViewGroup;

.field private i:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field private j:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

.field private k:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/q;->a()Lcom/google/android/gms/internal/q;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ak;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/q;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/q;->a()Lcom/google/android/gms/internal/q;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ak;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/q;)V

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/q;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/bu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ak;->a:Lcom/google/android/gms/internal/bu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ak;->h:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/internal/ak;->b:Lcom/google/android/gms/internal/q;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/t;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/t;->a(Z)[Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ak;->e:[Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/t;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ak;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/al;

    iget-object v2, p0, Lcom/google/android/gms/internal/ak;->e:[Lcom/google/android/gms/ads/AdSize;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/al;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    const-string v1, "Ads by Google"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/if;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/al;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lcom/google/android/gms/internal/al;

    sget-object v3, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/al;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v1, v0}, Lcom/google/android/gms/internal/if;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/al;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    invoke-interface {v0}, Lcom/google/android/gms/internal/y;->a()Lcom/google/android/gms/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ak;->h:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/a/d;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get an ad frame."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->e:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/al;

    iget-object v2, p0, Lcom/google/android/gms/internal/ak;->e:[Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/al;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ak;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ak;->a:Lcom/google/android/gms/internal/bu;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/o;->a(Landroid/content/Context;Lcom/google/android/gms/internal/al;Ljava/lang/String;Lcom/google/android/gms/internal/bu;)Lcom/google/android/gms/internal/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->c:Lcom/google/android/gms/ads/AdListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    new-instance v1, Lcom/google/android/gms/internal/n;

    iget-object v2, p0, Lcom/google/android/gms/internal/ak;->c:Lcom/google/android/gms/ads/AdListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/n;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/u;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->i:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    new-instance v1, Lcom/google/android/gms/internal/s;

    iget-object v2, p0, Lcom/google/android/gms/internal/ak;->i:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/s;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/ae;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->j:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    new-instance v1, Lcom/google/android/gms/internal/fe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ak;->j:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/fe;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/en;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->k:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    new-instance v1, Lcom/google/android/gms/internal/fn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ak;->k:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/fn;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ak;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/fa;Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ak;->k()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    invoke-interface {v0}, Lcom/google/android/gms/internal/y;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to destroy AdView."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/AdListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ak;->c:Lcom/google/android/gms/ads/AdListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

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
    iput-object p1, p0, Lcom/google/android/gms/internal/ak;->i:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->k:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Play store purchase parameter has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ak;->j:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->j:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InAppPurchaseListener has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ak;->k:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/ak;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/fn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/fn;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    :goto_0
    invoke-interface {v1, v0, p2}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/fa;Ljava/lang/String;)V
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

    const-string v1, "Failed to set the play store purchase parameter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/internal/ah;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ak;->l()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    iget-object v1, p0, Lcom/google/android/gms/internal/ak;->b:Lcom/google/android/gms/internal/q;

    iget-object v2, p0, Lcom/google/android/gms/internal/ak;->h:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/q;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ah;)Lcom/google/android/gms/internal/ai;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/ai;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->a:Lcom/google/android/gms/internal/bu;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ak;->f:Ljava/lang/String;

    return-void
.end method

.method public varargs a([Lcom/google/android/gms/ads/AdSize;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->e:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ak;->b([Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public b()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->c:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public varargs b([Lcom/google/android/gms/ads/AdSize;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ak;->e:[Lcom/google/android/gms/ads/AdSize;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    new-instance v1, Lcom/google/android/gms/internal/al;

    iget-object v2, p0, Lcom/google/android/gms/internal/ak;->h:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ak;->e:[Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/al;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/al;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the ad size."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c()Lcom/google/android/gms/ads/AdSize;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    invoke-interface {v0}, Lcom/google/android/gms/internal/y;->i()Lcom/google/android/gms/internal/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/al;->a()Lcom/google/android/gms/ads/AdSize;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the current AdSize."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->e:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->e:[Lcom/google/android/gms/ads/AdSize;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()[Lcom/google/android/gms/ads/AdSize;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->e:[Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->i:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object v0
.end method

.method public g()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->j:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    return-object v0
.end method

.method public h()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    invoke-interface {v0}, Lcom/google/android/gms/internal/y;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call pause."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public i()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    invoke-interface {v0}, Lcom/google/android/gms/internal/y;->h()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to record impression."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public j()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/y;

    invoke-interface {v0}, Lcom/google/android/gms/internal/y;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call resume."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
