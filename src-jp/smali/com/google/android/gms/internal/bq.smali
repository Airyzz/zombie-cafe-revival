.class Lcom/google/android/gms/internal/bq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/bo;

.field final synthetic b:Lcom/google/android/gms/internal/bp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bp;

    iput-object p2, p0, Lcom/google/android/gms/internal/bq;->a:Lcom/google/android/gms/internal/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bp;

    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/bp;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bp;

    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->b(Lcom/google/android/gms/internal/bp;)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bp;

    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bp;

    invoke-static {v2}, Lcom/google/android/gms/internal/bp;->c(Lcom/google/android/gms/internal/bp;)Lcom/google/android/gms/internal/by;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/by;)Lcom/google/android/gms/internal/by;

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bp;

    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->d(Lcom/google/android/gms/internal/bp;)Lcom/google/android/gms/internal/by;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bp;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/bp;->a(I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->a:Lcom/google/android/gms/internal/bo;

    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bp;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/bo;->a(Lcom/google/android/gms/internal/bs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bp;

    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->a:Lcom/google/android/gms/internal/bo;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/bo;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
