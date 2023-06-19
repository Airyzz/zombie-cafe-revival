.class public final Lcom/google/android/gms/games/multiplayer/ParticipantEntity;
.super Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/Participant;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/net/Uri;

.field private final e:Landroid/net/Uri;

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:Lcom/google/android/gms/games/PlayerEntity;

.field private final j:I

.field private final k:Lcom/google/android/gms/games/multiplayer/ParticipantResult;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/multiplayer/c;

    invoke-direct {v0}, Lcom/google/android/gms/games/multiplayer/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLcom/google/android/gms/games/PlayerEntity;ILcom/google/android/gms/games/multiplayer/ParticipantResult;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->a:I

    iput-object p2, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->d:Landroid/net/Uri;

    iput-object p5, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->e:Landroid/net/Uri;

    iput p6, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->f:I

    iput-object p7, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->g:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->h:Z

    iput-object p9, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->i:Lcom/google/android/gms/games/PlayerEntity;

    iput p10, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->j:I

    iput-object p11, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->k:Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    iput-object p12, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->l:Ljava/lang/String;

    iput-object p13, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/multiplayer/Participant;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->a:I

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->b:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->c:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->g()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->d:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->i()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->e:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->g_()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->f:I

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->g:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->h:Z

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->l()Lcom/google/android/gms/games/Player;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->i:Lcom/google/android/gms/games/PlayerEntity;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->d()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->j:I

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->m()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->k:Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->l:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->m:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    goto :goto_0
.end method

.method static a(Lcom/google/android/gms/games/multiplayer/Participant;)I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->l()Lcom/google/android/gms/games/Player;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->g_()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->e()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->g()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->i()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->m()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->k()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/lo;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static a(Lcom/google/android/gms/games/multiplayer/Participant;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/multiplayer/Participant;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p0, p1, :cond_0

    check-cast p1, Lcom/google/android/gms/games/multiplayer/Participant;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->l()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->l()Lcom/google/android/gms/games/Player;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->g_()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->g_()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->e()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->e()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->g()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->g()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->i()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->i()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->m()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->m()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Participant;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/lo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Ljava/lang/Integer;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->b(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static b(Lcom/google/android/gms/games/multiplayer/Participant;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/lo;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    const-string v1, "ParticipantId"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    const-string v1, "Player"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->l()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    const-string v1, "Status"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->g_()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    const-string v1, "ClientAddress"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    const-string v1, "ConnectedToRoom"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->e()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    const-string v1, "DisplayName"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    const-string v1, "IconImage"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->g()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    const-string v1, "IconImageUrl"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    const-string v1, "HiResImage"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->i()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    const-string v1, "HiResImageUrl"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    const-string v1, "Capabilities"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    const-string v1, "Result"

    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->m()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lq;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/lq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lq;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->C()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->o()Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->j:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->h:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->a(Lcom/google/android/gms/games/multiplayer/Participant;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->i:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->i:Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->i:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->d:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->i:Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->d()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public g_()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->f:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->i:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->l:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->i:Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->a(Lcom/google/android/gms/games/multiplayer/Participant;)I

    move-result v0

    return v0
.end method

.method public i()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->i:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->e:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->i:Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->f()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->i:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->m:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->i:Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcom/google/android/gms/games/Player;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->i:Lcom/google/android/gms/games/PlayerEntity;

    return-object v0
.end method

.method public m()Lcom/google/android/gms/games/multiplayer/ParticipantResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->k:Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->a:I

    return v0
.end method

.method public o()Lcom/google/android/gms/games/multiplayer/Participant;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->b(Lcom/google/android/gms/games/multiplayer/Participant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->D()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/multiplayer/d;->a(Lcom/google/android/gms/games/multiplayer/ParticipantEntity;Landroid/os/Parcel;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->d:Landroid/net/Uri;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->e:Landroid/net/Uri;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->h:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->i:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_5

    :goto_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->i:Lcom/google/android/gms/games/PlayerEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->i:Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/PlayerEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->e:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_3

    :cond_5
    move v3, v2

    goto :goto_4
.end method
