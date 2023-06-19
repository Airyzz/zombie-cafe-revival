.class Lcom/capcom/zombiecafeandroidJP/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/capcom/a/h;


# instance fields
.field final synthetic a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/k;->a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "WallPost Listener Cancel"

    const-string v1, "hmmmm..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/capcom/a/e;)V
    .locals 2

    const-string v0, "WallPost Listener Error"

    const-string v1, "Dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcom/capcom/a/i;)V
    .locals 2

    const-string v0, "WallPost Listener Error"

    const-string v1, "FaceBook"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
