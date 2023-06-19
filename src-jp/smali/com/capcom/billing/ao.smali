.class Lcom/capcom/billing/ao;
.super Lcom/capcom/billing/ac;


# instance fields
.field final synthetic a:Lcom/capcom/billing/SmurfsBilling;


# direct methods
.method public constructor <init>(Lcom/capcom/billing/SmurfsBilling;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/billing/ao;->a:Lcom/capcom/billing/SmurfsBilling;

    invoke-direct {p0, p1, p2}, Lcom/capcom/billing/ac;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/capcom/billing/g;Lcom/capcom/billing/j;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "SMURFSVILLAGE"

    const-string v1, "OnRequestPurchaseResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SmurfsBilling"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/capcom/billing/g;->c:Ljava/lang/String;

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

    sget-object v0, Lcom/capcom/billing/j;->a:Lcom/capcom/billing/j;

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

    iget-object v1, p1, Lcom/capcom/billing/g;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "========3============"

    const-string v1, "========3=========="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/billing/ao;->a:Lcom/capcom/billing/SmurfsBilling;

    invoke-virtual {v0}, Lcom/capcom/billing/SmurfsBilling;->a()V

    iget-object v0, p0, Lcom/capcom/billing/ao;->a:Lcom/capcom/billing/SmurfsBilling;

    iget-object v1, p1, Lcom/capcom/billing/g;->c:Ljava/lang/String;

    const-string v2, "sending purchase request"

    invoke-static {v0, v1, v2}, Lcom/capcom/billing/SmurfsBilling;->a(Lcom/capcom/billing/SmurfsBilling;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/capcom/billing/j;->b:Lcom/capcom/billing/j;

    if-ne p2, v0, :cond_1

    const-string v0, "SmurfsBilling"

    const-string v1, "user canceled purchase"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/billing/ao;->a:Lcom/capcom/billing/SmurfsBilling;

    iget-object v1, p1, Lcom/capcom/billing/g;->c:Ljava/lang/String;

    const-string v2, "dismissed purchase dialog"

    invoke-static {v0, v1, v2}, Lcom/capcom/billing/SmurfsBilling;->a(Lcom/capcom/billing/SmurfsBilling;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->setPurchasingFlag(Z)V

    invoke-static {v4}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->setOpenPurchaceScreenFlag(Z)V

    iget-object v0, p0, Lcom/capcom/billing/ao;->a:Lcom/capcom/billing/SmurfsBilling;

    invoke-virtual {v0}, Lcom/capcom/billing/SmurfsBilling;->a()V

    goto :goto_0

    :cond_1
    const-string v0, "SmurfsBilling"

    const-string v1, "purchase failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/billing/ao;->a:Lcom/capcom/billing/SmurfsBilling;

    iget-object v1, p1, Lcom/capcom/billing/g;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request purchase returned "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/capcom/billing/SmurfsBilling;->a(Lcom/capcom/billing/SmurfsBilling;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->setPurchasingFlag(Z)V

    invoke-static {v4}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->setOpenPurchaceScreenFlag(Z)V

    iget-object v0, p0, Lcom/capcom/billing/ao;->a:Lcom/capcom/billing/SmurfsBilling;

    invoke-virtual {v0}, Lcom/capcom/billing/SmurfsBilling;->a()V

    goto :goto_0
.end method
