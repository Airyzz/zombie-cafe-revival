.class Lcom/capcom/zombiecafeandroidJP/as;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/capcom/billing/v;


# instance fields
.field final synthetic a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/as;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/capcom/billing/x;)V
    .locals 2

    const-string v0, "Setup finished."

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->logging(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/capcom/billing/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Problem setting up in-app billing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->logging(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "iab Setup successful."

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->logging(Ljava/lang/String;)V

    goto :goto_0
.end method
