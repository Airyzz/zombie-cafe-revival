.class public final Lcom/google/android/gms/internal/fn;
.super Lcom/google/android/gms/internal/fb;


# instance fields
.field private final a:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/fb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fn;->a:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ex;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->a:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    new-instance v1, Lcom/google/android/gms/internal/fj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/fj;-><init>(Lcom/google/android/gms/internal/ex;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;->onInAppPurchaseFinished(Lcom/google/android/gms/ads/purchase/InAppPurchaseResult;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->a:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;->isValidPurchase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
