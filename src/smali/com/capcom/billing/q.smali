.class final Lcom/capcom/billing/q;
.super Lcom/capcom/billing/g;


# instance fields
.field private synthetic a:Lcom/capcom/billing/SmurfsBilling;


# direct methods
.method public constructor <init>(Lcom/capcom/billing/SmurfsBilling;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/billing/q;->a:Lcom/capcom/billing/SmurfsBilling;

    invoke-direct {p0, p1, p2}, Lcom/capcom/billing/g;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/capcom/billing/BillingService$RequestPurchase;Lcom/capcom/billing/Consts$ResponseCode;)V
    .locals 4

    const-string v0, "SMURFSVILLAGE"

    const-string v1, "OnRequestPurchaseResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SmurfsBilling"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/capcom/billing/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/billing/Consts$ResponseCode;->RESULT_OK:Lcom/capcom/billing/Consts$ResponseCode;

    if-ne p2, v0, :cond_0

    const-string v0, "SmurfsBilling"

    const-string v1, "purchase was successfully sent to server"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "========3============"

    const-string v1, "========3=========="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ZOMBIE CAFE PURCHASE RESPONSE IS OK"

    const-string v1, "DEBUG TOXIN IS GIVEN TO USER!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Product ID"

    iget-object v1, p1, Lcom/capcom/billing/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "========3============"

    const-string v1, "========3=========="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/billing/q;->a:Lcom/capcom/billing/SmurfsBilling;

    invoke-virtual {v0}, Lcom/capcom/billing/SmurfsBilling;->doFinish()V

    iget-object v0, p0, Lcom/capcom/billing/q;->a:Lcom/capcom/billing/SmurfsBilling;

    iget-object v1, p1, Lcom/capcom/billing/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    const-string v2, "sending purchase request"

    invoke-static {v0, v1, v2}, Lcom/capcom/billing/SmurfsBilling;->a(Lcom/capcom/billing/SmurfsBilling;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/capcom/billing/Consts$ResponseCode;->RESULT_USER_CANCELED:Lcom/capcom/billing/Consts$ResponseCode;

    if-ne p2, v0, :cond_1

    const-string v0, "SmurfsBilling"

    const-string v1, "user canceled purchase"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/billing/q;->a:Lcom/capcom/billing/SmurfsBilling;

    iget-object v1, p1, Lcom/capcom/billing/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    const-string v2, "dismissed purchase dialog"

    invoke-static {v0, v1, v2}, Lcom/capcom/billing/SmurfsBilling;->a(Lcom/capcom/billing/SmurfsBilling;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/capcom/billing/q;->a:Lcom/capcom/billing/SmurfsBilling;

    invoke-virtual {v0}, Lcom/capcom/billing/SmurfsBilling;->doFinish()V

    goto :goto_0

    :cond_1
    const-string v0, "SmurfsBilling"

    const-string v1, "purchase failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/billing/q;->a:Lcom/capcom/billing/SmurfsBilling;

    iget-object v1, p1, Lcom/capcom/billing/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request purchase returned "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/capcom/billing/SmurfsBilling;->a(Lcom/capcom/billing/SmurfsBilling;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/capcom/billing/q;->a:Lcom/capcom/billing/SmurfsBilling;

    invoke-virtual {v0}, Lcom/capcom/billing/SmurfsBilling;->doFinish()V

    goto :goto_0
.end method

.method public final a(Lcom/capcom/billing/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "SmurfsBilling"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPurchaseStateChange() itemId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/capcom/billing/q;->a:Lcom/capcom/billing/SmurfsBilling;

    invoke-virtual {p1}, Lcom/capcom/billing/Consts$PurchaseState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/capcom/billing/SmurfsBilling;->a(Lcom/capcom/billing/SmurfsBilling;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/capcom/billing/Consts$PurchaseState;->PURCHASED:Lcom/capcom/billing/Consts$PurchaseState;

    if-ne p1, v0, :cond_0

    const-string v0, "ONPURCHASESTATECHANGED"

    const-string v1, "OWNED ITEMS SHOULD BE ADDED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/billing/q;->a:Lcom/capcom/billing/SmurfsBilling;

    invoke-static {v0}, Lcom/capcom/billing/SmurfsBilling;->a(Lcom/capcom/billing/SmurfsBilling;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/capcom/billing/q;->a:Lcom/capcom/billing/SmurfsBilling;

    invoke-static {v0}, Lcom/capcom/billing/SmurfsBilling;->b(Lcom/capcom/billing/SmurfsBilling;)Lcom/capcom/billing/p;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/billing/q;->a:Lcom/capcom/billing/SmurfsBilling;

    invoke-static {v1}, Lcom/capcom/billing/SmurfsBilling;->a(Lcom/capcom/billing/SmurfsBilling;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/capcom/billing/p;->a(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/capcom/billing/q;->a:Lcom/capcom/billing/SmurfsBilling;

    invoke-static {v0}, Lcom/capcom/billing/SmurfsBilling;->c(Lcom/capcom/billing/SmurfsBilling;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/capcom/billing/q;->a:Lcom/capcom/billing/SmurfsBilling;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/capcom/billing/SmurfsBilling;->a(Lcom/capcom/billing/SmurfsBilling;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    const-string v0, "SmurfsBilling"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/capcom/billing/q;->a:Lcom/capcom/billing/SmurfsBilling;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/capcom/billing/SmurfsBilling;->showDialog(I)V

    :cond_0
    return-void
.end method
