.class final Lcom/capcom/billing/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/capcom/billing/Consts$PurchaseState;

.field private final synthetic e:J

.field private final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/capcom/billing/Consts$PurchaseState;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/billing/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/capcom/billing/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/capcom/billing/j;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/capcom/billing/j;->d:Lcom/capcom/billing/Consts$PurchaseState;

    iput-wide p5, p0, Lcom/capcom/billing/j;->e:J

    iput-object p7, p0, Lcom/capcom/billing/j;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    new-instance v0, Lcom/capcom/billing/e;

    iget-object v1, p0, Lcom/capcom/billing/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/capcom/billing/e;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/capcom/billing/j;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/capcom/billing/j;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/capcom/billing/j;->d:Lcom/capcom/billing/Consts$PurchaseState;

    iget-wide v4, p0, Lcom/capcom/billing/j;->e:J

    iget-object v6, p0, Lcom/capcom/billing/j;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/capcom/billing/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/capcom/billing/Consts$PurchaseState;JLjava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Lcom/capcom/billing/e;->a()V

    const-class v7, Lcom/capcom/billing/i;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/capcom/billing/i;->b()Lcom/capcom/billing/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/capcom/billing/i;->b()Lcom/capcom/billing/g;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/billing/j;->d:Lcom/capcom/billing/Consts$PurchaseState;

    iget-object v2, p0, Lcom/capcom/billing/j;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/capcom/billing/j;->e:J

    iget-object v6, p0, Lcom/capcom/billing/j;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/capcom/billing/g;->a(Lcom/capcom/billing/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V

    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "=======2A========"

    const-string v1, "========2A========"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "=======2A========"

    const-string v1, "========2A========"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "=======2A========"

    const-string v1, "========2A========"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "=======2A========"

    const-string v1, "========2A========"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RESPONSE HANDLER"

    const-string v1, "TOXIN PURCHASED?"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Purchase State"

    iget-object v1, p0, Lcom/capcom/billing/j;->d:Lcom/capcom/billing/Consts$PurchaseState;

    invoke-virtual {v1}, Lcom/capcom/billing/Consts$PurchaseState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Product ID"

    iget-object v1, p0, Lcom/capcom/billing/j;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Last Product ID"

    sget-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->lastPurchase:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Order ID"

    iget-object v1, p0, Lcom/capcom/billing/j;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/billing/j;->d:Lcom/capcom/billing/Consts$PurchaseState;

    invoke-virtual {v0}, Lcom/capcom/billing/Consts$PurchaseState;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CANCELED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/capcom/billing/j;->d:Lcom/capcom/billing/Consts$PurchaseState;

    invoke-virtual {v0}, Lcom/capcom/billing/Consts$PurchaseState;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "REFUNDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/capcom/billing/j;->d:Lcom/capcom/billing/Consts$PurchaseState;

    invoke-virtual {v0}, Lcom/capcom/billing/Consts$PurchaseState;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PURCHASED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->lastPurchase:Ljava/lang/String;

    iget-object v1, p0, Lcom/capcom/billing/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "DUPLICATE ORDER VIA MATCHES"

    const-string v1, "DOES IGNORE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "========2END======"

    const-string v1, "=======2END========"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "========2END======"

    const-string v1, "=======2END========"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "========2END======"

    const-string v1, "=======2END========"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "========2END======"

    const-string v1, "=======2END========"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_2
    const-string v0, "******"

    const-string v1, "******"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "******"

    const-string v1, "******"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "******"

    const-string v1, "******"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/billing/j;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->boughtToxin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/capcom/billing/j;->b:Ljava/lang/String;

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->lastPurchase:Ljava/lang/String;

    const-string v0, "AND GIVE THE USER"

    const-string v1, "THEIR ORDER!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "******"

    const-string v1, "******"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "******"

    const-string v1, "******"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "******"

    const-string v1, "******"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "******"

    const-string v1, "******"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Bought Product ID"

    iget-object v1, p0, Lcom/capcom/billing/j;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Newly Set Last Product ID"

    sget-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->lastPurchase:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
