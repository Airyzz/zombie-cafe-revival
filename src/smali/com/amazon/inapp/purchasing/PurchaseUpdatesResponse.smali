.class public final Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;
.super Ljava/lang/Object;


# static fields
.field private static final TO_STRING_FORMAT:Ljava/lang/String; = "(%s, requestId: \"%s\", purchaseUpdatesRequestStatus: \"%s\", userId: \"%s\", receipts: %s, revokedSkus: %s, offset: \"%s\", isMore: \"%b\")"


# instance fields
.field private final _isMore:Z

.field private final _offset:Lcom/amazon/inapp/purchasing/Offset;

.field private final _purchaseUpdatesRequestStatus:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

.field private final _receipts:Ljava/util/Set;

.field private final _requestId:Ljava/lang/String;

.field private final _revokedSkus:Ljava/util/Set;

.field private final _userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;Ljava/util/Set;Ljava/util/Set;Lcom/amazon/inapp/purchasing/Offset;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseUpdatesRequestStatus"

    invoke-static {p3, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offset"

    invoke-static {p6, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    if-ne v0, p3, :cond_0

    const-string v0, "userId"

    invoke-static {p2, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receipts"

    invoke-static {p4, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "revokedSkus"

    invoke-static {p5, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_requestId:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_purchaseUpdatesRequestStatus:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    if-eqz p4, :cond_1

    :goto_0
    iput-object p4, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_receipts:Ljava/util/Set;

    if-eqz p5, :cond_2

    :goto_1
    iput-object p5, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_revokedSkus:Ljava/util/Set;

    iput-object p6, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_offset:Lcom/amazon/inapp/purchasing/Offset;

    iput-boolean p7, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_isMore:Z

    return-void

    :cond_1
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p5, Ljava/util/HashSet;

    invoke-direct {p5}, Ljava/util/HashSet;-><init>()V

    goto :goto_1
.end method


# virtual methods
.method public final getOffset()Lcom/amazon/inapp/purchasing/Offset;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_offset:Lcom/amazon/inapp/purchasing/Offset;

    return-object v0
.end method

.method public final getPurchaseUpdatesRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_purchaseUpdatesRequestStatus:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    return-object v0
.end method

.method public final getReceipts()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_receipts:Ljava/util/Set;

    return-object v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRevokedSkus()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_revokedSkus:Ljava/util/Set;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_userId:Ljava/lang/String;

    return-object v0
.end method

.method public final isMore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_isMore:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "(%s, requestId: \"%s\", purchaseUpdatesRequestStatus: \"%s\", userId: \"%s\", receipts: %s, revokedSkus: %s, offset: \"%s\", isMore: \"%b\")"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_requestId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_purchaseUpdatesRequestStatus:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_userId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_receipts:Ljava/util/Set;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_revokedSkus:Ljava/util/Set;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_offset:Lcom/amazon/inapp/purchasing/Offset;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->_isMore:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
