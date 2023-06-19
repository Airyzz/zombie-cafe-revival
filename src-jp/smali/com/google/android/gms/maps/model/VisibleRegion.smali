.class public final Lcom/google/android/gms/maps/model/VisibleRegion;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/s;


# instance fields
.field public final a:Lcom/google/android/gms/maps/model/LatLng;

.field public final b:Lcom/google/android/gms/maps/model/LatLng;

.field public final c:Lcom/google/android/gms/maps/model/LatLng;

.field public final d:Lcom/google/android/gms/maps/model/LatLng;

.field public final e:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/s;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/s;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/VisibleRegion;->CREATOR:Lcom/google/android/gms/maps/model/s;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->f:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->a:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->b:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p4, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->c:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p5, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->d:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p6, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->e:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->f:I

    return v0
.end method

.method public describeContents()I
    .locals 1

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
    instance-of v2, p1, Lcom/google/android/gms/maps/model/VisibleRegion;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/maps/model/VisibleRegion;

    iget-object v2, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p1, Lcom/google/android/gms/maps/model/VisibleRegion;->a:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->b:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p1, Lcom/google/android/gms/maps/model/VisibleRegion;->b:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->c:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p1, Lcom/google/android/gms/maps/model/VisibleRegion;->c:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->d:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p1, Lcom/google/android/gms/maps/model/VisibleRegion;->d:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->e:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v3, p1, Lcom/google/android/gms/maps/model/VisibleRegion;->e:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/LatLngBounds;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->a:Lcom/google/android/gms/maps/model/LatLng;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->b:Lcom/google/android/gms/maps/model/LatLng;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->c:Lcom/google/android/gms/maps/model/LatLng;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->d:Lcom/google/android/gms/maps/model/LatLng;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->e:Lcom/google/android/gms/maps/model/LatLngBounds;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/lo;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/lo;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    const-string v1, "nearLeft"

    iget-object v2, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->a:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    const-string v1, "nearRight"

    iget-object v2, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->b:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    const-string v1, "farLeft"

    iget-object v2, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->c:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    const-string v1, "farRight"

    iget-object v2, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->d:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    const-string v1, "latLngBounds"

    iget-object v2, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->e:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lq;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/maps/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/ad;->a(Lcom/google/android/gms/maps/model/VisibleRegion;Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/s;->a(Lcom/google/android/gms/maps/model/VisibleRegion;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
