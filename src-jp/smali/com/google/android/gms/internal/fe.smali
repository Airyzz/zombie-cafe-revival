.class public final Lcom/google/android/gms/internal/fe;
.super Lcom/google/android/gms/internal/eo;


# instance fields
.field private final a:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/eo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fe;->a:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ek;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fe;->a:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    new-instance v1, Lcom/google/android/gms/internal/fl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/fl;-><init>(Lcom/google/android/gms/internal/ek;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;->onInAppPurchaseRequested(Lcom/google/android/gms/ads/purchase/InAppPurchase;)V

    return-void
.end method
