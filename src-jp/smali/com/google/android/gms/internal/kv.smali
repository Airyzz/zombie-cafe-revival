.class public final Lcom/google/android/gms/internal/kv;
.super Lcom/google/android/gms/internal/lj;


# instance fields
.field private a:Lcom/google/android/gms/internal/kq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/kq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/lj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/kv;->a:Lcom/google/android/gms/internal/kq;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "onPostInitComplete can be called only once per call to getServiceFromBroker"

    iget-object v1, p0, Lcom/google/android/gms/internal/kv;->a:Lcom/google/android/gms/internal/kq;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ls;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/kv;->a:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/kq;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/kv;->a:Lcom/google/android/gms/internal/kq;

    return-void
.end method
