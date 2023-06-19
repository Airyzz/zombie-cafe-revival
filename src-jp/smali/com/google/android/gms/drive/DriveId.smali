.class public Lcom/google/android/gms/drive/DriveId;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:J

.field final d:J

.field private volatile e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/b;

    invoke-direct {v0}, Lcom/google/android/gms/drive/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JJ)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->e:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/drive/DriveId;->a:I

    iput-object p2, p0, Lcom/google/android/gms/drive/DriveId;->b:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ls;->b(Z)V

    if-nez p2, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v0, p3, v4

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ls;->b(Z)V

    iput-wide p3, p0, Lcom/google/android/gms/drive/DriveId;->c:J

    iput-wide p5, p0, Lcom/google/android/gms/drive/DriveId;->d:J

    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->b()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DriveId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->e:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->e:Ljava/lang/String;

    return-object v0
.end method

.method final b()[B
    .locals 4

    new-instance v1, Lcom/google/android/gms/drive/internal/d;

    invoke-direct {v1}, Lcom/google/android/gms/drive/internal/d;-><init>()V

    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->a:I

    iput v0, v1, Lcom/google/android/gms/drive/internal/d;->a:I

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, v1, Lcom/google/android/gms/drive/internal/d;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->c:J

    iput-wide v2, v1, Lcom/google/android/gms/drive/internal/d;->c:J

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->d:J

    iput-wide v2, v1, Lcom/google/android/gms/drive/internal/d;->d:J

    invoke-static {v1}, Lcom/google/android/gms/internal/om;->a(Lcom/google/android/gms/internal/om;)[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/drive/DriveId;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/drive/DriveId;

    iget-wide v2, p1, Lcom/google/android/gms/drive/DriveId;->d:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/DriveId;->d:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const-string v1, "DriveId"

    const-string v2, "Attempt to compare invalid DriveId detected. Has local storage been cleared?"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-wide v2, p1, Lcom/google/android/gms/drive/DriveId;->c:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->c:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/drive/DriveId;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/drive/DriveId;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-wide v2, p1, Lcom/google/android/gms/drive/DriveId;->c:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/DriveId;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/b;->a(Lcom/google/android/gms/drive/DriveId;Landroid/os/Parcel;I)V

    return-void
.end method
