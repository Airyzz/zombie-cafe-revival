.class Lcom/google/android/gms/internal/fw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/fy;

.field final synthetic b:Lcom/google/android/gms/internal/fs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fs;Lcom/google/android/gms/internal/fy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fw;->b:Lcom/google/android/gms/internal/fs;

    iput-object p2, p0, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->b:Lcom/google/android/gms/internal/fs;

    invoke-static {v0}, Lcom/google/android/gms/internal/fs;->a(Lcom/google/android/gms/internal/fs;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->b:Lcom/google/android/gms/internal/fs;

    invoke-static {v0}, Lcom/google/android/gms/internal/fs;->c(Lcom/google/android/gms/internal/fs;)Lcom/google/android/gms/internal/du;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/du;->e:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->b:Lcom/google/android/gms/internal/fs;

    invoke-static {v0}, Lcom/google/android/gms/internal/fs;->d(Lcom/google/android/gms/internal/fs;)Lcom/google/android/gms/internal/ii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->f()Lcom/google/android/gms/internal/ik;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/fw;->b:Lcom/google/android/gms/internal/fs;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/im;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/fy;

    iget-object v2, p0, Lcom/google/android/gms/internal/fw;->b:Lcom/google/android/gms/internal/fs;

    invoke-static {v2}, Lcom/google/android/gms/internal/fs;->c(Lcom/google/android/gms/internal/fs;)Lcom/google/android/gms/internal/du;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/fy;->a(Lcom/google/android/gms/internal/du;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
