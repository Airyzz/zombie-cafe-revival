.class public Lcom/google/android/gms/internal/fs;
.super Lcom/google/android/gms/internal/hl;

# interfaces
.implements Lcom/google/android/gms/internal/gb;
.implements Lcom/google/android/gms/internal/im;


# instance fields
.field private final a:Lcom/google/android/gms/internal/bv;

.field private final b:Lcom/google/android/gms/internal/fq;

.field private final c:Lcom/google/android/gms/internal/ii;

.field private final d:Ljava/lang/Object;

.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/Object;

.field private final g:Lcom/google/android/gms/internal/gh;

.field private final h:Lcom/google/android/gms/internal/nq;

.field private i:Lcom/google/android/gms/internal/hl;

.field private j:Lcom/google/android/gms/internal/du;

.field private k:Z

.field private l:Lcom/google/android/gms/internal/bj;

.field private m:Lcom/google/android/gms/internal/bm;

.field private n:Lcom/google/android/gms/internal/br;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gh;Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/ii;Lcom/google/android/gms/internal/bv;Lcom/google/android/gms/internal/fq;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/hl;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fs;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fs;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fs;->k:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/fs;->a:Lcom/google/android/gms/internal/bv;

    iput-object p6, p0, Lcom/google/android/gms/internal/fs;->b:Lcom/google/android/gms/internal/fq;

    iput-object p4, p0, Lcom/google/android/gms/internal/fs;->c:Lcom/google/android/gms/internal/ii;

    iput-object p1, p0, Lcom/google/android/gms/internal/fs;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/fs;->g:Lcom/google/android/gms/internal/gh;

    iput-object p3, p0, Lcom/google/android/gms/internal/fs;->h:Lcom/google/android/gms/internal/nq;

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/ds;)Lcom/google/android/gms/internal/al;
    .locals 11

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget-object v0, v0, Lcom/google/android/gms/internal/du;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/fx;

    const-string v1, "The ad response must specify one of the supported ad sizes."

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/fx;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget-object v0, v0, Lcom/google/android/gms/internal/du;->m:Ljava/lang/String;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/fx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse the ad size from the ad response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget-object v2, v2, Lcom/google/android/gms/internal/du;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/fx;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    iget-object v0, p1, Lcom/google/android/gms/internal/ds;->d:Lcom/google/android/gms/internal/al;

    iget-object v6, v0, Lcom/google/android/gms/internal/al;->h:[Lcom/google/android/gms/internal/al;

    array-length v7, v6

    move v2, v3

    :goto_0
    if-ge v2, v7, :cond_5

    aget-object v8, v6, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget v0, v8, Lcom/google/android/gms/internal/al;->f:I

    const/4 v9, -0x1

    if-ne v0, v9, :cond_2

    iget v0, v8, Lcom/google/android/gms/internal/al;->g:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    :goto_1
    iget v9, v8, Lcom/google/android/gms/internal/al;->c:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_3

    iget v9, v8, Lcom/google/android/gms/internal/al;->d:I

    int-to-float v9, v9

    div-float v1, v9, v1

    float-to-int v1, v1

    :goto_2
    if-ne v4, v0, :cond_4

    if-ne v5, v1, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/al;

    iget-object v1, p1, Lcom/google/android/gms/internal/ds;->d:Lcom/google/android/gms/internal/al;

    iget-object v1, v1, Lcom/google/android/gms/internal/al;->h:[Lcom/google/android/gms/internal/al;

    invoke-direct {v0, v8, v1}, Lcom/google/android/gms/internal/al;-><init>(Lcom/google/android/gms/internal/al;[Lcom/google/android/gms/internal/al;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/fx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse the ad size from the ad response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget-object v2, v2, Lcom/google/android/gms/internal/du;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/fx;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    iget v0, v8, Lcom/google/android/gms/internal/al;->f:I

    goto :goto_1

    :cond_3
    iget v1, v8, Lcom/google/android/gms/internal/al;->c:I

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/fx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The ad size from the ad response was not one of the requested sizes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget-object v2, v2, Lcom/google/android/gms/internal/du;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/fx;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fs;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->f:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/internal/ds;J)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/fs;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/bj;

    iget-object v2, p0, Lcom/google/android/gms/internal/fs;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/fs;->a:Lcom/google/android/gms/internal/bv;

    iget-object v4, p0, Lcom/google/android/gms/internal/fs;->m:Lcom/google/android/gms/internal/bm;

    invoke-direct {v0, v2, p1, v3, v4}, Lcom/google/android/gms/internal/bj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/bv;Lcom/google/android/gms/internal/bm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fs;->l:Lcom/google/android/gms/internal/bj;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->l:Lcom/google/android/gms/internal/bj;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, p2, p3, v2, v3}, Lcom/google/android/gms/internal/bj;->a(JJ)Lcom/google/android/gms/internal/br;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fs;->n:Lcom/google/android/gms/internal/br;

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->n:Lcom/google/android/gms/internal/br;

    iget v0, v0, Lcom/google/android/gms/internal/br;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/internal/fx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected mediation result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fs;->n:Lcom/google/android/gms/internal/br;

    iget v2, v2, Lcom/google/android/gms/internal/br;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fx;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/fx;

    const-string v1, "No fill from any mediation ad networks."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fx;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/android/gms/internal/fs;)Lcom/google/android/gms/internal/fq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->b:Lcom/google/android/gms/internal/fq;

    return-object v0
.end method

.method private b(J)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/if;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/fv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/fv;-><init>(Lcom/google/android/gms/internal/fs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/fs;->d(J)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/fs;)Lcom/google/android/gms/internal/du;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    return-object v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget v0, v0, Lcom/google/android/gms/internal/du;->e:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget-object v0, v0, Lcom/google/android/gms/internal/du;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/fx;

    const-string v1, "No fill from ad server."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fx;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/du;->h:Z

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/bm;

    iget-object v1, p0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget-object v1, v1, Lcom/google/android/gms/internal/du;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bm;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fs;->m:Lcom/google/android/gms/internal/bm;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/fx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse mediation config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget-object v2, v2, Lcom/google/android/gms/internal/du;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fx;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private c(J)V
    .locals 3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/fs;->e(J)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/fx;

    const-string v1, "Timed out waiting for ad response."

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fx;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fs;->d:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/fs;->i:Lcom/google/android/gms/internal/hl;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget v0, v0, Lcom/google/android/gms/internal/du;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget v0, v0, Lcom/google/android/gms/internal/du;->e:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/fx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There was a problem getting an ad response. ErrorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget v2, v2, Lcom/google/android/gms/internal/du;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget v2, v2, Lcom/google/android/gms/internal/du;->e:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fx;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/fs;)Lcom/google/android/gms/internal/ii;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->c:Lcom/google/android/gms/internal/ii;

    return-object v0
.end method

.method private d(J)V
    .locals 3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/fs;->e(J)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/fx;

    const-string v1, "Timed out waiting for WebView to finish loading."

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fx;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fs;->k:Z

    if-eqz v0, :cond_0

    return-void
.end method

.method private e(J)Z
    .locals 5

    const-wide/32 v0, 0xea60

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/fs;->f:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/fx;

    const-string v1, "Ad request cancelled."

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fx;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fs;->f:Ljava/lang/Object;

    move-object/from16 v30, v0

    monitor-enter v30

    :try_start_0
    const-string v2, "AdLoaderBackgroundTask started."

    invoke-static {v2}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/fs;->h:Lcom/google/android/gms/internal/nq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/nq;->a()Lcom/google/android/gms/internal/ke;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/fs;->e:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ke;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/fs;->e:Landroid/content/Context;

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ke;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v12, Lcom/google/android/gms/internal/ds;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/fs;->g:Lcom/google/android/gms/internal/gh;

    invoke-direct {v12, v4, v3, v2}, Lcom/google/android/gms/internal/ds;-><init>(Lcom/google/android/gms/internal/gh;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    const/4 v6, -0x2

    const-wide/16 v4, -0x1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/fs;->e:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-static {v2, v12, v0}, Lcom/google/android/gms/internal/ga;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/gb;)Lcom/google/android/gms/internal/hl;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/fs;->d:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catch Lcom/google/android/gms/internal/fx; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/fs;->i:Lcom/google/android/gms/internal/hl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/fs;->i:Lcom/google/android/gms/internal/hl;

    if-nez v2, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/fx;

    const-string v6, "Could not start the ad request service."

    const/4 v8, 0x0

    invoke-direct {v2, v6, v8}, Lcom/google/android/gms/internal/fx;-><init>(Ljava/lang/String;I)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Lcom/google/android/gms/internal/fx; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/fx;->a()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/fx;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    if-nez v2, :cond_6

    new-instance v2, Lcom/google/android/gms/internal/du;

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/du;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    :goto_1
    sget-object v2, Lcom/google/android/gms/internal/if;->a:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/ft;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/ft;-><init>(Lcom/google/android/gms/internal/fs;)V

    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide/from16 v24, v4

    move-object/from16 v21, v3

    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget-object v2, v2, Lcom/google/android/gms/internal/du;->r:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v2

    if-nez v2, :cond_7

    :try_start_5
    new-instance v29, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget-object v2, v2, Lcom/google/android/gms/internal/du;->r:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    :try_start_6
    new-instance v2, Lcom/google/android/gms/internal/hd;

    iget-object v3, v12, Lcom/google/android/gms/internal/ds;->c:Lcom/google/android/gms/internal/ai;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/fs;->c:Lcom/google/android/gms/internal/ii;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget-object v5, v5, Lcom/google/android/gms/internal/du;->d:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget-object v7, v7, Lcom/google/android/gms/internal/du;->f:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget-object v8, v8, Lcom/google/android/gms/internal/du;->j:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget v9, v9, Lcom/google/android/gms/internal/du;->l:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget-wide v10, v10, Lcom/google/android/gms/internal/du;->k:J

    iget-object v12, v12, Lcom/google/android/gms/internal/ds;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget-boolean v13, v13, Lcom/google/android/gms/internal/du;->h:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/fs;->n:Lcom/google/android/gms/internal/br;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/fs;->n:Lcom/google/android/gms/internal/br;

    iget-object v14, v14, Lcom/google/android/gms/internal/br;->b:Lcom/google/android/gms/internal/bl;

    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/fs;->n:Lcom/google/android/gms/internal/br;

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/fs;->n:Lcom/google/android/gms/internal/br;

    iget-object v15, v15, Lcom/google/android/gms/internal/br;->c:Lcom/google/android/gms/internal/by;

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fs;->n:Lcom/google/android/gms/internal/br;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fs;->n:Lcom/google/android/gms/internal/br;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gms/internal/br;->d:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fs;->m:Lcom/google/android/gms/internal/bm;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fs;->n:Lcom/google/android/gms/internal/br;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fs;->n:Lcom/google/android/gms/internal/br;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/internal/br;->e:Lcom/google/android/gms/internal/bo;

    move-object/from16 v18, v0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/google/android/gms/internal/du;->i:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/gms/internal/du;->g:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/google/android/gms/internal/du;->n:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/internal/du;->o:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v2 .. v29}, Lcom/google/android/gms/internal/hd;-><init>(Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/ii;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/bl;Lcom/google/android/gms/internal/by;Ljava/lang/String;Lcom/google/android/gms/internal/bm;Lcom/google/android/gms/internal/bo;JLcom/google/android/gms/internal/al;JJJLjava/lang/String;Lorg/json/JSONObject;)V

    sget-object v3, Lcom/google/android/gms/internal/if;->a:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/fu;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/fu;-><init>(Lcom/google/android/gms/internal/fs;Lcom/google/android/gms/internal/hd;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v30
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    :cond_1
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/google/android/gms/internal/fs;->c(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/fs;->c()V

    iget-object v2, v12, Lcom/google/android/gms/internal/ds;->d:Lcom/google/android/gms/internal/al;

    iget-object v2, v2, Lcom/google/android/gms/internal/al;->h:[Lcom/google/android/gms/internal/al;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/fs;->a(Lcom/google/android/gms/internal/ds;)Lcom/google/android/gms/internal/al;

    move-result-object v3

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/du;->h:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8, v9}, Lcom/google/android/gms/internal/fs;->a(Lcom/google/android/gms/internal/ds;J)V

    :goto_8
    move-wide/from16 v24, v4

    move-object/from16 v21, v3

    goto/16 :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/du;->p:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/internal/fs;->a(J)V
    :try_end_8
    .catch Lcom/google/android/gms/internal/fx; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v2

    :try_start_9
    monitor-exit v30
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v2

    :cond_4
    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/google/android/gms/internal/fs;->b(J)V
    :try_end_a
    .catch Lcom/google/android/gms/internal/fx; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_8

    :cond_5
    :try_start_b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/fx;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ig;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v2, Lcom/google/android/gms/internal/du;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget-wide v8, v7, Lcom/google/android/gms/internal/du;->k:J

    invoke-direct {v2, v6, v8, v9}, Lcom/google/android/gms/internal/du;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    goto/16 :goto_1

    :catch_1
    move-exception v2

    const-string v4, "Error parsing the JSON for Active View."

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ig;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_7
    move-object/from16 v29, v3

    goto/16 :goto_3

    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_5

    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_6

    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_7
.end method

.method protected a(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->c:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->e()Lcom/google/android/gms/internal/al;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/al;->e:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/fy;

    iget-object v3, p0, Lcom/google/android/gms/internal/fs;->c:Lcom/google/android/gms/internal/ii;

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/google/android/gms/internal/fy;-><init>(Lcom/google/android/gms/internal/im;Lcom/google/android/gms/internal/ii;II)V

    sget-object v0, Lcom/google/android/gms/internal/if;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/fw;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/fw;-><init>(Lcom/google/android/gms/internal/fs;Lcom/google/android/gms/internal/fy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/fs;->d(J)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fy;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Ad-Network indicated no fill with passback URL."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/fx;

    const-string v1, "AdNetwork sent passback url"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fx;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    iget v1, v0, Lcom/google/android/gms/internal/al;->g:I

    iget v0, v0, Lcom/google/android/gms/internal/al;->d:I

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/fy;->d()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/fx;

    const-string v1, "AdNetwork timed out"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fx;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    return-void
.end method

.method public a(Lcom/google/android/gms/internal/du;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/fs;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "Received ad response."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/fs;->j:Lcom/google/android/gms/internal/du;

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/ii;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/fs;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "WebView finished loading."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fs;->k:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/fs;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->i:Lcom/google/android/gms/internal/hl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->i:Lcom/google/android/gms/internal/hl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hl;->f()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->c:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->stopLoading()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->c:Lcom/google/android/gms/internal/ii;

    invoke-static {v0}, Lcom/google/android/gms/internal/hq;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->l:Lcom/google/android/gms/internal/bj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->l:Lcom/google/android/gms/internal/bj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bj;->a()V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
