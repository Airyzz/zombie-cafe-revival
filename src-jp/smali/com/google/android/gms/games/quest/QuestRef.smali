.class public final Lcom/google/android/gms/games/quest/QuestRef;
.super Lcom/google/android/gms/common/data/f;

# interfaces
.implements Lcom/google/android/gms/games/quest/Quest;


# instance fields
.field private final c:Lcom/google/android/gms/games/Game;

.field private final d:I


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestRef;->r()Lcom/google/android/gms/games/quest/Quest;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "quest_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "quest_description"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->e(Ljava/lang/String;)Ljava/lang/String;

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

    const-string v0, "quest_banner_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->h(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/quest/QuestEntity;->a(Lcom/google/android/gms/games/quest/Quest;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "quest_banner_image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/net/Uri;
    .locals 1

    const-string v0, "quest_icon_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->h(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "quest_icon_image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->a(Lcom/google/android/gms/games/quest/Quest;)I

    move-result v0

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    iget v0, p0, Lcom/google/android/gms/games/quest/QuestRef;->d:I

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/games/quest/QuestRef;->d:I

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/google/android/gms/games/quest/MilestoneRef;

    iget-object v3, p0, Lcom/google/android/gms/games/quest/QuestRef;->a:Lcom/google/android/gms/common/data/DataHolder;

    iget v4, p0, Lcom/google/android/gms/games/quest/QuestRef;->b:I

    add-int/2addr v4, v0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/games/quest/MilestoneRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public j()Lcom/google/android/gms/games/Game;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/quest/QuestRef;->c:Lcom/google/android/gms/games/Game;

    return-object v0
.end method

.method public k()I
    .locals 1

    const-string v0, "quest_state"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public k_()Ljava/lang/String;
    .locals 1

    const-string v0, "external_quest_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()I
    .locals 1

    const-string v0, "quest_type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public m()J
    .locals 2

    const-string v0, "accepted_ts"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public n()J
    .locals 2

    const-string v0, "quest_end_ts"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public o()J
    .locals 2

    const-string v0, "quest_last_updated_ts"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public p()J
    .locals 2

    const-string v0, "notification_ts"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public q()J
    .locals 2

    const-string v0, "quest_start_ts"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public r()Lcom/google/android/gms/games/quest/Quest;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/quest/QuestEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/quest/QuestEntity;-><init>(Lcom/google/android/gms/games/quest/Quest;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->b(Lcom/google/android/gms/games/quest/Quest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestRef;->r()Lcom/google/android/gms/games/quest/Quest;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/quest/QuestEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/quest/QuestEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
