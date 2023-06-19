.class Lcom/amazon/inapp/purchasing/SandboxRequestHandler$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/SandboxRequestHandler;

.field final synthetic val$offset:Lcom/amazon/inapp/purchasing/Offset;

.field final synthetic val$response:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/SandboxRequestHandler;Lcom/amazon/inapp/purchasing/Offset;Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$5;->this$0:Lcom/amazon/inapp/purchasing/SandboxRequestHandler;

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$5;->val$offset:Lcom/amazon/inapp/purchasing/Offset;

    iput-object p3, p0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$5;->val$response:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SandboxRequestHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Running runnable for sendPurchaseUpdatesRequest with offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$5;->val$offset:Lcom/amazon/inapp/purchasing/Offset;

    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/Offset;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->getPurchasingObserver()Lcom/amazon/inapp/purchasing/PurchasingObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/SandboxRequestHandler$5;->val$response:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    invoke-virtual {v0, v1}, Lcom/amazon/inapp/purchasing/PurchasingObserver;->onPurchaseUpdatesResponse(Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)V

    :cond_1
    return-void
.end method
