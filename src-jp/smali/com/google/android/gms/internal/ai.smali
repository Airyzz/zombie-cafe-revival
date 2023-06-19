.class public final Lcom/google/android/gms/internal/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/p;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Landroid/os/Bundle;

.field public final d:I

.field public final e:Ljava/util/List;

.field public final f:Z

.field public final g:I

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:Lcom/google/android/gms/internal/aw;

.field public final k:Landroid/location/Location;

.field public final l:Ljava/lang/String;

.field public final m:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/p;

    invoke-direct {v0}, Lcom/google/android/gms/internal/p;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ai;->CREATOR:Lcom/google/android/gms/internal/p;

    return-void
.end method

.method public constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/aw;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ai;->a:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/ai;->b:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ai;->c:Landroid/os/Bundle;

    iput p5, p0, Lcom/google/android/gms/internal/ai;->d:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ai;->e:Ljava/util/List;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ai;->f:Z

    iput p8, p0, Lcom/google/android/gms/internal/ai;->g:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ai;->h:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/ai;->i:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/ai;->j:Lcom/google/android/gms/internal/aw;

    iput-object p12, p0, Lcom/google/android/gms/internal/ai;->k:Landroid/location/Location;

    iput-object p13, p0, Lcom/google/android/gms/internal/ai;->l:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/internal/ai;->m:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/p;->a(Lcom/google/android/gms/internal/ai;Landroid/os/Parcel;I)V

    return-void
.end method
