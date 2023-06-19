.class final Lcom/capcom/zombiecafeandroid/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/capcom/facebook/f;


# instance fields
.field private synthetic a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroid/j;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->onFacebook(Z)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mAllowLogin:Z

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "loginlistener"

    const-string v1, "Entering..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/j;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/j;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->a(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)Lcom/capcom/facebook/Facebook;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->saveCredentials(Lcom/capcom/facebook/Facebook;)Z

    invoke-static {v2}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->onFacebook(Z)V

    sput-boolean v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mLoggedIn:Z

    sput-boolean v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mAllowLogin:Z

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/j;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "loginlistener"

    const-string v1, "post on wall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/j;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/j;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->c(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->postToWall(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "loginlistener"

    const-string v1, "upload picture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/j;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/j;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->c(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->uploadPicture(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "loginlistener"

    const-string v1, "login and fetch user info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_4
    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/j;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->getInfo()V

    goto :goto_0

    :pswitch_5
    const-string v0, "loginlistener"

    const-string v1, "get list of friends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/j;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->getZombieFriends()V

    goto :goto_0

    :pswitch_6
    const-string v0, "loginlistener"

    const-string v1, "post story/pic to the wall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/j;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->postStory()V

    goto :goto_0

    :pswitch_7
    const-string v0, "loginlistener"

    const-string v1, "Get The User Info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Lcom/capcom/facebook/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->onFacebook(Z)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mAllowLogin:Z

    return-void
.end method

.method public final a(Lcom/capcom/facebook/g;)V
    .locals 2

    const-string v0, "Authentication with Facebook failed!"

    invoke-virtual {p1}, Lcom/capcom/facebook/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->onFacebook(Z)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mAllowLogin:Z

    return-void
.end method
