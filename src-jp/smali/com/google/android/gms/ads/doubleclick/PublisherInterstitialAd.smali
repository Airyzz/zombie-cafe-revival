.class public final Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/am;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/am;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/am;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->a:Lcom/google/android/gms/internal/am;

    return-void
.end method


# virtual methods
.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->a:Lcom/google/android/gms/internal/am;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/am;->a()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->a:Lcom/google/android/gms/internal/am;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/am;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->a:Lcom/google/android/gms/internal/am;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/am;->c()Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    move-result-object v0

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->a:Lcom/google/android/gms/internal/am;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/am;->e()Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->a:Lcom/google/android/gms/internal/am;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->a()Lcom/google/android/gms/internal/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/am;->a(Lcom/google/android/gms/internal/ah;)V

    return-void
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->a:Lcom/google/android/gms/internal/am;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/am;->a(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->a:Lcom/google/android/gms/internal/am;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/am;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->a:Lcom/google/android/gms/internal/am;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/am;->a(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->a:Lcom/google/android/gms/internal/am;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/am;->f()V

    return-void
.end method
