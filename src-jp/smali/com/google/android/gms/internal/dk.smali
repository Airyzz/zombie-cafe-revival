.class Lcom/google/android/gms/internal/dk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/di;

.field final synthetic b:Lcom/google/android/gms/internal/dj;

.field private final c:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dj;Lcom/google/android/gms/internal/di;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/dk;->b:Lcom/google/android/gms/internal/dj;

    iput-object p2, p0, Lcom/google/android/gms/internal/dk;->a:Lcom/google/android/gms/internal/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->a:Lcom/google/android/gms/internal/di;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dk;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/di;

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->b:Lcom/google/android/gms/internal/dj;

    invoke-static {v1}, Lcom/google/android/gms/internal/dj;->a(Lcom/google/android/gms/internal/dj;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/di;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->b:Lcom/google/android/gms/internal/dj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dj;->b()V

    :cond_0
    return-void
.end method
