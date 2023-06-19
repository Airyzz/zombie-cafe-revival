.class public final Lcom/google/android/gms/internal/jk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/nj;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Lcom/google/android/gms/internal/jm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jk;->CREATOR:Lcom/google/android/gms/internal/nj;

    return-void
.end method

.method constructor <init>(IIILcom/google/android/gms/internal/jm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jk;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/jk;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/jk;->c:I

    iput-object p4, p0, Lcom/google/android/gms/internal/jk;->d:Lcom/google/android/gms/internal/jm;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/jk;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/jk;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/jk;->c:I

    return v0
.end method

.method public d()Lcom/google/android/gms/internal/jm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->d:Lcom/google/android/gms/internal/jm;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/jk;->CREATOR:Lcom/google/android/gms/internal/nj;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/jk;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/jk;

    iget v2, p0, Lcom/google/android/gms/internal/jk;->b:I

    iget v3, p1, Lcom/google/android/gms/internal/jk;->b:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/jk;->c:I

    iget v3, p1, Lcom/google/android/gms/internal/jk;->c:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/jk;->d:Lcom/google/android/gms/internal/jm;

    iget-object v3, p1, Lcom/google/android/gms/internal/jk;->d:Lcom/google/android/gms/internal/jm;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/jm;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/jk;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/jk;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/lo;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/lo;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    const-string v1, "transitionTypes"

    iget v2, p0, Lcom/google/android/gms/internal/jk;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    const-string v1, "loiteringTimeMillis"

    iget v2, p0, Lcom/google/android/gms/internal/jk;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    const-string v1, "placeFilter"

    iget-object v2, p0, Lcom/google/android/gms/internal/jk;->d:Lcom/google/android/gms/internal/jm;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lq;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/jk;->CREATOR:Lcom/google/android/gms/internal/nj;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/nj;->a(Lcom/google/android/gms/internal/jk;Landroid/os/Parcel;I)V

    return-void
.end method
