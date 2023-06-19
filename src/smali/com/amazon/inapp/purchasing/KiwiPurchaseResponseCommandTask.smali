.class final Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;
.super Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;


# static fields
.field private static final COMMAND_NAME:Ljava/lang/String; = "purchase_response"

.field private static final COMMAND_VERSION:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "KiwiPurchaseResponseCommandTask"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "purchase_response"

    const-string v1, "1.0"

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final onSuccess(Lcom/amazon/venezia/command/SuccessResult;)V
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KiwiPurchaseResponseCommandTask"

    const-string v1, "onSuccess"

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lcom/amazon/venezia/command/SuccessResult;->getData()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KiwiPurchaseResponseCommandTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "data: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "errorMessage"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "userId"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "receipt"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "KiwiPurchaseResponseCommandTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onSuccess: errorMessage: \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" receipt: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v4, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    invoke-virtual {p0, v0}, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v2}, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "orderStatus"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->valueOf(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    :try_start_2
    sget-object v2, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    if-ne v2, v0, :cond_6

    invoke-virtual {p0, v4}, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;->getReceiptFromReceiptJson(Lorg/json/JSONObject;)Lcom/amazon/inapp/purchasing/Receipt;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;->verifyReceipt(Ljava/lang/String;Lcom/amazon/inapp/purchasing/Receipt;Lorg/json/JSONObject;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v0, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v3

    :cond_3
    :goto_1
    move-object v3, v2

    :goto_2
    new-instance v2, Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-virtual {p0}, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1, v3, v0}, Lcom/amazon/inapp/purchasing/PurchaseResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/inapp/purchasing/Receipt;Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;)V

    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$1;

    invoke-direct {v0, p0, v2}, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$1;-><init>(Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;Lcom/amazon/inapp/purchasing/PurchaseResponse;)V

    invoke-virtual {p0, v0}, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;->postRunnableToMainLooper(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v2

    :try_start_3
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isErrorOn()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "KiwiPurchaseResponseCommandTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid order status "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/inapp/purchasing/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object v0, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isErrorOn()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "KiwiPurchaseResponseCommandTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error parsing receipt JSON: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/inapp/purchasing/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-object v0, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    goto :goto_2

    :cond_6
    move-object v2, v3

    goto :goto_1

    :cond_7
    move-object v0, v4

    goto :goto_2
.end method

.method protected final sendFailedResponse()V
    .locals 1

    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$2;

    invoke-direct {v0, p0}, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask$2;-><init>(Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;)V

    invoke-virtual {p0, v0}, Lcom/amazon/inapp/purchasing/KiwiPurchaseResponseCommandTask;->postRunnableToMainLooper(Ljava/lang/Runnable;)V

    return-void
.end method
