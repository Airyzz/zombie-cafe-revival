.class Lcom/capcom/billing/BillingService$RequestPurchase;
.super Lcom/capcom/billing/BillingService$BillingRequest;


# instance fields
.field private synthetic a:Lcom/capcom/billing/BillingService;

.field public final mDeveloperPayload:Ljava/lang/String;

.field public final mProductId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/capcom/billing/BillingService;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/capcom/billing/BillingService$RequestPurchase;-><init>(Lcom/capcom/billing/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/capcom/billing/BillingService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/capcom/billing/BillingService$RequestPurchase;->a:Lcom/capcom/billing/BillingService;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/capcom/billing/BillingService$BillingRequest;-><init>(Lcom/capcom/billing/BillingService;I)V

    iput-object p2, p0, Lcom/capcom/billing/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    iput-object p3, p0, Lcom/capcom/billing/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected responseCodeReceived(Lcom/capcom/billing/Consts$ResponseCode;)V
    .locals 1

    iget-object v0, p0, Lcom/capcom/billing/BillingService$RequestPurchase;->a:Lcom/capcom/billing/BillingService;

    invoke-static {p0, p1}, Lcom/capcom/billing/i;->a(Lcom/capcom/billing/BillingService$RequestPurchase;Lcom/capcom/billing/Consts$ResponseCode;)V

    return-void
.end method

.method protected run()J
    .locals 4

    const-string v0, "REQUEST_PURCHASE"

    invoke-virtual {p0, v0}, Lcom/capcom/billing/BillingService$RequestPurchase;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ITEM_ID"

    iget-object v2, p0, Lcom/capcom/billing/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/capcom/billing/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "DEVELOPER_PAYLOAD"

    iget-object v2, p0, Lcom/capcom/billing/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "BillingService"

    const-string v1, "Bad requestPurchase! was -1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v0, Lcom/capcom/billing/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Lcom/capcom/billing/BillingService;->d()Lcom/a/a/a/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/a/a/a/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "PURCHASE_INTENT"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-nez v0, :cond_2

    const-string v0, "BillingService"

    const-string v1, "Error with requestPurchase"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v0, Lcom/capcom/billing/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v2}, Lcom/capcom/billing/i;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    const-string v0, "REQUEST_ID"

    sget-wide v2, Lcom/capcom/billing/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method
