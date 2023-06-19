.class final Lcom/capcom/zombiecafeandroid/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/capcom/facebook/f;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "WallPost Listener Cancel"

    const-string v1, "hmmmm..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/capcom/facebook/d;)V
    .locals 2

    const-string v0, "WallPost Listener Error"

    const-string v1, "Dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Lcom/capcom/facebook/g;)V
    .locals 2

    const-string v0, "WallPost Listener Error"

    const-string v1, "FaceBook"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
