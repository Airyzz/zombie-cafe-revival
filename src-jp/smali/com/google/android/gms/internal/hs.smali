.class final Lcom/google/android/gms/internal/hs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hs;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/hq;->e()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/hq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/hq;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/hq;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
