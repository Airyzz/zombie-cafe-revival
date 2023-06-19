.class public interface abstract Lcom/google/android/gms/ads/mediation/MediationAdRequest;
.super Ljava/lang/Object;


# static fields
.field public static final TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE:I = 0x0

.field public static final TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE:I = 0x1

.field public static final TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED:I = -0x1


# virtual methods
.method public abstract getBirthday()Ljava/util/Date;
.end method

.method public abstract getGender()I
.end method

.method public abstract getKeywords()Ljava/util/Set;
.end method

.method public abstract isTesting()Z
.end method

.method public abstract taggedForChildDirectedTreatment()I
.end method
