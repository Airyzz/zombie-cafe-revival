.class public Lcom/capcom/billing/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/capcom/billing/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 2

    const-class v0, Lcom/capcom/billing/i;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/capcom/billing/i;->a:Lcom/capcom/billing/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/capcom/billing/i;->a:Lcom/capcom/billing/g;

    if-nez v0, :cond_0

    const-string v0, "ResponseHandler"

    const-string v1, "UI is not running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/capcom/billing/i;->a:Lcom/capcom/billing/g;

    invoke-virtual {v0, p0, p1}, Lcom/capcom/billing/g;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/capcom/billing/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 9

    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/capcom/billing/j;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/capcom/billing/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/capcom/billing/Consts$PurchaseState;JLjava/lang/String;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Lcom/capcom/billing/BillingService$RequestPurchase;Lcom/capcom/billing/Consts$ResponseCode;)V
    .locals 4

    sget-object v0, Lcom/capcom/billing/i;->a:Lcom/capcom/billing/g;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/capcom/billing/i;->a:Lcom/capcom/billing/g;

    invoke-virtual {v0, p0, p1}, Lcom/capcom/billing/g;->a(Lcom/capcom/billing/BillingService$RequestPurchase;Lcom/capcom/billing/Consts$ResponseCode;)V

    const-string v0, "=======1========"

    const-string v1, "========1========"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "responseCodeReceived="

    invoke-virtual {p1}, Lcom/capcom/billing/Consts$ResponseCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Request is=================="

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Product ID"

    iget-object v1, p0, Lcom/capcom/billing/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Order ID"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/capcom/billing/BillingService$RequestPurchase;->mRequestId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "=======1========"

    const-string v1, "========1========"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Lcom/capcom/billing/g;)V
    .locals 2

    const-class v0, Lcom/capcom/billing/i;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/capcom/billing/i;->a:Lcom/capcom/billing/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Z)V
    .locals 1

    sget-object v0, Lcom/capcom/billing/i;->a:Lcom/capcom/billing/g;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/capcom/billing/i;->a:Lcom/capcom/billing/g;

    invoke-virtual {v0, p0}, Lcom/capcom/billing/g;->a(Z)V

    :cond_0
    return-void
.end method

.method static synthetic b()Lcom/capcom/billing/g;
    .locals 1

    sget-object v0, Lcom/capcom/billing/i;->a:Lcom/capcom/billing/g;

    return-object v0
.end method
