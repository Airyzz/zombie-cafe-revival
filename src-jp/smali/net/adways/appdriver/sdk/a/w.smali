.class public final Lnet/adways/appdriver/sdk/a/w;
.super Ljava/lang/Object;


# static fields
.field private static a:Lnet/adways/appdriver/sdk/a/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnet/adways/appdriver/sdk/a/w;->a:Lnet/adways/appdriver/sdk/a/w;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lnet/adways/appdriver/sdk/a/w;
    .locals 2

    const-class v1, Lnet/adways/appdriver/sdk/a/w;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/adways/appdriver/sdk/a/w;->a:Lnet/adways/appdriver/sdk/a/w;

    if-nez v0, :cond_0

    new-instance v0, Lnet/adways/appdriver/sdk/a/w;

    invoke-direct {v0}, Lnet/adways/appdriver/sdk/a/w;-><init>()V

    sput-object v0, Lnet/adways/appdriver/sdk/a/w;->a:Lnet/adways/appdriver/sdk/a/w;

    :cond_0
    sget-object v0, Lnet/adways/appdriver/sdk/a/w;->a:Lnet/adways/appdriver/sdk/a/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/app/Activity;ILjava/lang/String;ILnet/adways/appdriver/sdk/b;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lnet/adways/appdriver/sdk/b;->a()I

    move-result v1

    invoke-static {v0, p2, p3, v1, p4}, Lnet/adways/appdriver/sdk/a/af;->a(Landroid/content/Context;ILjava/lang/String;II)V

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/af;->a(Landroid/content/Context;)Lnet/adways/appdriver/sdk/a/af;

    move-result-object v1

    invoke-virtual {p5}, Lnet/adways/appdriver/sdk/b;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Lnet/adways/appdriver/sdk/a/af;->a(Z)V

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/af;->a(Landroid/content/Context;)Lnet/adways/appdriver/sdk/a/af;

    move-result-object v1

    invoke-virtual {p5}, Lnet/adways/appdriver/sdk/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/adways/appdriver/sdk/a/af;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/af;->a(Landroid/content/Context;)Lnet/adways/appdriver/sdk/a/af;

    move-result-object v1

    invoke-virtual {p5}, Lnet/adways/appdriver/sdk/b;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/adways/appdriver/sdk/a/af;->a(I)V

    :goto_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lnet/adways/appdriver/sdk/a/x;

    invoke-direct {v2, p0, v0, p1}, Lnet/adways/appdriver/sdk/a/x;-><init>(Lnet/adways/appdriver/sdk/a/w;Landroid/content/Context;Landroid/app/Activity;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, p2, p3, v1, p4}, Lnet/adways/appdriver/sdk/a/af;->a(Landroid/content/Context;ILjava/lang/String;II)V
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

.method private a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lnet/adways/appdriver/sdk/a/y;

    invoke-direct {v1, p0, p1, p2}, Lnet/adways/appdriver/sdk/a/y;-><init>(Lnet/adways/appdriver/sdk/a/w;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lnet/adways/appdriver/sdk/a/w;Landroid/app/Activity;)V
    .locals 4

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lnet/adways/appdriver/sdk/a/ae;

    invoke-direct {v1, p1}, Lnet/adways/appdriver/sdk/a/ae;-><init>(Landroid/content/Context;)V

    const-string v2, "click_id"

    const-string v3, "click_id"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/adways/appdriver/sdk/a/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "identifier"

    const-string v3, "cookie_identifier"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/adways/appdriver/sdk/a/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "user"

    const-string v3, "user"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/adways/appdriver/sdk/a/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "advertisement"

    const-string v3, "advertisement"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/adways/appdriver/sdk/a/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lnet/adways/appdriver/sdk/a/w;->a(Landroid/app/Activity;ILjava/lang/String;ILnet/adways/appdriver/sdk/b;)V

    return-void
.end method

.method public final b(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "media_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "identifier"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "requestType"

    sget-object v2, Lnet/adways/appdriver/sdk/a/aj;->j:Lnet/adways/appdriver/sdk/a/aj;

    invoke-virtual {v2}, Lnet/adways/appdriver/sdk/a/aj;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lnet/adways/appdriver/sdk/a/w;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method
