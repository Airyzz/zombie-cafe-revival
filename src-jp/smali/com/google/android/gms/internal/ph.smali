.class Lcom/google/android/gms/internal/ph;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/oz;

.field final synthetic b:Lcom/google/android/gms/internal/pg;

.field private final c:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/pg;Lcom/google/android/gms/internal/oz;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ph;->b:Lcom/google/android/gms/internal/pg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ph;->a:Lcom/google/android/gms/internal/oz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/ph;->a:Lcom/google/android/gms/internal/oz;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ph;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ph;->b:Lcom/google/android/gms/internal/pg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/pg;->a(Lcom/google/android/gms/internal/pg;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ph;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/oz;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ph;->b:Lcom/google/android/gms/internal/pg;

    invoke-static {v1}, Lcom/google/android/gms/internal/pg;->a(Lcom/google/android/gms/internal/pg;)Lcom/google/android/gms/internal/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/oz;->b(Lcom/google/android/gms/internal/ai;)V

    :cond_0
    return-void
.end method
