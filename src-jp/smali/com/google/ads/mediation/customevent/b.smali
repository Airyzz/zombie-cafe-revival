.class Lcom/google/ads/mediation/customevent/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;


# instance fields
.field final synthetic a:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

.field private final b:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

.field private final c:Lcom/google/ads/mediation/MediationInterstitialListener;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/MediationInterstitialListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/customevent/b;->a:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/mediation/customevent/b;->b:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    iput-object p3, p0, Lcom/google/ads/mediation/customevent/b;->c:Lcom/google/ads/mediation/MediationInterstitialListener;

    return-void
.end method


# virtual methods
.method public onDismissScreen()V
    .locals 2

    const-string v0, "Custom event adapter called onDismissScreen."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/b;->c:Lcom/google/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/ads/mediation/customevent/b;->b:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onDismissScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public onFailedToReceiveAd()V
    .locals 3

    const-string v0, "Custom event adapter called onFailedToReceiveAd."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/b;->c:Lcom/google/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/ads/mediation/customevent/b;->b:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    return-void
.end method

.method public onLeaveApplication()V
    .locals 2

    const-string v0, "Custom event adapter called onLeaveApplication."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/b;->c:Lcom/google/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/ads/mediation/customevent/b;->b:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onLeaveApplication(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public onPresentScreen()V
    .locals 2

    const-string v0, "Custom event adapter called onPresentScreen."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/b;->c:Lcom/google/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/ads/mediation/customevent/b;->b:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public onReceivedAd()V
    .locals 2

    const-string v0, "Custom event adapter called onReceivedAd."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/b;->c:Lcom/google/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/ads/mediation/customevent/b;->a:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onReceivedAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
