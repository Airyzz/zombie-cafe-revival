.class public final Lcom/google/android/gms/internal/cf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdRequest;


# instance fields
.field private final a:Ljava/util/Date;

.field private final b:I

.field private final c:Ljava/util/Set;

.field private final d:Z

.field private final e:I


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cf;->a:Ljava/util/Date;

    iput p2, p0, Lcom/google/android/gms/internal/cf;->b:I

    iput-object p3, p0, Lcom/google/android/gms/internal/cf;->c:Ljava/util/Set;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/cf;->d:Z

    iput p5, p0, Lcom/google/android/gms/internal/cf;->e:I

    return-void
.end method


# virtual methods
.method public getBirthday()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->a:Ljava/util/Date;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cf;->b:I

    return v0
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->c:Ljava/util/Set;

    return-object v0
.end method

.method public isTesting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cf;->d:Z

    return v0
.end method

.method public taggedForChildDirectedTreatment()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cf;->e:I

    return v0
.end method
