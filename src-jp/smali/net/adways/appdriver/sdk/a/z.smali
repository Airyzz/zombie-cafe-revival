.class final Lnet/adways/appdriver/sdk/a/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lnet/adways/appdriver/sdk/a/af;

.field private synthetic b:Lnet/adways/appdriver/sdk/a/y;


# direct methods
.method constructor <init>(Lnet/adways/appdriver/sdk/a/y;Lnet/adways/appdriver/sdk/a/af;)V
    .locals 0

    iput-object p1, p0, Lnet/adways/appdriver/sdk/a/z;->b:Lnet/adways/appdriver/sdk/a/y;

    iput-object p2, p0, Lnet/adways/appdriver/sdk/a/z;->a:Lnet/adways/appdriver/sdk/a/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/z;->a:Lnet/adways/appdriver/sdk/a/af;

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/af;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/z;->b:Lnet/adways/appdriver/sdk/a/y;

    iget-object v1, v1, Lnet/adways/appdriver/sdk/a/y;->a:Landroid/app/Activity;

    const-class v2, Lnet/adways/appdriver/sdk/ADARewardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/z;->b:Lnet/adways/appdriver/sdk/a/y;

    iget-object v1, v1, Lnet/adways/appdriver/sdk/a/y;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/z;->b:Lnet/adways/appdriver/sdk/a/y;

    iget-object v1, v1, Lnet/adways/appdriver/sdk/a/y;->a:Landroid/app/Activity;

    sget v2, Lnet/adways/appdriver/sdk/a;->a:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v0, "appdriver-log"

    const-string v1, "AppDriver SDK reward end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "appdriver-log"

    const-string v1, "AppDriver SDK reward canceled as server unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
