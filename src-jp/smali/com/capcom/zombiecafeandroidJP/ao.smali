.class Lcom/capcom/zombiecafeandroidJP/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/capcom/billing/w;


# instance fields
.field final synthetic a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/ao;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/capcom/billing/x;Lcom/capcom/billing/y;)V
    .locals 3

    const-string v0, "Query inventory finished."

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->logging(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/capcom/billing/x;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to query inventory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->logging(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Query inventory was successful."

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->logging(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    :try_start_0
    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$0()[Lcom/capcom/zombiecafeandroidJP/aw;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :goto_2
    const-string v0, "Initial inventory query finished; onQueryInventoryFinished."

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->logging(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "onQueryInventoryFinished end"

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->logging(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$0()[Lcom/capcom/zombiecafeandroidJP/aw;

    move-result-object v1

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sku:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$0()[Lcom/capcom/zombiecafeandroidJP/aw;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/capcom/zombiecafeandroidJP/aw;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->logging(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nameID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$0()[Lcom/capcom/zombiecafeandroidJP/aw;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/capcom/zombiecafeandroidJP/aw;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->logging(Ljava/lang/String;)V

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$0()[Lcom/capcom/zombiecafeandroidJP/aw;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/aw;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/capcom/billing/y;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ao;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {p2, v1}, Lcom/capcom/billing/y;->a(Ljava/lang/String;)Lcom/capcom/billing/z;

    move-result-object v2

    iput-object v2, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->U:Lcom/capcom/billing/z;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ConfirmToAliveNativePre(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onQueryInventoryFinished has errors:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->logging(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "onQueryInventoryFinished end"

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->logging(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "onQueryInventoryFinished end"

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->logging(Ljava/lang/String;)V

    throw v0
.end method
