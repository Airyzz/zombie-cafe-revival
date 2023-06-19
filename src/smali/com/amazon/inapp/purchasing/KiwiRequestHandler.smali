.class final Lcom/amazon/inapp/purchasing/KiwiRequestHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/inapp/purchasing/RequestHandler;


# static fields
.field static final HANDLER_THREAD_NAME:Ljava/lang/String; = "KiwiRequestHandlerHandlerThread"

.field private static final TAG:Ljava/lang/String; = "KiwiRequestHandler"


# instance fields
.field private final _handler:Lcom/amazon/inapp/purchasing/HandlerAdapter;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KiwiRequestHandlerHandlerThread"

    invoke-static {v0}, Lcom/amazon/inapp/purchasing/HandlerManager;->getHandlerAdapter(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/HandlerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler;->_handler:Lcom/amazon/inapp/purchasing/HandlerAdapter;

    return-void
.end method


# virtual methods
.method public final sendContentDownloadRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final sendGetUserIdRequest(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KiwiRequestHandler"

    const-string v1, "sendGetUserIdRequest"

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$1;-><init>(Lcom/amazon/inapp/purchasing/KiwiRequestHandler;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler;->_handler:Lcom/amazon/inapp/purchasing/HandlerAdapter;

    invoke-virtual {v1, v0}, Lcom/amazon/inapp/purchasing/HandlerAdapter;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendItemDataRequest(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KiwiRequestHandler"

    const-string v1, "sendItemDataRequest"

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$3;-><init>(Lcom/amazon/inapp/purchasing/KiwiRequestHandler;Ljava/util/Set;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler;->_handler:Lcom/amazon/inapp/purchasing/HandlerAdapter;

    invoke-virtual {v1, v0}, Lcom/amazon/inapp/purchasing/HandlerAdapter;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendPurchaseRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KiwiRequestHandler"

    const-string v1, "sendPurchaseRequest"

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$2;-><init>(Lcom/amazon/inapp/purchasing/KiwiRequestHandler;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler;->_handler:Lcom/amazon/inapp/purchasing/HandlerAdapter;

    invoke-virtual {v1, v0}, Lcom/amazon/inapp/purchasing/HandlerAdapter;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendPurchaseResponseReceivedRequest(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KiwiRequestHandler"

    const-string v1, "sendPurchaseResponseReceivedRequest"

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$5;

    invoke-direct {v0, p0, p1}, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$5;-><init>(Lcom/amazon/inapp/purchasing/KiwiRequestHandler;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler;->_handler:Lcom/amazon/inapp/purchasing/HandlerAdapter;

    invoke-virtual {v1, v0}, Lcom/amazon/inapp/purchasing/HandlerAdapter;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendPurchaseUpdatesRequest(Lcom/amazon/inapp/purchasing/Offset;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KiwiRequestHandler"

    const-string v1, "sendPurchaseUpdatesRequest"

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$4;-><init>(Lcom/amazon/inapp/purchasing/KiwiRequestHandler;Lcom/amazon/inapp/purchasing/Offset;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler;->_handler:Lcom/amazon/inapp/purchasing/HandlerAdapter;

    invoke-virtual {v1, v0}, Lcom/amazon/inapp/purchasing/HandlerAdapter;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
