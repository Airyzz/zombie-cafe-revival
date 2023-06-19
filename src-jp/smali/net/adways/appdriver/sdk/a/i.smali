.class final Lnet/adways/appdriver/sdk/a/i;
.super Lnet/adways/appdriver/sdk/a/r;


# direct methods
.method public constructor <init>(Lnet/adways/appdriver/sdk/a/f;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p2}, Lnet/adways/appdriver/sdk/a/r;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lnet/adways/appdriver/sdk/a/r;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "appdriver://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "appdrivers://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/i;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
