.class Lcom/capcom/a/m;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/capcom/a/j;


# direct methods
.method private constructor <init>(Lcom/capcom/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/a/m;->a:Lcom/capcom/a/j;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/capcom/a/j;Lcom/capcom/a/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/capcom/a/m;-><init>(Lcom/capcom/a/j;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/capcom/a/m;->a:Lcom/capcom/a/j;

    invoke-static {v0}, Lcom/capcom/a/j;->b(Lcom/capcom/a/j;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/capcom/a/m;->a:Lcom/capcom/a/j;

    invoke-static {v0}, Lcom/capcom/a/j;->c(Lcom/capcom/a/j;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/capcom/a/m;->a:Lcom/capcom/a/j;

    invoke-static {v0}, Lcom/capcom/a/j;->d(Lcom/capcom/a/j;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/capcom/a/m;->a:Lcom/capcom/a/j;

    invoke-static {v0}, Lcom/capcom/a/j;->e(Lcom/capcom/a/j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "Facebook-WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Webview loading URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/capcom/a/m;->a:Lcom/capcom/a/j;

    invoke-static {v0}, Lcom/capcom/a/j;->b(Lcom/capcom/a/j;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/capcom/a/m;->a:Lcom/capcom/a/j;

    invoke-static {v0}, Lcom/capcom/a/j;->a(Lcom/capcom/a/j;)Lcom/capcom/a/h;

    move-result-object v0

    new-instance v1, Lcom/capcom/a/e;

    invoke-direct {v1, p3, p2, p4}, Lcom/capcom/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/capcom/a/h;->a(Lcom/capcom/a/e;)V

    iget-object v0, p0, Lcom/capcom/a/m;->a:Lcom/capcom/a/j;

    invoke-virtual {v0}, Lcom/capcom/a/j;->dismiss()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const-string v1, "Facebook-WebView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Redirect URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "fbconnect://success"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p2}, Lcom/capcom/a/n;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v1, "error"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "error_type"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/capcom/a/m;->a:Lcom/capcom/a/j;

    invoke-static {v1}, Lcom/capcom/a/j;->a(Lcom/capcom/a/j;)Lcom/capcom/a/h;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/capcom/a/h;->a(Landroid/os/Bundle;)V

    :goto_0
    iget-object v1, p0, Lcom/capcom/a/m;->a:Lcom/capcom/a/j;

    invoke-virtual {v1}, Lcom/capcom/a/j;->dismiss()V

    :goto_1
    return v0

    :cond_1
    const-string v2, "access_denied"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "OAuthAccessDeniedException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/capcom/a/m;->a:Lcom/capcom/a/j;

    invoke-static {v1}, Lcom/capcom/a/j;->a(Lcom/capcom/a/j;)Lcom/capcom/a/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/capcom/a/h;->a()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/capcom/a/m;->a:Lcom/capcom/a/j;

    invoke-static {v2}, Lcom/capcom/a/j;->a(Lcom/capcom/a/j;)Lcom/capcom/a/h;

    move-result-object v2

    new-instance v3, Lcom/capcom/a/i;

    invoke-direct {v3, v1}, Lcom/capcom/a/i;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/capcom/a/h;->a(Lcom/capcom/a/i;)V

    goto :goto_0

    :cond_4
    const-string v1, "fbconnect://cancel"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/capcom/a/m;->a:Lcom/capcom/a/j;

    invoke-static {v1}, Lcom/capcom/a/j;->a(Lcom/capcom/a/j;)Lcom/capcom/a/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/capcom/a/h;->a()V

    iget-object v1, p0, Lcom/capcom/a/m;->a:Lcom/capcom/a/j;

    invoke-virtual {v1}, Lcom/capcom/a/j;->dismiss()V

    goto :goto_1

    :cond_5
    const-string v1, "touch"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/capcom/a/m;->a:Lcom/capcom/a/j;

    invoke-virtual {v1}, Lcom/capcom/a/j;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
