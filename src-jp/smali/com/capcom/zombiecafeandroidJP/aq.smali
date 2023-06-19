.class Lcom/capcom/zombiecafeandroidJP/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/capcom/billing/s;


# instance fields
.field final synthetic a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/aq;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/capcom/billing/z;Lcom/capcom/billing/x;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Consumption finished. Purchase: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->logging(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/capcom/billing/x;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Consumption successful. Provisioning."

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->logging(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/capcom/billing/z;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/capcom/billing/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/capcom/billing/z;->c()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/capcom/billing/z;->d()Ljava/lang/String;

    move-result-object v6

    const-string v0, "TOXIN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "orderID:"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " productID:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "orderID:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " productID:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->logging(Ljava/lang/String;)V

    new-instance v0, Lcom/capcom/billing/aa;

    sget-object v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->w:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/capcom/billing/aa;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/capcom/billing/i;->a:Lcom/capcom/billing/i;

    invoke-virtual/range {v0 .. v6}, Lcom/capcom/billing/aa;->a(Ljava/lang/String;Ljava/lang/String;Lcom/capcom/billing/i;JLjava/lang/String;)I

    invoke-virtual {v0}, Lcom/capcom/billing/aa;->a()V

    invoke-virtual {p1}, Lcom/capcom/billing/z;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->boughtToxin(Ljava/lang/String;)V

    :goto_0
    const-string v0, "End consumption flow."

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->logging(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error while consuming: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->logging(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/capcom/billing/z;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->consumeFailed(Ljava/lang/String;)Z

    goto :goto_0
.end method
