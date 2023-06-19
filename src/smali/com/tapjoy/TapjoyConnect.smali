.class public final Lcom/tapjoy/TapjoyConnect;
.super Ljava/lang/Object;


# static fields
.field public static final TAPJOY_CONNECT:Ljava/lang/String; = "TapjoyConnect"

.field private static a:Lcom/tapjoy/TapjoyConnect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->a:Lcom/tapjoy/TapjoyConnect;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;
    .locals 2

    sget-object v0, Lcom/tapjoy/TapjoyConnect;->a:Lcom/tapjoy/TapjoyConnect;

    if-nez v0, :cond_0

    const-string v0, "TapjoyConnect"

    const-string v1, "----------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TapjoyConnect"

    const-string v1, "ERROR -- call requestTapjoyConnect before any other Tapjoy methods"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TapjoyConnect"

    const-string v1, "----------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->a:Lcom/tapjoy/TapjoyConnect;

    return-object v0
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/tapjoy/TapjoyConnect;

    invoke-direct {v0, p0, p1, p2}, Lcom/tapjoy/TapjoyConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->a:Lcom/tapjoy/TapjoyConnect;

    return-void
.end method


# virtual methods
.method public final actionComplete(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->actionComplete(Ljava/lang/String;)V

    return-void
.end method

.method public final enablePaidAppWithActionID(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->enablePaidAppWithActionID(Ljava/lang/String;)V

    return-void
.end method
