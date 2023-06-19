.class Lcom/capcom/zombiecafeandroidJP/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/capcom/billing/u;


# instance fields
.field final synthetic a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/ap;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/capcom/billing/x;Lcom/capcom/billing/z;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Purchase finished: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", purchase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->logging(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/capcom/billing/x;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error purchasing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->logging(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static {v0, v2, v2}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ConfirmToAliveNative(IIZ)Z

    invoke-static {v2}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_ProgressBar(I)V

    invoke-static {v2}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->setPurchasingFlag(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Purchase successful."

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->logging(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/ap;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iput-object p2, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->U:Lcom/capcom/billing/z;

    invoke-virtual {p2}, Lcom/capcom/billing/z;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ConfirmToAliveNativePre(Ljava/lang/String;)Z

    invoke-static {v2}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_ProgressBar(I)V

    goto :goto_0
.end method
