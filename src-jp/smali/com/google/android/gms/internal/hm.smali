.class Lcom/google/android/gms/internal/hm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/hl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hm;->a:Lcom/google/android/gms/internal/hl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/hm;->a:Lcom/google/android/gms/internal/hl;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/hl;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/gms/internal/hm;->a:Lcom/google/android/gms/internal/hl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hl;->a()V

    return-void
.end method
