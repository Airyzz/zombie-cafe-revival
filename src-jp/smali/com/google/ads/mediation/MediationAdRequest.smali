.class public final Lcom/google/ads/mediation/MediationAdRequest;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/util/Date;

.field private final b:Lcom/google/ads/AdRequest$Gender;

.field private final c:Ljava/util/Set;

.field private final d:Z

.field private final e:Landroid/location/Location;


# direct methods
.method public constructor <init>(Ljava/util/Date;Lcom/google/ads/AdRequest$Gender;Ljava/util/Set;ZLandroid/location/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/MediationAdRequest;->a:Ljava/util/Date;

    iput-object p2, p0, Lcom/google/ads/mediation/MediationAdRequest;->b:Lcom/google/ads/AdRequest$Gender;

    iput-object p3, p0, Lcom/google/ads/mediation/MediationAdRequest;->c:Ljava/util/Set;

    iput-boolean p4, p0, Lcom/google/ads/mediation/MediationAdRequest;->d:Z

    iput-object p5, p0, Lcom/google/ads/mediation/MediationAdRequest;->e:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public getAgeInYears()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBirthday()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->a:Ljava/util/Date;

    return-object v0
.end method

.method public getGender()Lcom/google/ads/AdRequest$Gender;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->b:Lcom/google/ads/AdRequest$Gender;

    return-object v0
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->c:Ljava/util/Set;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->e:Landroid/location/Location;

    return-object v0
.end method

.method public isTesting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->d:Z

    return v0
.end method
