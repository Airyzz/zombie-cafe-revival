.class public final Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;
.super Lcom/google/android/gms/common/data/f;

# interfaces
.implements Lcom/google/android/gms/games/snapshot/SnapshotMetadata;


# instance fields
.field private final c:Lcom/google/android/gms/games/Game;

.field private final d:Lcom/google/android/gms/games/Player;


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->m()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/android/gms/games/Player;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->d:Lcom/google/android/gms/games/Player;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "external_snapshot_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Landroid/net/Uri;
    .locals 1

    const-string v0, "cover_icon_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->h(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->a(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "cover_icon_image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()F
    .locals 4

    const/4 v0, 0x0

    const-string v1, "cover_icon_image_height"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->f(Ljava/lang/String;)F

    move-result v1

    const-string v2, "cover_icon_image_width"

    invoke-virtual {p0, v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->f(Ljava/lang/String;)F

    move-result v2

    cmpl-float v3, v1, v0

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    div-float v0, v2, v1

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "unique_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->a(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "description"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()J
    .locals 2

    const-string v0, "last_modified_timestamp"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public l()J
    .locals 2

    const-string v0, "duration"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public l_()Lcom/google/android/gms/games/Game;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->c:Lcom/google/android/gms/games/Game;

    return-object v0
.end method

.method public m()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->b(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;->m()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
