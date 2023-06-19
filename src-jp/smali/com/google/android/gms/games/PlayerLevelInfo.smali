.class public final Lcom/google/android/gms/games/PlayerLevelInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/f;


# instance fields
.field private final a:I

.field private final b:J

.field private final c:J

.field private final d:Lcom/google/android/gms/games/PlayerLevel;

.field private final e:Lcom/google/android/gms/games/PlayerLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/f;

    invoke-direct {v0}, Lcom/google/android/gms/games/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/PlayerLevelInfo;->CREATOR:Lcom/google/android/gms/games/f;

    return-void
.end method

.method constructor <init>(IJJLcom/google/android/gms/games/PlayerLevel;Lcom/google/android/gms/games/PlayerLevel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ls;->a(Z)V

    invoke-static {p6}, Lcom/google/android/gms/internal/ls;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p7}, Lcom/google/android/gms/internal/ls;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->a:I

    iput-wide p2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->b:J

    iput-wide p4, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->c:J

    iput-object p6, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->d:Lcom/google/android/gms/games/PlayerLevel;

    iput-object p7, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->e:Lcom/google/android/gms/games/PlayerLevel;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(JJLcom/google/android/gms/games/PlayerLevel;Lcom/google/android/gms/games/PlayerLevel;)V
    .locals 9

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/games/PlayerLevelInfo;-><init>(IJJLcom/google/android/gms/games/PlayerLevel;Lcom/google/android/gms/games/PlayerLevel;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->a:I

    return v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->b:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->c:J

    return-wide v0
.end method

.method public d()Lcom/google/android/gms/games/PlayerLevel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->d:Lcom/google/android/gms/games/PlayerLevel;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/google/android/gms/games/PlayerLevel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->e:Lcom/google/android/gms/games/PlayerLevel;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/PlayerLevelInfo;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p1, p0, :cond_0

    check-cast p1, Lcom/google/android/gms/games/PlayerLevelInfo;

    iget-wide v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/android/gms/games/PlayerLevelInfo;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/android/gms/games/PlayerLevelInfo;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->d:Lcom/google/android/gms/games/PlayerLevel;

    iget-object v3, p1, Lcom/google/android/gms/games/PlayerLevelInfo;->d:Lcom/google/android/gms/games/PlayerLevel;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->e:Lcom/google/android/gms/games/PlayerLevel;

    iget-object v3, p1, Lcom/google/android/gms/games/PlayerLevelInfo;->e:Lcom/google/android/gms/games/PlayerLevel;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->d:Lcom/google/android/gms/games/PlayerLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->e:Lcom/google/android/gms/games/PlayerLevel;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/lo;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/f;->a(Lcom/google/android/gms/games/PlayerLevelInfo;Landroid/os/Parcel;I)V

    return-void
.end method
