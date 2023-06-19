.class final Lcom/google/ads/mediation/customevent/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/customevent/CustomEventBannerListener;


# instance fields
.field private final a:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

.field private final b:Lcom/google/ads/mediation/MediationBannerListener;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/MediationBannerListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/customevent/a;->a:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    iput-object p2, p0, Lcom/google/ads/mediation/customevent/a;->b:Lcom/google/ads/mediation/MediationBannerListener;

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    const-string v0, "Custom event adapter called onFailedToReceiveAd."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/a;->b:Lcom/google/ads/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/ads/mediation/customevent/a;->a:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public onDismissScreen()V
    .locals 2

    const-string v0, "Custom event adapter called onFailedToReceiveAd."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/a;->b:Lcom/google/ads/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/ads/mediation/customevent/a;->a:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onDismissScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public onFailedToReceiveAd()V
    .locals 3

    const-string v0, "Custom event adapter called onFailedToReceiveAd."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/a;->b:Lcom/google/ads/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/ads/mediation/customevent/a;->a:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    return-void
.end method

.method public onLeaveApplication()V
    .locals 2

    const-string v0, "Custom event adapter called onFailedToReceiveAd."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/a;->b:Lcom/google/ads/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/ads/mediation/customevent/a;->a:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onLeaveApplication(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public onPresentScreen()V
    .locals 2

    const-string v0, "Custom event adapter called onFailedToReceiveAd."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/a;->b:Lcom/google/ads/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/ads/mediation/customevent/a;->a:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onPresentScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public onReceivedAd(Landroid/view/View;)V
    .locals 2

    const-string v0, "Custom event adapter called onReceivedAd."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/a;->a:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    invoke-static {v0, p1}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->a(Lcom/google/ads/mediation/customevent/CustomEventAdapter;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/a;->b:Lcom/google/ads/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/ads/mediation/customevent/a;->a:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onReceivedAd(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method
