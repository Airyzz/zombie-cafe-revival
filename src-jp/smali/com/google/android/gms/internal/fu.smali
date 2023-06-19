.class Lcom/google/android/gms/internal/fu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/hd;

.field final synthetic b:Lcom/google/android/gms/internal/fs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fs;Lcom/google/android/gms/internal/hd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fu;->b:Lcom/google/android/gms/internal/fs;

    iput-object p2, p0, Lcom/google/android/gms/internal/fu;->a:Lcom/google/android/gms/internal/hd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fu;->b:Lcom/google/android/gms/internal/fs;

    invoke-static {v0}, Lcom/google/android/gms/internal/fs;->a(Lcom/google/android/gms/internal/fs;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fu;->b:Lcom/google/android/gms/internal/fs;

    invoke-static {v0}, Lcom/google/android/gms/internal/fs;->b(Lcom/google/android/gms/internal/fs;)Lcom/google/android/gms/internal/fq;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/fu;->a:Lcom/google/android/gms/internal/hd;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/fq;->a(Lcom/google/android/gms/internal/hd;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
