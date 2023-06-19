.class final Lnet/adways/appdriver/sdk/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/webkit/WebView;

.field final synthetic c:Lnet/adways/appdriver/sdk/a/b;


# direct methods
.method constructor <init>(Lnet/adways/appdriver/sdk/a/b;Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lnet/adways/appdriver/sdk/a/c;->c:Lnet/adways/appdriver/sdk/a/b;

    iput-object p2, p0, Lnet/adways/appdriver/sdk/a/c;->a:Landroid/app/Activity;

    iput-object p3, p0, Lnet/adways/appdriver/sdk/a/c;->b:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Lnet/adways/appdriver/sdk/a/u;

    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/c;->a:Landroid/app/Activity;

    new-instance v2, Lnet/adways/appdriver/sdk/a/a;

    iget-object v3, p0, Lnet/adways/appdriver/sdk/a/c;->c:Lnet/adways/appdriver/sdk/a/b;

    invoke-static {v3}, Lnet/adways/appdriver/sdk/a/b;->a(Lnet/adways/appdriver/sdk/a/b;)Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/adways/appdriver/sdk/a/a;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v0, v1, v2}, Lnet/adways/appdriver/sdk/a/u;-><init>(Landroid/content/Context;Lnet/adways/appdriver/sdk/a/t;)V

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/u;->a()Lnet/adways/appdriver/sdk/a/ai;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lnet/adways/appdriver/sdk/a/d;

    invoke-direct {v1, p0}, Lnet/adways/appdriver/sdk/a/d;-><init>(Lnet/adways/appdriver/sdk/a/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
