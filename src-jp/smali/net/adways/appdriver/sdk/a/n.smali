.class public Lnet/adways/appdriver/sdk/a/n;
.super Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "landscape"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/adways/appdriver/sdk/a/n;->setRequestedOrientation(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/adways/appdriver/sdk/a/n;->setRequestedOrientation(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lnet/adways/appdriver/sdk/a/n;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/adways/appdriver/sdk/a/n;->setResult(I)V

    invoke-virtual {p0}, Lnet/adways/appdriver/sdk/a/n;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "requestType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/aj;->valueOf(Ljava/lang/String;)Lnet/adways/appdriver/sdk/a/aj;

    move-result-object v0

    const-string v2, "orientation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnet/adways/appdriver/sdk/a/o;->a:[I

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/aj;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lnet/adways/appdriver/sdk/a/p;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Lnet/adways/appdriver/sdk/a/p;->a(Landroid/app/Activity;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/adways/appdriver/sdk/a/n;->setResult(I)V
    :try_end_0
    .catch Lnet/adways/appdriver/sdk/a/an; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    return-void

    :pswitch_0
    new-instance v0, Lnet/adways/appdriver/sdk/a/k;

    invoke-direct {v0, v1}, Lnet/adways/appdriver/sdk/a/k;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lnet/adways/appdriver/sdk/a/e;

    invoke-direct {v0, v1}, Lnet/adways/appdriver/sdk/a/e;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lnet/adways/appdriver/sdk/a/j;

    invoke-direct {v0, v1}, Lnet/adways/appdriver/sdk/a/j;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "width"

    invoke-virtual {p0}, Lnet/adways/appdriver/sdk/a/n;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "height"

    invoke-virtual {p0}, Lnet/adways/appdriver/sdk/a/n;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lnet/adways/appdriver/sdk/a/f;

    invoke-direct {v0, v1}, Lnet/adways/appdriver/sdk/a/f;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v2}, Lnet/adways/appdriver/sdk/a/n;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lnet/adways/appdriver/sdk/a/b;

    invoke-direct {v0, v1}, Lnet/adways/appdriver/sdk/a/b;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v2}, Lnet/adways/appdriver/sdk/a/n;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lnet/adways/appdriver/sdk/a/n;->finish()V
    :try_end_1
    .catch Lnet/adways/appdriver/sdk/a/an; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "appdriver-log"

    const-string v2, "reward show failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lnet/adways/appdriver/sdk/a/n;->finish()V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "appdriver-log"

    const-string v2, "AppDriver SDK internal error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lnet/adways/appdriver/sdk/a/n;->finish()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
