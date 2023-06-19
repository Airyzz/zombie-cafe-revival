.class public final Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/snapshot/b;

.field public static final a:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Long;

.field private final e:Landroid/net/Uri;

.field private f:Lcom/google/android/gms/common/data/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/snapshot/b;

    invoke-direct {v0}, Lcom/google/android/gms/games/snapshot/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->CREATOR:Lcom/google/android/gms/games/snapshot/b;

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    invoke-direct {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->a:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x4

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;-><init>(ILjava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/a;Landroid/net/Uri;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/a;Landroid/net/Uri;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->b:I

    iput-object p2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->d:Ljava/lang/Long;

    iput-object p4, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->f:Lcom/google/android/gms/common/data/a;

    iput-object p5, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->e:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->f:Lcom/google/android/gms/common/data/a;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->e:Landroid/net/Uri;

    if-nez v2, :cond_1

    :goto_0
    const-string v1, "Cannot set both a URI and an image"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ls;->a(ZLjava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->e:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->f:Lcom/google/android/gms/common/data/a;

    if-nez v2, :cond_3

    :goto_2
    const-string v1, "Cannot set both a URI and an image"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ls;->a(ZLjava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public d()Lcom/google/android/gms/common/data/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->f:Lcom/google/android/gms/common/data/a;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->e:Landroid/net/Uri;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/snapshot/b;->a(Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Landroid/os/Parcel;I)V

    return-void
.end method
