.class final Lcom/tapjoy/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectCore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "TapjoyConnect"

    const-string v1, "starting connect call..."

    invoke-static {v0, v1}, Lcom/tapjoy/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->c()Lcom/tapjoy/h;

    const-string v1, "https://ws.tapjoyads.com/connect?"

    invoke-static {v1, v0}, Lcom/tapjoy/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TapjoyConnect"

    const-string v1, "Successfully connected to tapjoy site."

    invoke-static {v0, v1}, Lcom/tapjoy/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
