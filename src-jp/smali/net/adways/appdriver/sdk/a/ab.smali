.class public final Lnet/adways/appdriver/sdk/a/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/lang/ref/WeakReference;

.field public b:Ljava/lang/String;

.field private final c:Ljava/util/Queue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/ab;->a:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/ab;->c:Ljava/util/Queue;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/ab;->c:Ljava/util/Queue;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/ab;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public final a(Lnet/adways/appdriver/sdk/a/ag;)V
    .locals 1

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/ab;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/ab;->c:Ljava/util/Queue;

    return-object v0
.end method

.method public final run()V
    .locals 5

    const-string v1, "appdriver-log"

    const-string v2, "Communication Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lnet/adways/appdriver/sdk/a/ae;

    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/ab;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v3, v1}, Lnet/adways/appdriver/sdk/a/ae;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Lnet/adways/appdriver/sdk/a/an; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/ab;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lnet/adways/appdriver/sdk/a/af;->a(Landroid/content/Context;)Lnet/adways/appdriver/sdk/a/af;

    move-result-object v1

    invoke-virtual {v1}, Lnet/adways/appdriver/sdk/a/af;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/ab;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/ab;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lnet/adways/appdriver/sdk/a/ag;

    move-object v2, v0
    :try_end_1
    .catch Lnet/adways/appdriver/sdk/a/an; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/ab;->b:Ljava/lang/String;

    iput-object v1, v2, Lnet/adways/appdriver/sdk/a/ag;->d:Ljava/lang/String;

    new-instance v4, Lnet/adways/appdriver/sdk/a/u;

    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/ab;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v4, v1, v2}, Lnet/adways/appdriver/sdk/a/u;-><init>(Landroid/content/Context;Lnet/adways/appdriver/sdk/a/t;)V

    invoke-virtual {v4}, Lnet/adways/appdriver/sdk/a/u;->a()Lnet/adways/appdriver/sdk/a/ai;

    move-result-object v4

    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/ab;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v2, v1, v4, p0}, Lnet/adways/appdriver/sdk/a/ag;->a(Landroid/content/Context;Lnet/adways/appdriver/sdk/a/ai;Lnet/adways/appdriver/sdk/a/ab;)V

    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/ab;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lnet/adways/appdriver/sdk/a/an; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "appdriver-log"

    const-string v4, "queue task exception"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lnet/adways/appdriver/sdk/a/an;

    const-string v2, "queue task exception"

    invoke-direct {v1, v2}, Lnet/adways/appdriver/sdk/a/an;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Lnet/adways/appdriver/sdk/a/an; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :catch_1
    move-exception v1

    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/ab;->c:Ljava/util/Queue;

    invoke-virtual {v1, v2}, Lnet/adways/appdriver/sdk/a/ae;->a(Ljava/util/Collection;)V

    :cond_0
    const-string v1, "appdriver-log"

    const-string v2, "Communication aborted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_1
    :try_start_4
    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/ab;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lnet/adways/appdriver/sdk/a/ac;

    invoke-direct {v2, p0}, Lnet/adways/appdriver/sdk/a/ac;-><init>(Lnet/adways/appdriver/sdk/a/ab;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    const-string v1, "appdriver-log"

    const-string v2, "Communication End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lnet/adways/appdriver/sdk/a/an; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_3
    if-eqz v3, :cond_3

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/ab;->c:Ljava/util/Queue;

    invoke-virtual {v3, v2}, Lnet/adways/appdriver/sdk/a/ae;->a(Ljava/util/Collection;)V

    :cond_3
    const-string v2, "appdriver-log"

    const-string v3, "SDK internal error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v3, v2

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method
