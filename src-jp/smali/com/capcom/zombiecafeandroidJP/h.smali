.class Lcom/capcom/zombiecafeandroidJP/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/capcom/a/h;


# instance fields
.field final synthetic a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/h;->a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "Authentication with Facebook cancelled!"

    const-string v1, "bastards!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->onFacebook(Z)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->am:Z

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "loginlistener"

    const-string v1, "Entering..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/h;->a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/h;->a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->a(Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;)Lcom/capcom/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->a(Lcom/capcom/a/f;)Z

    invoke-static {v2}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->onFacebook(Z)V

    sput-boolean v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->af:Z

    sput-boolean v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->am:Z

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/h;->a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->b(Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "loginlistener"

    const-string v1, "post on wall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/h;->a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/h;->a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->c(Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/h;->a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->e()V

    goto :goto_0

    :pswitch_2
    const-string v0, "loginlistener"

    const-string v1, "upload picture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/h;->a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/h;->a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->c(Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/h;->a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->e()V

    goto :goto_0

    :pswitch_3
    const-string v0, "loginlistener"

    const-string v1, "login and fetch user info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/h;->a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->e()V

    goto :goto_0

    :pswitch_4
    const-string v0, "loginlistener"

    const-string v1, "get list of friends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/h;->a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->c()V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/h;->a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->e()V

    goto :goto_0

    :pswitch_5
    const-string v0, "loginlistener"

    const-string v1, "post story/pic to the wall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/h;->a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->d()V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/h;->a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->e()V

    goto :goto_0

    :pswitch_6
    const-string v0, "loginlistener"

    const-string v1, "Get The User Info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/h;->a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->e()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public a(Lcom/capcom/a/e;)V
    .locals 2

    const-string v0, "Authentication with Facebook failed!"

    invoke-virtual {p1}, Lcom/capcom/a/e;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->onFacebook(Z)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->am:Z

    return-void
.end method

.method public a(Lcom/capcom/a/i;)V
    .locals 2

    const-string v0, "Authentication with Facebook failed!"

    invoke-virtual {p1}, Lcom/capcom/a/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->onFacebook(Z)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->am:Z

    return-void
.end method
