.class public final Lcom/amazon/inapp/purchasing/ItemDataResponse;
.super Ljava/lang/Object;


# static fields
.field private static final TO_STRING_FORMAT:Ljava/lang/String; = "(%s, requestId: \"%s\", itemDataRequestStatus: \"%s\", unavailableSkus: %s, itemData: %s)"


# instance fields
.field private final _itemData:Ljava/util/Map;

.field private final _itemDataRequestStatus:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

.field private final _requestId:Ljava/lang/String;

.field private final _unavailableSkus:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Set;Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;Ljava/util/Map;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemDataRequestStatus"

    invoke-static {p3, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->SUCCESSFUL_WITH_UNAVAILABLE_SKUS:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    if-ne v0, p3, :cond_0

    const-string v0, "unavailableSkus"

    invoke-static {p2, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unavailableSkus"

    invoke-static {p2, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    if-ne v0, p3, :cond_1

    const-string v0, "itemData"

    invoke-static {p4, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "itemData"

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/Validator;->validateNotEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/ItemDataResponse;->_requestId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/inapp/purchasing/ItemDataResponse;->_itemDataRequestStatus:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    if-eqz p2, :cond_2

    :goto_0
    iput-object p2, p0, Lcom/amazon/inapp/purchasing/ItemDataResponse;->_unavailableSkus:Ljava/util/Set;

    if-eqz p4, :cond_3

    :goto_1
    iput-object p4, p0, Lcom/amazon/inapp/purchasing/ItemDataResponse;->_itemData:Ljava/util/Map;

    return-void

    :cond_2
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_3
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    goto :goto_1
.end method


# virtual methods
.method public final getItemData()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/ItemDataResponse;->_itemData:Ljava/util/Map;

    return-object v0
.end method

.method public final getItemDataRequestStatus()Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/ItemDataResponse;->_itemDataRequestStatus:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    return-object v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/ItemDataResponse;->_requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUnavailableSkus()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/ItemDataResponse;->_unavailableSkus:Ljava/util/Set;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "(%s, requestId: \"%s\", itemDataRequestStatus: \"%s\", unavailableSkus: %s, itemData: %s)"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/ItemDataResponse;->_requestId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/ItemDataResponse;->_itemDataRequestStatus:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/ItemDataResponse;->_unavailableSkus:Ljava/util/Set;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/ItemDataResponse;->_itemData:Ljava/util/Map;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
