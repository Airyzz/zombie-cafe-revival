.class public final Lcom/capcom/zombiecafeandroidJP/l;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/capcom/zombiecafeandroidJP/l;

.field private static final i:Ljava/util/List;

.field private static final j:Ljava/util/List;

.field private static final k:Ljava/util/List;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/l;->a:Lcom/capcom/zombiecafeandroidJP/l;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ntt docomo"

    aput-object v1, v0, v3

    const-string v1, "au"

    aput-object v1, v0, v4

    const-string v1, "softbank"

    aput-object v1, v0, v5

    const-string v1, "emobile"

    aput-object v1, v0, v6

    const-string v1, "willcom"

    aput-object v1, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/l;->i:Ljava/util/List;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "44010"

    aput-object v1, v0, v3

    const-string v1, "44020"

    aput-object v1, v0, v4

    const-string v1, "44053"

    aput-object v1, v0, v5

    const-string v1, "44054"

    aput-object v1, v0, v6

    const-string v1, "44070"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "44071"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "44072"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "44073"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "44074"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "44075"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "44076"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/l;->j:Ljava/util/List;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DOCOMO"

    aput-object v1, v0, v3

    const-string v1, "SBM"

    aput-object v1, v0, v4

    const-string v1, "KDDI"

    aput-object v1, v0, v5

    const-string v1, "KDDI"

    aput-object v1, v0, v6

    const-string v1, "KDDI"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "KDDI"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "KDDI"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "KDDI"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "KDDI"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KDDI"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "KDDI"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/l;->k:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/l;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/l;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/l;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/l;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/l;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/l;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/l;->h:Ljava/lang/String;

    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/l;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/l;->c:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/l;->d:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/l;->e:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/l;->f:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/l;->g:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/l;->h:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/capcom/zombiecafeandroidJP/l;
    .locals 2

    const-class v1, Lcom/capcom/zombiecafeandroidJP/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/l;->a:Lcom/capcom/zombiecafeandroidJP/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/capcom/zombiecafeandroidJP/l;

    invoke-direct {v0}, Lcom/capcom/zombiecafeandroidJP/l;-><init>()V

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/l;->a:Lcom/capcom/zombiecafeandroidJP/l;

    :cond_0
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/l;->a:Lcom/capcom/zombiecafeandroidJP/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/l;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/l;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/l;->h:Ljava/lang/String;

    return-object v0
.end method
