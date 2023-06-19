.class final Lnet/adways/appdriver/sdk/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lnet/adways/appdriver/sdk/a/r;


# direct methods
.method constructor <init>(Lnet/adways/appdriver/sdk/a/r;)V
    .locals 0

    iput-object p1, p0, Lnet/adways/appdriver/sdk/a/s;->a:Lnet/adways/appdriver/sdk/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Lnet/adways/appdriver/sdk/a/u;

    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/s;->a:Lnet/adways/appdriver/sdk/a/r;

    iget-object v1, v1, Lnet/adways/appdriver/sdk/a/r;->a:Landroid/app/Activity;

    new-instance v2, Lnet/adways/appdriver/sdk/a/l;

    iget-object v3, p0, Lnet/adways/appdriver/sdk/a/s;->a:Lnet/adways/appdriver/sdk/a/r;

    iget-object v3, v3, Lnet/adways/appdriver/sdk/a/r;->b:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Lnet/adways/appdriver/sdk/a/l;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v0, v1, v2}, Lnet/adways/appdriver/sdk/a/u;-><init>(Landroid/content/Context;Lnet/adways/appdriver/sdk/a/t;)V

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/u;->a()Lnet/adways/appdriver/sdk/a/ai;

    return-void
.end method
