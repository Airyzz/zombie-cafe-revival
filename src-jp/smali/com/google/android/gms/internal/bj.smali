.class public final Lcom/google/android/gms/internal/bj;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ds;

.field private final b:Lcom/google/android/gms/internal/bv;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/Object;

.field private final e:Lcom/google/android/gms/internal/bm;

.field private f:Z

.field private g:Lcom/google/android/gms/internal/bp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/bv;Lcom/google/android/gms/internal/bm;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bj;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bj;->f:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/bj;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/bj;->a:Lcom/google/android/gms/internal/ds;

    iput-object p3, p0, Lcom/google/android/gms/internal/bj;->b:Lcom/google/android/gms/internal/bv;

    iput-object p4, p0, Lcom/google/android/gms/internal/bj;->e:Lcom/google/android/gms/internal/bm;

    return-void
.end method


# virtual methods
.method public a(JJ)Lcom/google/android/gms/internal/br;
    .locals 17

    const-string v4, "Starting mediation."

    invoke-static {v4}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/bj;->e:Lcom/google/android/gms/internal/bm;

    iget-object v4, v4, Lcom/google/android/gms/internal/bm;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/bl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying mediation network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/bl;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;)V

    iget-object v4, v9, Lcom/google/android/gms/internal/bl;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/bj;->d:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/bj;->f:Z

    if-eqz v4, :cond_2

    new-instance v4, Lcom/google/android/gms/internal/br;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/br;-><init>(I)V

    monitor-exit v15

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/google/android/gms/internal/bp;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/bj;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/bj;->b:Lcom/google/android/gms/internal/bv;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/bj;->e:Lcom/google/android/gms/internal/bm;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/bj;->a:Lcom/google/android/gms/internal/ds;

    iget-object v10, v10, Lcom/google/android/gms/internal/ds;->c:Lcom/google/android/gms/internal/ai;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/internal/bj;->a:Lcom/google/android/gms/internal/ds;

    iget-object v11, v11, Lcom/google/android/gms/internal/ds;->d:Lcom/google/android/gms/internal/al;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/bj;->a:Lcom/google/android/gms/internal/ds;

    iget-object v12, v12, Lcom/google/android/gms/internal/ds;->k:Lcom/google/android/gms/internal/ev;

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/bp;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/bv;Lcom/google/android/gms/internal/bm;Lcom/google/android/gms/internal/bl;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/ev;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/bj;->g:Lcom/google/android/gms/internal/bp;

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/bj;->g:Lcom/google/android/gms/internal/bp;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/bp;->a(JJ)Lcom/google/android/gms/internal/br;

    move-result-object v4

    iget v5, v4, Lcom/google/android/gms/internal/br;->a:I

    if-nez v5, :cond_3

    const-string v5, "Adapter succeeded."

    invoke-static {v5}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_3
    iget-object v5, v4, Lcom/google/android/gms/internal/br;->c:Lcom/google/android/gms/internal/by;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/google/android/gms/internal/if;->a:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/bk;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v4}, Lcom/google/android/gms/internal/bk;-><init>(Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/br;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    new-instance v4, Lcom/google/android/gms/internal/br;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/br;-><init>(I)V

    goto :goto_1
.end method

.method public a()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/bj;->d:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/bj;->f:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bj;->g:Lcom/google/android/gms/internal/bp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bj;->g:Lcom/google/android/gms/internal/bp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bp;->a()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
