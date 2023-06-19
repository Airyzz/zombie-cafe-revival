.class public final Lcom/google/android/gms/internal/ee;
.super Lcom/google/android/gms/internal/ey;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Landroid/content/Intent;

.field private e:Lcom/google/android/gms/internal/dy;

.field private f:Lcom/google/android/gms/internal/ed;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/internal/ed;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ey;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ee;->a:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ee;->g:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ee;->c:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ee;->d:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ee;->a:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ee;->b:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/gms/internal/ee;->f:Lcom/google/android/gms/internal/ed;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ee;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->d:Landroid/content/Intent;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ee;->c:I

    return v0
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->d:Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/internal/eh;->a(Landroid/content/Intent;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ee;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/dy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ee;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ee;->e:Lcom/google/android/gms/internal/dy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ee;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "In-app billing service connected."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->e:Lcom/google/android/gms/internal/dy;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/dy;->a(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->d:Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/internal/eh;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/eh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ee;->e:Lcom/google/android/gms/internal/dy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ee;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/dy;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ef;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ef;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ee;->f:Lcom/google/android/gms/internal/ed;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ef;->a(Lcom/google/android/gms/internal/ed;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->e:Lcom/google/android/gms/internal/dy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dy;->a()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "In-app billing service disconnected."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->e:Lcom/google/android/gms/internal/dy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dy;->a()V

    return-void
.end method
