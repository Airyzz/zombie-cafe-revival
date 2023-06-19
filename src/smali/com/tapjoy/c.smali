.class public final Lcom/tapjoy/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private synthetic b:Lcom/tapjoy/TapjoyConnectCore;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TapjoyConnectCore;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/c;->b:Lcom/tapjoy/TapjoyConnectCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tapjoy/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->c()Lcom/tapjoy/h;

    const-string v0, "https://ws.tapjoyads.com/connect?"

    iget-object v1, p0, Lcom/tapjoy/c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tapjoy/c;->b:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyConnectCore;->a(Lcom/tapjoy/TapjoyConnectCore;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
