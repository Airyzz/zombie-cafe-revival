.class public Lcom/google/android/gms/internal/gj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private b:D

.field private c:Z

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/kh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x1

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gj;-><init>(IDZI)V

    return-void
.end method

.method constructor <init>(IDZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/gj;->a:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/gj;->b:D

    iput-boolean p4, p0, Lcom/google/android/gms/internal/gj;->c:Z

    iput p5, p0, Lcom/google/android/gms/internal/gj;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gj;->a:I

    return v0
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/gj;->b:D

    return-wide v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gj;->c:Z

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gj;->d:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/gj;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/gj;

    iget-wide v2, p0, Lcom/google/android/gms/internal/gj;->b:D

    iget-wide v4, p1, Lcom/google/android/gms/internal/gj;->b:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/gj;->c:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/gj;->c:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/gj;->d:I

    iget v3, p1, Lcom/google/android/gms/internal/gj;->d:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/gj;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/gj;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/gj;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/lo;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/kh;->a(Lcom/google/android/gms/internal/gj;Landroid/os/Parcel;I)V

    return-void
.end method
