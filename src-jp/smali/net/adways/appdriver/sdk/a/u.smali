.class public final Lnet/adways/appdriver/sdk/a/u;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lnet/adways/appdriver/sdk/a/t;

.field private final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/adways/appdriver/sdk/a/t;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/u;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lnet/adways/appdriver/sdk/a/u;->a:Lnet/adways/appdriver/sdk/a/t;

    return-void
.end method


# virtual methods
.method public final a()Lnet/adways/appdriver/sdk/a/ai;
    .locals 4

    const/16 v3, 0x1388

    sget-object v0, Lnet/adways/appdriver/sdk/a/ai;->b:Lnet/adways/appdriver/sdk/a/ai;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    :try_start_0
    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/u;->a:Lnet/adways/appdriver/sdk/a/t;

    if-eqz v0, :cond_1

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p0, Lnet/adways/appdriver/sdk/a/u;->a:Lnet/adways/appdriver/sdk/a/t;

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/u;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v3, v0}, Lnet/adways/appdriver/sdk/a/t;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "send request: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/v;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lnet/adways/appdriver/sdk/a/u;->a:Lnet/adways/appdriver/sdk/a/t;

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/u;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v3, v0}, Lnet/adways/appdriver/sdk/a/t;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    iget-object v3, p0, Lnet/adways/appdriver/sdk/a/u;->a:Lnet/adways/appdriver/sdk/a/t;

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/u;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v3, v0, v2}, Lnet/adways/appdriver/sdk/a/t;->a(Landroid/content/Context;Lorg/apache/http/HttpResponse;)Lnet/adways/appdriver/sdk/a/ai;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lnet/adways/appdriver/sdk/a/ai;->e:Lnet/adways/appdriver/sdk/a/ai;

    const-string v2, "appdriver-log"

    const-string v3, "http request canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "appdriver-log"

    const-string v3, "http request failed, retry after"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lnet/adways/appdriver/sdk/a/ai;->c:Lnet/adways/appdriver/sdk/a/ai;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    :cond_1
    :try_start_3
    const-string v0, "appdriver-log"

    const-string v2, "http url cannot be null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lnet/adways/appdriver/sdk/a/an;

    const-string v2, "request cannot be null"

    invoke-direct {v0, v2}, Lnet/adways/appdriver/sdk/a/an;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v0
.end method
