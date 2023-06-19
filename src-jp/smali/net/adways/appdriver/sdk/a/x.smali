.class final Lnet/adways/appdriver/sdk/a/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Landroid/app/Activity;

.field private synthetic c:Lnet/adways/appdriver/sdk/a/w;


# direct methods
.method constructor <init>(Lnet/adways/appdriver/sdk/a/w;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lnet/adways/appdriver/sdk/a/x;->c:Lnet/adways/appdriver/sdk/a/w;

    iput-object p2, p0, Lnet/adways/appdriver/sdk/a/x;->a:Landroid/content/Context;

    iput-object p3, p0, Lnet/adways/appdriver/sdk/a/x;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "appdriver-log"

    const-string v1, "AppDriver SDK setup start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/x;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/af;->a(Landroid/content/Context;)Lnet/adways/appdriver/sdk/a/af;

    move-result-object v0

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/af;->j()V

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/x;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/af;->a(Landroid/content/Context;)Lnet/adways/appdriver/sdk/a/af;

    move-result-object v0

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/af;->o()V

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/x;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/af;->a(Landroid/content/Context;)Lnet/adways/appdriver/sdk/a/af;

    move-result-object v0

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/af;->c()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/x;->c:Lnet/adways/appdriver/sdk/a/w;

    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/x;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lnet/adways/appdriver/sdk/a/w;->a(Lnet/adways/appdriver/sdk/a/w;Landroid/app/Activity;)V

    new-instance v1, Lnet/adways/appdriver/sdk/a/ao;

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/x;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lnet/adways/appdriver/sdk/a/ao;-><init>(Landroid/content/Context;)V

    iget-object v0, v1, Lnet/adways/appdriver/sdk/a/ao;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Lnet/adways/appdriver/sdk/a/ao;->a(Landroid/content/Context;)Lnet/adways/appdriver/sdk/a/ab;

    move-result-object v1

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/af;->a(Landroid/content/Context;)Lnet/adways/appdriver/sdk/a/af;

    move-result-object v0

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/af;->c()I

    move-result v0

    if-lez v0, :cond_4

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    new-instance v2, Lnet/adways/appdriver/sdk/a/aq;

    invoke-direct {v2}, Lnet/adways/appdriver/sdk/a/aq;-><init>()V

    invoke-virtual {v1, v2}, Lnet/adways/appdriver/sdk/a/ab;->a(Lnet/adways/appdriver/sdk/a/ag;)V

    :cond_0
    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    new-instance v0, Lnet/adways/appdriver/sdk/a/ap;

    invoke-direct {v0}, Lnet/adways/appdriver/sdk/a/ap;-><init>()V

    invoke-virtual {v1, v0}, Lnet/adways/appdriver/sdk/a/ab;->a(Lnet/adways/appdriver/sdk/a/ag;)V

    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    const-string v0, "appdriver-log"

    const-string v1, "AppDriver SDK setup end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string v0, "appdriver-log"

    const-string v1, "can not execute under indicated mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lnet/adways/appdriver/sdk/a/an; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "appdriver-log"

    const-string v2, "AppDriver SDK setup failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "appdriver-log"

    const-string v2, "AppDriver SDK internal error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
