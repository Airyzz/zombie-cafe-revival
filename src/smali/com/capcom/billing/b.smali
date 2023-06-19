.class final Lcom/capcom/billing/b;
.super Lcom/capcom/billing/BillingService$BillingRequest;


# direct methods
.method public constructor <init>(Lcom/capcom/billing/BillingService;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/capcom/billing/BillingService$BillingRequest;-><init>(Lcom/capcom/billing/BillingService;I)V

    return-void
.end method


# virtual methods
.method protected final run()J
    .locals 4

    const-string v0, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v0}, Lcom/capcom/billing/b;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/capcom/billing/BillingService;->d()Lcom/a/a/a/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/a/a/a/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    const/16 v2, -0x7b

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CheckBillingSupported response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/capcom/billing/Consts$ResponseCode;->valueOf(I)Lcom/capcom/billing/Consts$ResponseCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/capcom/billing/Consts$ResponseCode;->RESULT_OK:Lcom/capcom/billing/Consts$ResponseCode;

    invoke-virtual {v1}, Lcom/capcom/billing/Consts$ResponseCode;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/capcom/billing/i;->a(Z)V

    sget-wide v0, Lcom/capcom/billing/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
