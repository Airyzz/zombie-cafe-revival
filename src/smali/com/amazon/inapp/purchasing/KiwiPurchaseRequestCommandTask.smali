.class final Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;
.super Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;


# static fields
.field private static final COMMAND_NAME:Ljava/lang/String; = "purchase_item"

.field private static final COMMAND_VERSION:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "KiwiPurchaseRequestCommandTask"


# instance fields
.field private final _sku:Ljava/lang/String;

.field private contextMgr:Lcom/amazon/android/framework/context/ContextManager;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private taskManager:Lcom/amazon/android/framework/task/TaskManager;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "purchase_item"

    const-string v1, "1.0"

    invoke-direct {p0, v0, v1, p2}, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;->_sku:Ljava/lang/String;

    const-string v0, "sku"

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;->_sku:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;->addCommandData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;)Lcom/amazon/android/framework/context/ContextManager;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;->contextMgr:Lcom/amazon/android/framework/context/ContextManager;

    return-object v0
.end method


# virtual methods
.method protected final onSuccess(Lcom/amazon/venezia/command/SuccessResult;)V
    .locals 4

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KiwiPurchaseRequestCommandTask"

    const-string v1, "onSuccess"

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lcom/amazon/venezia/command/SuccessResult;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "KiwiPurchaseRequestCommandTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "purchaseItemIntent"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "KiwiPurchaseRequestCommandTask"

    const-string v2, "found intent"

    invoke-static {v1, v2}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "purchaseItemIntent"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;->taskManager:Lcom/amazon/android/framework/task/TaskManager;

    sget-object v2, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->FOREGROUND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    new-instance v3, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask$1;

    invoke-direct {v3, p0, v0}, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask$1;-><init>(Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;Landroid/content/Intent;)V

    invoke-interface {v1, v2, v3}, Lcom/amazon/android/framework/task/TaskManager;->enqueueAtFront(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "KiwiPurchaseRequestCommandTask"

    const-string v1, "did not find intent"

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final sendFailedResponse()V
    .locals 1

    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask$2;

    invoke-direct {v0, p0}, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask$2;-><init>(Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;)V

    invoke-virtual {p0, v0}, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;->postRunnableToMainLooper(Ljava/lang/Runnable;)V

    return-void
.end method
