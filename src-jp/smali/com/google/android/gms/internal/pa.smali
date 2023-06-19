.class Lcom/google/android/gms/internal/pa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/oz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/oz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/pa;->a:Lcom/google/android/gms/internal/oz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pa;->a:Lcom/google/android/gms/internal/oz;

    invoke-static {v0}, Lcom/google/android/gms/internal/oz;->a(Lcom/google/android/gms/internal/oz;)Lcom/google/android/gms/internal/pd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pa;->a:Lcom/google/android/gms/internal/oz;

    invoke-static {v0}, Lcom/google/android/gms/internal/oz;->a(Lcom/google/android/gms/internal/oz;)Lcom/google/android/gms/internal/pd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/pd;->i:Lcom/google/android/gms/internal/hd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pa;->a:Lcom/google/android/gms/internal/oz;

    invoke-static {v0}, Lcom/google/android/gms/internal/oz;->a(Lcom/google/android/gms/internal/oz;)Lcom/google/android/gms/internal/pd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/pd;->i:Lcom/google/android/gms/internal/hd;

    iget-object v0, v0, Lcom/google/android/gms/internal/hd;->b:Lcom/google/android/gms/internal/ii;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pa;->a:Lcom/google/android/gms/internal/oz;

    invoke-static {v0}, Lcom/google/android/gms/internal/oz;->a(Lcom/google/android/gms/internal/oz;)Lcom/google/android/gms/internal/pd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/pd;->i:Lcom/google/android/gms/internal/hd;

    iget-object v0, v0, Lcom/google/android/gms/internal/hd;->b:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->a()V

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method
