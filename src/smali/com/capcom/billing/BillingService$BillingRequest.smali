.class abstract Lcom/capcom/billing/BillingService$BillingRequest;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private synthetic b:Lcom/capcom/billing/BillingService;

.field protected mRequestId:J


# direct methods
.method public constructor <init>(Lcom/capcom/billing/BillingService;I)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/billing/BillingService$BillingRequest;->b:Lcom/capcom/billing/BillingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/capcom/billing/BillingService$BillingRequest;->a:I

    return-void
.end method


# virtual methods
.method public getStartId()I
    .locals 1

    iget v0, p0, Lcom/capcom/billing/BillingService$BillingRequest;->a:I

    return v0
.end method

.method protected logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "RESPONSE_CODE"

    const/16 v1, -0x7b

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/capcom/billing/Consts$ResponseCode;->valueOf(I)Lcom/capcom/billing/Consts$ResponseCode;

    move-result-object v0

    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/capcom/billing/Consts$ResponseCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "API_VERSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PACKAGE_NAME"

    iget-object v2, p0, Lcom/capcom/billing/BillingService$BillingRequest;->b:Lcom/capcom/billing/BillingService;

    invoke-virtual {v2}, Lcom/capcom/billing/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2

    const-string v0, "BillingService"

    const-string v1, "remote billing service crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/capcom/billing/BillingService;->a(Lcom/a/a/a/a;)V

    return-void
.end method

.method protected responseCodeReceived(Lcom/capcom/billing/Consts$ResponseCode;)V
    .locals 0

    return-void
.end method

.method protected abstract run()J
.end method

.method public runIfConnected()Z
    .locals 6

    const-wide/16 v4, 0x0

    const-string v0, "BillingService"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/capcom/billing/BillingService;->d()Lcom/a/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/capcom/billing/BillingService$BillingRequest;->run()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/capcom/billing/BillingService$BillingRequest;->mRequestId:J

    const-string v0, "BillingService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/capcom/billing/BillingService$BillingRequest;->mRequestId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/capcom/billing/BillingService$BillingRequest;->mRequestId:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    const-string v0, "BillingService"

    const-string v1, "Bad Request Result == -1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Lcom/capcom/billing/BillingService$BillingRequest;->mRequestId:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    invoke-static {}, Lcom/capcom/billing/BillingService;->e()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/capcom/billing/BillingService$BillingRequest;->mRequestId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/capcom/billing/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runRequest()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/capcom/billing/BillingService$BillingRequest;->runIfConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/capcom/billing/BillingService$BillingRequest;->b:Lcom/capcom/billing/BillingService;

    invoke-static {v1}, Lcom/capcom/billing/BillingService;->a(Lcom/capcom/billing/BillingService;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/capcom/billing/BillingService;->c()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
