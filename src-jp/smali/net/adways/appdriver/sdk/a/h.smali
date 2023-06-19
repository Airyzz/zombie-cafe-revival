.class final Lnet/adways/appdriver/sdk/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lnet/adways/appdriver/sdk/a/g;


# direct methods
.method constructor <init>(Lnet/adways/appdriver/sdk/a/g;)V
    .locals 0

    iput-object p1, p0, Lnet/adways/appdriver/sdk/a/h;->a:Lnet/adways/appdriver/sdk/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/h;->a:Lnet/adways/appdriver/sdk/a/g;

    iget-object v0, v0, Lnet/adways/appdriver/sdk/a/g;->c:Lnet/adways/appdriver/sdk/a/f;

    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/h;->a:Lnet/adways/appdriver/sdk/a/g;

    iget-object v1, v1, Lnet/adways/appdriver/sdk/a/g;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lnet/adways/appdriver/sdk/a/f;->a(Lnet/adways/appdriver/sdk/a/f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/v;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/h;->a:Lnet/adways/appdriver/sdk/a/g;

    iget-object v1, v1, Lnet/adways/appdriver/sdk/a/g;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/adways/appdriver/sdk/a/an; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "appdriver-log"

    const-string v2, "failed to load cross wall view"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
