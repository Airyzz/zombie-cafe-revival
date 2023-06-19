.class public Lcom/google/android/gms/internal/ju;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/maps/model/LatLng;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/no;

    invoke-direct {v0}, Lcom/google/android/gms/internal/no;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ju;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ju;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ju;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ju;->c:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p4, p0, Lcom/google/android/gms/internal/ju;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ju;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/ju;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ju;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->c:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->e:Ljava/util/List;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->g:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/no;->a(Lcom/google/android/gms/internal/ju;Landroid/os/Parcel;I)V

    return-void
.end method
