.class final Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;
.super Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;


# static fields
.field private static final COMMAND_NAME:Ljava/lang/String; = "getItem_data"

.field private static final COMMAND_VERSION:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "KiwiGetItemDataRequestCommandTask"


# instance fields
.field private final _skus:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2

    const-string v0, "getItem_data"

    const-string v1, "1.0"

    invoke-direct {p0, v0, v1, p2}, Lcom/amazon/inapp/purchasing/KiwiBaseCommandTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;->_skus:Ljava/util/Set;

    const-string v0, "skus"

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;->_skus:Ljava/util/Set;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;->addCommandData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private getFailedResponse()Lcom/amazon/inapp/purchasing/ItemDataResponse;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/amazon/inapp/purchasing/ItemDataResponse;

    invoke-virtual {p0}, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;->getRequestId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/amazon/inapp/purchasing/ItemDataResponse;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;Ljava/util/Map;)V

    return-object v0
.end method

.method private notifyObserver(Lcom/amazon/inapp/purchasing/ItemDataResponse;)V
    .locals 1

    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask$1;-><init>(Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;Lcom/amazon/inapp/purchasing/ItemDataResponse;)V

    invoke-virtual {p0, v0}, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;->postRunnableToMainLooper(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected final onSuccess(Lcom/amazon/venezia/command/SuccessResult;)V
    .locals 11

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KiwiGetItemDataRequestCommandTask"

    const-string v1, "onSuccess"

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lcom/amazon/venezia/command/SuccessResult;->getData()Ljava/util/Map;

    move-result-object v7

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KiwiGetItemDataRequestCommandTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "errorMessage"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "KiwiGetItemDataRequestCommandTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSuccess: errorMessage: \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;->_skus:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "title"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "description"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "iconUrl"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "price"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "itemType"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/inapp/purchasing/Item$ItemType;->valueOf(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v3

    new-instance v0, Lcom/amazon/inapp/purchasing/Item;

    invoke-direct/range {v0 .. v6}, Lcom/amazon/inapp/purchasing/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item$ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isErrorOn()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "KiwiGetItemDataRequestCommandTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error parsing JSON for SKU "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/inapp/purchasing/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    :goto_1
    new-instance v1, Lcom/amazon/inapp/purchasing/ItemDataResponse;

    invoke-virtual {p0}, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8, v0, v9}, Lcom/amazon/inapp/purchasing/ItemDataResponse;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;Ljava/util/Map;)V

    invoke-direct {p0, v1}, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;->notifyObserver(Lcom/amazon/inapp/purchasing/ItemDataResponse;)V

    :goto_2
    return-void

    :cond_6
    sget-object v0, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->SUCCESSFUL_WITH_UNAVAILABLE_SKUS:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "KiwiGetItemDataRequestCommandTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "found error message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;->sendFailedResponse()V

    goto :goto_2
.end method

.method protected final sendFailedResponse()V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;->getFailedResponse()Lcom/amazon/inapp/purchasing/ItemDataResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/inapp/purchasing/KiwiGetItemDataRequestCommandTask;->notifyObserver(Lcom/amazon/inapp/purchasing/ItemDataResponse;)V

    return-void
.end method
