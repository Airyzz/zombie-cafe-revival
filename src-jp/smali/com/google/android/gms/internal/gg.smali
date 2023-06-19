.class public Lcom/google/android/gms/internal/gg;
.super Lcom/google/android/gms/internal/kq;


# instance fields
.field final a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;I)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/kq;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;[Ljava/lang/String;)V

    iput p4, p0, Lcom/google/android/gms/internal/gg;->a:I

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gl;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/gm;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gl;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.service.START"

    return-object v0
.end method

.method protected a(Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/internal/kv;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/google/android/gms/internal/gg;->a:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gg;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/ll;->g(Lcom/google/android/gms/internal/lh;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gg;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gl;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    return-object v0
.end method

.method public c()Lcom/google/android/gms/internal/gl;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/kq;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gl;

    return-object v0
.end method
