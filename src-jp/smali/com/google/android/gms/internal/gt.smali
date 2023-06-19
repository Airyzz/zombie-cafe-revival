.class Lcom/google/android/gms/internal/gt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bb;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/gs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gt;->a:Lcom/google/android/gms/internal/gs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ii;Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->a:Lcom/google/android/gms/internal/gs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gs;->a(Lcom/google/android/gms/internal/gs;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/gx;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/gx;-><init>(Ljava/util/Map;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gx;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gx;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->a:Lcom/google/android/gms/internal/gs;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/gs;->a(Lcom/google/android/gms/internal/gs;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->a:Lcom/google/android/gms/internal/gs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gs;->a(Lcom/google/android/gms/internal/gs;)Ljava/lang/Object;

    move-result-object v0

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
