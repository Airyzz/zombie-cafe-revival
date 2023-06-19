.class Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;

.field final synthetic val$itemDataResponse:Lcom/amazon/inapp/purchasing/ItemDataResponse;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;Lcom/amazon/inapp/purchasing/ItemDataResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask$1;->this$0:Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask$1;->val$itemDataResponse:Lcom/amazon/inapp/purchasing/ItemDataResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->getPurchasingObserver()Lcom/amazon/inapp/purchasing/PurchasingObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "KiwiGetItemDataRequestCommandTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invoking onItemDataResponse with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask$1;->val$itemDataResponse:Lcom/amazon/inapp/purchasing/ItemDataResponse;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask$1;->val$itemDataResponse:Lcom/amazon/inapp/purchasing/ItemDataResponse;

    invoke-virtual {v0, v1}, Lcom/amazon/inapp/purchasing/PurchasingObserver;->onItemDataResponse(Lcom/amazon/inapp/purchasing/ItemDataResponse;)V

    :cond_1
    return-void
.end method
