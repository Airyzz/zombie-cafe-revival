.class public final Lcom/google/android/gms/games/event/EventRef;
.super Lcom/google/android/gms/common/data/f;

# interfaces
.implements Lcom/google/android/gms/games/event/Event;


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/event/EventRef;->k()Lcom/google/android/gms/games/event/Event;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c_()Ljava/lang/String;
    .locals 1

    const-string v0, "external_event_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "description"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->e(Ljava/lang/String;)Ljava/lang/String;

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

    const-string v0, "icon_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->h(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/event/EventEntity;->a(Lcom/google/android/gms/games/event/Event;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "icon_image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/google/android/gms/games/Player;
    .locals 3

    new-instance v0, Lcom/google/android/gms/games/PlayerRef;

    iget-object v1, p0, Lcom/google/android/gms/games/event/EventRef;->a:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/games/event/EventRef;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method

.method public h()J
    .locals 2

    const-string v0, "value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/event/EventEntity;->a(Lcom/google/android/gms/games/event/Event;)I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "formatted_value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 1

    const-string v0, "visibility"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public k()Lcom/google/android/gms/games/event/Event;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/event/EventEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/event/EventEntity;-><init>(Lcom/google/android/gms/games/event/Event;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/event/EventEntity;->b(Lcom/google/android/gms/games/event/Event;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/event/EventRef;->k()Lcom/google/android/gms/games/event/Event;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/event/EventEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/event/EventEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
