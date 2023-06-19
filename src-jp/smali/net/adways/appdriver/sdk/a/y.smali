.class final Lnet/adways/appdriver/sdk/a/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lnet/adways/appdriver/sdk/a/w;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Lnet/adways/appdriver/sdk/a/y;->a:Landroid/app/Activity;

    iput-object p3, p0, Lnet/adways/appdriver/sdk/a/y;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    const-string v0, "appdriver-log"

    const-string v1, "AppDriver SDK open OfferWall start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/y;->a:Landroid/app/Activity;

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/af;->a(Landroid/content/Context;)Lnet/adways/appdriver/sdk/a/af;

    move-result-object v0

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/af;->p()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/af;->j()V

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/af;->o()V

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lnet/adways/appdriver/sdk/a/z;

    invoke-direct {v2, p0, v0}, Lnet/adways/appdriver/sdk/a/z;-><init>(Lnet/adways/appdriver/sdk/a/y;Lnet/adways/appdriver/sdk/a/af;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lnet/adways/appdriver/sdk/a/an; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "appdriver-log"

    const-string v2, "AppDriver SDK reward failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "appdriver-log"

    const-string v2, "AppDriver SDK internal error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
