.class final Lcom/google/android/gms/internal/jt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/fd;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/fd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/fd;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/google/android/gms/internal/fd;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-array v0, p1, [Lcom/google/android/gms/internal/fd;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jt;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/fd;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jt;->a(I)[Lcom/google/android/gms/internal/fd;

    move-result-object v0

    return-object v0
.end method
