.class Lcom/amazon/inapp/purchasing/SandboxResponseHandler$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/SandboxResponseHandler;

.field final synthetic val$response:Lcom/amazon/inapp/purchasing/PurchaseResponse;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/SandboxResponseHandler;Lcom/amazon/inapp/purchasing/PurchaseResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/SandboxResponseHandler$4;->this$0:Lcom/amazon/inapp/purchasing/SandboxResponseHandler;

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/SandboxResponseHandler$4;->val$response:Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SandboxResponseHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Running Runnable for purchaseResponse with requestId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/inapp/purchasing/SandboxResponseHandler$4;->val$response:Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getRequestId()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/SandboxResponseHandler$4;->val$response:Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-virtual {v0, v1}, Lcom/amazon/inapp/purchasing/PurchasingObserver;->onPurchaseResponse(Lcom/amazon/inapp/purchasing/PurchaseResponse;)V

    :cond_1
    return-void
.end method
