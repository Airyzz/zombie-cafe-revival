.class final Lcom/amazon/inapp/purchasing/ImplementationFactory;
.super Ljava/lang/Object;


# static fields
.field private static volatile IMPLEMENTATION_REGISTRY:Lcom/amazon/inapp/purchasing/ImplementationRegistry;

.field private static volatile IS_SANDBOX_MODE:Z

.field private static volatile IS_SANDBOX_MODE_CHECKED:Z

.field private static volatile LOG_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/LogHandler;

.field private static volatile REQUEST_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/RequestHandler;

.field private static volatile RESPONSE_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/ResponseHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getImplementationRegistry()Lcom/amazon/inapp/purchasing/ImplementationRegistry;
    .locals 2

    sget-object v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IMPLEMENTATION_REGISTRY:Lcom/amazon/inapp/purchasing/ImplementationRegistry;

    if-nez v0, :cond_1

    const-class v1, Lcom/amazon/inapp/purchasing/ImplementationFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IMPLEMENTATION_REGISTRY:Lcom/amazon/inapp/purchasing/ImplementationRegistry;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->isSandboxMode()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/amazon/inapp/purchasing/SandboxImplementationRegistry;

    invoke-direct {v0}, Lcom/amazon/inapp/purchasing/SandboxImplementationRegistry;-><init>()V

    sput-object v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IMPLEMENTATION_REGISTRY:Lcom/amazon/inapp/purchasing/ImplementationRegistry;

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IMPLEMENTATION_REGISTRY:Lcom/amazon/inapp/purchasing/ImplementationRegistry;

    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiImplementationRegistry;

    invoke-direct {v0}, Lcom/amazon/inapp/purchasing/KiwiImplementationRegistry;-><init>()V

    sput-object v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IMPLEMENTATION_REGISTRY:Lcom/amazon/inapp/purchasing/ImplementationRegistry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getInstance(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_1

    const-class v1, Lcom/amazon/inapp/purchasing/ImplementationFactory;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getImplementationRegistry()Lcom/amazon/inapp/purchasing/ImplementationRegistry;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/inapp/purchasing/ImplementationRegistry;->getImplementation(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    return-object p1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static getLogHandler()Lcom/amazon/inapp/purchasing/LogHandler;
    .locals 2

    sget-object v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->LOG_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/LogHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->LOG_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/LogHandler;

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/amazon/inapp/purchasing/LogHandler;

    sget-object v1, Lcom/amazon/inapp/purchasing/ImplementationFactory;->LOG_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/LogHandler;

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getInstance(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/inapp/purchasing/LogHandler;

    goto :goto_0
.end method

.method static getRequestHandler()Lcom/amazon/inapp/purchasing/RequestHandler;
    .locals 2

    sget-object v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->REQUEST_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/RequestHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->REQUEST_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/RequestHandler;

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/amazon/inapp/purchasing/RequestHandler;

    sget-object v1, Lcom/amazon/inapp/purchasing/ImplementationFactory;->REQUEST_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/RequestHandler;

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getInstance(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/inapp/purchasing/RequestHandler;

    goto :goto_0
.end method

.method static getResponseHandler()Lcom/amazon/inapp/purchasing/ResponseHandler;
    .locals 2

    sget-object v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->RESPONSE_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/ResponseHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->RESPONSE_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/ResponseHandler;

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/amazon/inapp/purchasing/ResponseHandler;

    sget-object v1, Lcom/amazon/inapp/purchasing/ImplementationFactory;->RESPONSE_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/ResponseHandler;

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getInstance(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/inapp/purchasing/ResponseHandler;

    goto :goto_0
.end method

.method static isSandboxMode()Z
    .locals 3

    sget-boolean v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IS_SANDBOX_MODE_CHECKED:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IS_SANDBOX_MODE:Z

    :goto_0
    return v0

    :cond_0
    const-class v1, Lcom/amazon/inapp/purchasing/ImplementationFactory;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IS_SANDBOX_MODE_CHECKED:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IS_SANDBOX_MODE:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    const-class v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "com.amazon.android.Kiwi"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IS_SANDBOX_MODE:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IS_SANDBOX_MODE_CHECKED:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IS_SANDBOX_MODE:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_3
    sput-boolean v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IS_SANDBOX_MODE:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
