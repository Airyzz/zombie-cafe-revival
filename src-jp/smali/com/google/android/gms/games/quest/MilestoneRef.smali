.class public final Lcom/google/android/gms/games/quest/MilestoneRef;
.super Lcom/google/android/gms/common/data/f;

# interfaces
.implements Lcom/google/android/gms/games/quest/Milestone;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/f;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method

.method private i()J
    .locals 2

    const-string v0, "initial_value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->h()Lcom/google/android/gms/games/quest/Milestone;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->e()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-wide v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->f()J

    move-result-wide v0

    goto :goto_0

    :pswitch_2
    const-string v0, "current_value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->i()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "external_event_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    const-string v0, "milestone_state"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/quest/MilestoneEntity;->a(Lcom/google/android/gms/games/quest/Milestone;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()J
    .locals 2

    const-string v0, "target_value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public g()[B
    .locals 1

    const-string v0, "completion_reward_data"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->g(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/google/android/gms/games/quest/Milestone;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/quest/MilestoneEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;-><init>(Lcom/google/android/gms/games/quest/Milestone;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->a(Lcom/google/android/gms/games/quest/Milestone;)I

    move-result v0

    return v0
.end method

.method public j_()Ljava/lang/String;
    .locals 1

    const-string v0, "external_milestone_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->b(Lcom/google/android/gms/games/quest/Milestone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->h()Lcom/google/android/gms/games/quest/Milestone;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/quest/MilestoneEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/quest/MilestoneEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
