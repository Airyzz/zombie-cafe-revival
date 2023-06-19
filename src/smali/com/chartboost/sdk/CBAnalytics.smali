.class public Lcom/chartboost/sdk/CBAnalytics;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "ChartBoost Analytics"

.field private static sharedAnalytics:Lcom/chartboost/sdk/CBAnalytics;


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/CBAnalytics;->sharedAnalytics:Lcom/chartboost/sdk/CBAnalytics;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getSharedAnalytics(Landroid/app/Activity;)Lcom/chartboost/sdk/CBAnalytics;
    .locals 2

    const-class v1, Lcom/chartboost/sdk/CBAnalytics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/CBAnalytics;->sharedAnalytics:Lcom/chartboost/sdk/CBAnalytics;

    if-nez v0, :cond_0

    new-instance v0, Lcom/chartboost/sdk/CBAnalytics;

    invoke-direct {v0}, Lcom/chartboost/sdk/CBAnalytics;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/CBAnalytics;->sharedAnalytics:Lcom/chartboost/sdk/CBAnalytics;

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/CBAnalytics;->sharedAnalytics:Lcom/chartboost/sdk/CBAnalytics;

    iput-object p0, v0, Lcom/chartboost/sdk/CBAnalytics;->context:Landroid/content/Context;

    sget-object v0, Lcom/chartboost/sdk/CBAnalytics;->sharedAnalytics:Lcom/chartboost/sdk/CBAnalytics;

    iput-object p0, v0, Lcom/chartboost/sdk/CBAnalytics;->activity:Landroid/app/Activity;

    sget-object v0, Lcom/chartboost/sdk/CBAnalytics;->sharedAnalytics:Lcom/chartboost/sdk/CBAnalytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private round(DII)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0, p3, p4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public recordPaymentTransaction(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;ILjava/util/Map;)Ljava/lang/Boolean;
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/CBAnalytics;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/ChartBoost;->getSharedChartBoost(Landroid/content/Context;)Lcom/chartboost/sdk/ChartBoost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->getAppSignature()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/chartboost/sdk/CBAPIRequest;

    iget-object v2, p0, Lcom/chartboost/sdk/CBAnalytics;->activity:Landroid/app/Activity;

    const-string v3, "api"

    const-string v4, "purchase"

    invoke-direct {v1, v2, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams()V

    const-string v2, "product_id"

    invoke-virtual {v1, v2, p1}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title"

    invoke-virtual {v1, v2, p2}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "price"

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-direct {p0, p3, p4, v3, v4}, Lcom/chartboost/sdk/CBAnalytics;->round(DII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "currency"

    invoke-virtual {v1, v2, p5}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "quantity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "timestamp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v3, "meta"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->getAppSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/CBAPIRequest;->sign(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/chartboost/sdk/CBAnalytics$TransactionConnection;

    iget-object v2, p0, Lcom/chartboost/sdk/CBAnalytics;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/chartboost/sdk/CBAnalytics$TransactionConnection;-><init>(Lcom/chartboost/sdk/CBAnalytics;Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/chartboost/sdk/CBAPIRequest;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/CBAnalytics$TransactionConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public trackEvent(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/chartboost/sdk/CBAnalytics;->trackEvent(Ljava/lang/String;DLjava/util/Map;)Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public trackEvent(Ljava/lang/String;D)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/chartboost/sdk/CBAnalytics;->trackEvent(Ljava/lang/String;DLjava/util/Map;)Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public trackEvent(Ljava/lang/String;DLjava/util/Map;)Ljava/lang/Boolean;
    .locals 9

    const/4 v8, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/CBAnalytics;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/ChartBoost;->getSharedChartBoost(Landroid/content/Context;)Lcom/chartboost/sdk/ChartBoost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->getAppSignature()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/chartboost/sdk/CBAPIRequest;

    iget-object v2, p0, Lcom/chartboost/sdk/CBAnalytics;->activity:Landroid/app/Activity;

    const-string v3, "api"

    const-string v4, "event"

    invoke-direct {v1, v2, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams()V

    const-string v2, "key"

    invoke-virtual {v1, v2, p1}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "timestamp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v3, "meta"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->getAppSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/CBAPIRequest;->sign(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/chartboost/sdk/CBAnalytics$TransactionConnection;

    iget-object v2, p0, Lcom/chartboost/sdk/CBAnalytics;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/chartboost/sdk/CBAnalytics$TransactionConnection;-><init>(Lcom/chartboost/sdk/CBAnalytics;Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/chartboost/sdk/CBAPIRequest;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/CBAnalytics$TransactionConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
