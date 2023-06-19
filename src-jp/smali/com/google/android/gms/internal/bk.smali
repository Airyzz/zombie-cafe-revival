.class Lcom/google/android/gms/internal/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/br;

.field final synthetic b:Lcom/google/android/gms/internal/bj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/br;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bk;->b:Lcom/google/android/gms/internal/bj;

    iput-object p2, p0, Lcom/google/android/gms/internal/bk;->a:Lcom/google/android/gms/internal/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->a:Lcom/google/android/gms/internal/br;

    iget-object v0, v0, Lcom/google/android/gms/internal/br;->c:Lcom/google/android/gms/internal/by;

    invoke-interface {v0}, Lcom/google/android/gms/internal/by;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not destroy mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
