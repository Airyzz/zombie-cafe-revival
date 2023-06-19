.class public final Lcom/amazon/inapp/purchasing/PurchaseResponse;
.super Ljava/lang/Object;


# static fields
.field private static final TO_STRING_FORMAT:Ljava/lang/String; = "(%s, requestId: \"%s\", purchaseRequestStatus: \"%s\", userId: \"%s\", receipt: %s)"


# instance fields
.field private final _purchaseRequestStatus:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

.field private final _receipt:Lcom/amazon/inapp/purchasing/Receipt;

.field private final _requestId:Ljava/lang/String;

.field private final _userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/inapp/purchasing/Receipt;Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseRequestStatus"

    invoke-static {p4, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    if-ne p4, v0, :cond_0

    const-string v0, "receipt"

    invoke-static {p3, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/PurchaseResponse;->_requestId:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/PurchaseResponse;->_userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/inapp/purchasing/PurchaseResponse;->_receipt:Lcom/amazon/inapp/purchasing/Receipt;

    iput-object p4, p0, Lcom/amazon/inapp/purchasing/PurchaseResponse;->_purchaseRequestStatus:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    return-void
.end method


# virtual methods
.method public final getPurchaseRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/PurchaseResponse;->_purchaseRequestStatus:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    return-object v0
.end method

.method public final getReceipt()Lcom/amazon/inapp/purchasing/Receipt;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/PurchaseResponse;->_receipt:Lcom/amazon/inapp/purchasing/Receipt;

    return-object v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/PurchaseResponse;->_requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/PurchaseResponse;->_userId:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "(%s, requestId: \"%s\", purchaseRequestStatus: \"%s\", userId: \"%s\", receipt: %s)"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/PurchaseResponse;->_requestId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/PurchaseResponse;->_purchaseRequestStatus:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/PurchaseResponse;->_userId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/PurchaseResponse;->_receipt:Lcom/amazon/inapp/purchasing/Receipt;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
