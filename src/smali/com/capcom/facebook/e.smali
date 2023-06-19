.class final Lcom/capcom/facebook/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/capcom/facebook/f;


# instance fields
.field private synthetic a:Lcom/capcom/facebook/Facebook;


# direct methods
.method constructor <init>(Lcom/capcom/facebook/Facebook;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/facebook/e;->a:Lcom/capcom/facebook/Facebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "Facebook-authorize"

    const-string v1, "Login canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/facebook/e;->a:Lcom/capcom/facebook/Facebook;

    invoke-static {v0}, Lcom/capcom/facebook/Facebook;->a(Lcom/capcom/facebook/Facebook;)Lcom/capcom/facebook/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/capcom/facebook/f;->a()V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    iget-object v0, p0, Lcom/capcom/facebook/e;->a:Lcom/capcom/facebook/Facebook;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/capcom/facebook/Facebook;->setAccessToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/capcom/facebook/e;->a:Lcom/capcom/facebook/Facebook;

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/capcom/facebook/Facebook;->setAccessExpiresIn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/capcom/facebook/e;->a:Lcom/capcom/facebook/Facebook;

    invoke-virtual {v0}, Lcom/capcom/facebook/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Login Success! access_token="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/capcom/facebook/e;->a:Lcom/capcom/facebook/Facebook;

    invoke-virtual {v2}, Lcom/capcom/facebook/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expires="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/capcom/facebook/e;->a:Lcom/capcom/facebook/Facebook;

    invoke-virtual {v2}, Lcom/capcom/facebook/Facebook;->getAccessExpires()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/facebook/e;->a:Lcom/capcom/facebook/Facebook;

    invoke-static {v0}, Lcom/capcom/facebook/Facebook;->a(Lcom/capcom/facebook/Facebook;)Lcom/capcom/facebook/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/capcom/facebook/f;->a(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/capcom/facebook/e;->a:Lcom/capcom/facebook/Facebook;

    invoke-static {v0}, Lcom/capcom/facebook/Facebook;->a(Lcom/capcom/facebook/Facebook;)Lcom/capcom/facebook/f;

    move-result-object v0

    new-instance v1, Lcom/capcom/facebook/g;

    const-string v2, "Failed to receive access token."

    invoke-direct {v1, v2}, Lcom/capcom/facebook/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/capcom/facebook/f;->a(Lcom/capcom/facebook/g;)V

    goto :goto_0
.end method

.method public final a(Lcom/capcom/facebook/d;)V
    .locals 3

    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Login failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/facebook/e;->a:Lcom/capcom/facebook/Facebook;

    invoke-static {v0}, Lcom/capcom/facebook/Facebook;->a(Lcom/capcom/facebook/Facebook;)Lcom/capcom/facebook/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/capcom/facebook/f;->a(Lcom/capcom/facebook/d;)V

    return-void
.end method

.method public final a(Lcom/capcom/facebook/g;)V
    .locals 3

    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Login failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/facebook/e;->a:Lcom/capcom/facebook/Facebook;

    invoke-static {v0}, Lcom/capcom/facebook/Facebook;->a(Lcom/capcom/facebook/Facebook;)Lcom/capcom/facebook/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/capcom/facebook/f;->a(Lcom/capcom/facebook/g;)V

    return-void
.end method
