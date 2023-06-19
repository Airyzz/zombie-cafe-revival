.class public Lcom/google/android/gms/games/internal/game/ExtendedGameRef;
.super Lcom/google/android/gms/common/data/f;

# interfaces
.implements Lcom/google/android/gms/games/internal/game/ExtendedGame;


# instance fields
.field private final c:Lcom/google/android/gms/games/GameRef;

.field private final d:Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;

.field private final e:I


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->m()Lcom/google/android/gms/games/internal/game/ExtendedGame;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->a:Lcom/google/android/gms/common/data/DataHolder;

    const-string v2, "badge_title"

    iget v3, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->b:I

    iget-object v4, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->a:Lcom/google/android/gms/common/data/DataHolder;

    iget v5, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->b:I

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/data/DataHolder;->a(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->e:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    iget v2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->e:I

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/google/android/gms/games/internal/game/GameBadgeRef;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->a:Lcom/google/android/gms/common/data/DataHolder;

    iget v4, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->b:I

    add-int/2addr v4, v0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/games/internal/game/GameBadgeRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public d()I
    .locals 1

    const-string v0, "availability"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d_()Lcom/google/android/gms/games/Game;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->c:Lcom/google/android/gms/games/GameRef;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    const-string v0, "owned"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->a(Lcom/google/android/gms/games/internal/game/ExtendedGame;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    const-string v0, "achievement_unlocked_count"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public g()J
    .locals 2

    const-string v0, "last_played_server_time"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()J
    .locals 2

    const-string v0, "price_micros"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->a(Lcom/google/android/gms/games/internal/game/ExtendedGame;)I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "formatted_price"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()J
    .locals 2

    const-string v0, "full_price_micros"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    const-string v0, "formatted_full_price"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->d:Lcom/google/android/gms/games/snapshot/SnapshotMetadataRef;

    return-object v0
.end method

.method public m()Lcom/google/android/gms/games/internal/game/ExtendedGame;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;-><init>(Lcom/google/android/gms/games/internal/game/ExtendedGame;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->b(Lcom/google/android/gms/games/internal/game/ExtendedGame;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->m()Lcom/google/android/gms/games/internal/game/ExtendedGame;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
