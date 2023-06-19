.class final Lnet/adways/appdriver/sdk/a/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lnet/adways/appdriver/sdk/a/ab;


# direct methods
.method constructor <init>(Lnet/adways/appdriver/sdk/a/ab;)V
    .locals 0

    iput-object p1, p0, Lnet/adways/appdriver/sdk/a/ac;->a:Lnet/adways/appdriver/sdk/a/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/ac;->a:Lnet/adways/appdriver/sdk/a/ab;

    iget-object v2, v2, Lnet/adways/appdriver/sdk/a/ab;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/ac;->a:Lnet/adways/appdriver/sdk/a/ab;

    iget-object v0, v0, Lnet/adways/appdriver/sdk/a/ab;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "show browser:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/ac;->a:Lnet/adways/appdriver/sdk/a/ab;

    iget-object v2, v2, Lnet/adways/appdriver/sdk/a/ab;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/v;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/ac;->a:Lnet/adways/appdriver/sdk/a/ab;

    iget-object v0, v0, Lnet/adways/appdriver/sdk/a/ab;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
