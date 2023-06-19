.class public Lcom/google/android/gms/internal/fr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/kd;


# instance fields
.field final a:I

.field final b:Lcom/google/android/gms/internal/fi;

.field final c:J

.field final d:I

.field public final e:Ljava/lang/String;

.field final f:Lcom/google/android/gms/internal/fg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/kd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fr;->CREATOR:Lcom/google/android/gms/internal/kd;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/fi;JILjava/lang/String;Lcom/google/android/gms/internal/fg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/fr;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/fr;->b:Lcom/google/android/gms/internal/fi;

    iput-wide p3, p0, Lcom/google/android/gms/internal/fr;->c:J

    iput p5, p0, Lcom/google/android/gms/internal/fr;->d:I

    iput-object p6, p0, Lcom/google/android/gms/internal/fr;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/fr;->f:Lcom/google/android/gms/internal/fg;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/fr;->CREATOR:Lcom/google/android/gms/internal/kd;

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, "UsageInfo[documentId=%s, timestamp=%d, usageType=%d]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/fr;->b:Lcom/google/android/gms/internal/fi;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/internal/fr;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/gms/internal/fr;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/fr;->CREATOR:Lcom/google/android/gms/internal/kd;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/fr;Landroid/os/Parcel;I)V

    return-void
.end method
