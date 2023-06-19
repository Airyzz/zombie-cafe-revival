.class public final Lcom/amazon/inapp/purchasing/Receipt;
.super Ljava/lang/Object;


# static fields
.field private static final TO_STRING_FORMAT:Ljava/lang/String; = "(%s, sku: \"%s\", itemType: \"%s\", subscriptionPeriod: %s, purchaseToken: \"%s\")"


# instance fields
.field private final _isContentAvailable:Z

.field private final _itemType:Lcom/amazon/inapp/purchasing/Item$ItemType;

.field private final _purchaseToken:Ljava/lang/String;

.field private final _sku:Ljava/lang/String;

.field private final _subscriptionPeriod:Lcom/amazon/inapp/purchasing/SubscriptionPeriod;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item$ItemType;ZLcom/amazon/inapp/purchasing/SubscriptionPeriod;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sku"

    invoke-static {p1, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemType"

    invoke-static {p2, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseToken"

    invoke-static {p5, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/inapp/purchasing/Item$ItemType;->SUBSCRIPTION:Lcom/amazon/inapp/purchasing/Item$ItemType;

    if-ne v0, p2, :cond_0

    const-string v0, "subscriptionPeriod"

    invoke-static {p4, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/Receipt;->_sku:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/Receipt;->_itemType:Lcom/amazon/inapp/purchasing/Item$ItemType;

    iput-object p5, p0, Lcom/amazon/inapp/purchasing/Receipt;->_purchaseToken:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/amazon/inapp/purchasing/Receipt;->_isContentAvailable:Z

    iput-object p4, p0, Lcom/amazon/inapp/purchasing/Receipt;->_subscriptionPeriod:Lcom/amazon/inapp/purchasing/SubscriptionPeriod;

    return-void
.end method


# virtual methods
.method public final getItemType()Lcom/amazon/inapp/purchasing/Item$ItemType;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/Receipt;->_itemType:Lcom/amazon/inapp/purchasing/Item$ItemType;

    return-object v0
.end method

.method public final getPurchaseToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/Receipt;->_purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/Receipt;->_sku:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubscriptionPeriod()Lcom/amazon/inapp/purchasing/SubscriptionPeriod;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/Receipt;->_subscriptionPeriod:Lcom/amazon/inapp/purchasing/SubscriptionPeriod;

    return-object v0
.end method

.method final isContentAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazon/inapp/purchasing/Receipt;->_isContentAvailable:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "(%s, sku: \"%s\", itemType: \"%s\", subscriptionPeriod: %s, purchaseToken: \"%s\")"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/Receipt;->_sku:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/Receipt;->_itemType:Lcom/amazon/inapp/purchasing/Item$ItemType;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/Receipt;->_subscriptionPeriod:Lcom/amazon/inapp/purchasing/SubscriptionPeriod;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/Receipt;->_purchaseToken:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
