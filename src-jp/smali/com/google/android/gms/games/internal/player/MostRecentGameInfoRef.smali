.class public final Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;
.super Lcom/google/android/gms/common/data/f;

# interfaces
.implements Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;


# instance fields
.field private final c:Lcom/google/android/gms/games/internal/player/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILcom/google/android/gms/games/internal/player/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/f;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object p3, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->c:Lcom/google/android/gms/games/internal/player/b;

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->h()Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->c:Lcom/google/android/gms/games/internal/player/b;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/b;->t:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->c:Lcom/google/android/gms/games/internal/player/b;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/b;->u:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->c:Lcom/google/android/gms/games/internal/player/b;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/b;->v:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->h(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->a(Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->c:Lcom/google/android/gms/games/internal/player/b;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/b;->w:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->h(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public f_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->c:Lcom/google/android/gms/games/internal/player/b;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/b;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->c:Lcom/google/android/gms/games/internal/player/b;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/b;->x:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->h(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;-><init>(Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->a(Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->b(Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;->h()Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
