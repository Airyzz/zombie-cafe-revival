.class Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;

.field final synthetic val$purchaseResponse:Lcom/amazon/inapp/purchasing/PurchaseResponse;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;Lcom/amazon/inapp/purchasing/PurchaseResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$1;->this$0:Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$1;->val$purchaseResponse:Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->getPurchasingObserver()Lcom/amazon/inapp/purchasing/PurchasingObserver;

    move-result-object v0

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "KiwiPurchaseResponseCommandTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "About to invoke onPurchaseResponse with PurchasingObserver: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "KiwiPurchaseResponseCommandTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invoking onPurchaseResponse with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$1;->val$purchaseResponse:Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$1;->val$purchaseResponse:Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-virtual {v0, v1}, Lcom/amazon/inapp/purchasing/PurchasingObserver;->onPurchaseResponse(Lcom/amazon/inapp/purchasing/PurchaseResponse;)V

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "KiwiPurchaseResponseCommandTask"

    const-string v1, "No exceptions were thrown when invoking onPurchaseResponse"

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getRequestHandler()Lcom/amazon/inapp/purchasing/RequestHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$1;->this$0:Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/inapp/purchasing/RequestHandler;->sendPurchaseResponseReceivedRequest(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
