.class Lcom/google/android/gms/internal/gu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bb;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/gs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gu;->a:Lcom/google/android/gms/internal/gs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ii;Ljava/util/Map;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->a:Lcom/google/android/gms/internal/gs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gs;->a(Lcom/google/android/gms/internal/gs;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/gx;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/gx;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gx;->c()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "URL missing in loadAdUrl GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->e(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const-string v0, "%40mediation_adapters%40"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ii;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v0, "check_adapters"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/gu;->a:Lcom/google/android/gms/internal/gs;

    invoke-static {v5}, Lcom/google/android/gms/internal/gs;->b(Lcom/google/android/gms/internal/gs;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/google/android/gms/internal/hk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "%40mediation_adapters%40"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad request URL modified to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->d(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->a:Lcom/google/android/gms/internal/gs;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/gs;->a(Lcom/google/android/gms/internal/gs;Lcom/google/android/gms/internal/gx;)Lcom/google/android/gms/internal/gx;

    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->a:Lcom/google/android/gms/internal/gs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gs;->a(Lcom/google/android/gms/internal/gs;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
