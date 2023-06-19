.class public Lcom/chartboost/sdk/ChartBoost;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_LOCATION:Ljava/lang/String; = "Default"

.field public static final TAG:Ljava/lang/String; = "ChartBoost"

.field private static sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;

.field private static timeoutConnect:I

.field private static timeoutRead:I


# instance fields
.field protected activityHeight:I

.field protected activityWidth:I

.field private appId:Ljava/lang/String;

.field private appSignature:Ljava/lang/String;

.field private cacheMap:Ljava/util/Map;

.field private connectionMap:Ljava/util/Map;

.field private context:Landroid/content/Context;

.field private delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

.field public preloadTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x7530

    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/ChartBoost;->sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;

    sput v1, Lcom/chartboost/sdk/ChartBoost;->timeoutConnect:I

    sput v1, Lcom/chartboost/sdk/ChartBoost;->timeoutRead:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chartboost/sdk/ChartBoost;->preloadTime:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->cacheMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->connectionMap:Ljava/util/Map;

    iput v2, p0, Lcom/chartboost/sdk/ChartBoost;->activityWidth:I

    iput v2, p0, Lcom/chartboost/sdk/ChartBoost;->activityHeight:I

    return-void
.end method

.method static synthetic access$0(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->invokeCallbackFailed(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/chartboost/sdk/ChartBoost;->putCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$2(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->showCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V

    return-void
.end method

.method private cacheExists(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->getCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->cacheMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method private getConnection(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    .locals 3

    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->connectionMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;

    return-object v0
.end method

.method public static declared-synchronized getSharedChartBoost(Landroid/content/Context;)Lcom/chartboost/sdk/ChartBoost;
    .locals 3

    const-class v1, Lcom/chartboost/sdk/ChartBoost;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/ChartBoost;->sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;

    if-nez v0, :cond_0

    new-instance v0, Lcom/chartboost/sdk/ChartBoost;

    invoke-direct {v0}, Lcom/chartboost/sdk/ChartBoost;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/ChartBoost;->sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;

    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string v0, "ChartBoost"

    const-string v2, "Chartboost context should be instance of activity"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/chartboost/sdk/ChartBoost;->sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;

    iput-object p0, v0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    sget-object v0, Lcom/chartboost/sdk/ChartBoost;->sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private invokeCallbackFailed(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/chartboost/sdk/ChartBoost;->putCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/chartboost/sdk/ChartBoost;->putConnection(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;)V

    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoostDelegate;->didFailToLoadInterstitial()V

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoostDelegate;->didFailToLoadMoreApps()V

    :cond_1
    return-void
.end method

.method private loadChartBoostView(Lorg/json/JSONObject;Lcom/chartboost/sdk/CBWebView$CBViewType;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    const-class v2, Lcom/chartboost/sdk/CBDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bk_type"

    invoke-virtual {p2}, Lcom/chartboost/sdk/CBWebView$CBViewType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "bk_cfgo"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private putCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->cacheMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->cacheMap:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private putConnection(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->connectionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->connectionMap:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private showCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->getCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, p2, v1}, Lcom/chartboost/sdk/ChartBoost;->putCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0, p1, p2, v1}, Lcom/chartboost/sdk/ChartBoost;->putConnection(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;)V

    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p1, v1, :cond_0

    new-instance v1, Lcom/chartboost/sdk/CBAPIRequest;

    iget-object v2, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    const-string v3, "api"

    const-string v4, "show"

    invoke-direct {v1, v2, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams()V

    const-string v2, "ad_id"

    const-string v3, "ad_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/chartboost/sdk/ChartBoost;->appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->appSignature:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/CBAPIRequest;->sign(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/chartboost/sdk/ChartBoost$GenericConnection;

    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/chartboost/sdk/ChartBoost$GenericConnection;-><init>(Lcom/chartboost/sdk/ChartBoost;Landroid/content/Context;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/chartboost/sdk/CBAPIRequest;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/ChartBoost$GenericConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/chartboost/sdk/ChartBoost;->loadChartBoostView(Lorg/json/JSONObject;Lcom/chartboost/sdk/CBWebView$CBViewType;)V

    return-void

    :catch_0
    move-exception v1

    const-string v1, "ChartBoost"

    const-string v2, "error generating request!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showView(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-object v2, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p1, v2, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->cacheExists(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->showCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoostDelegate;->shouldRequestInterstitial()Z

    move-result v0

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->getConnection(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v2, Lcom/chartboost/sdk/CBAPIRequest;

    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    const-string v4, "api"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "get"

    :goto_3
    invoke-direct {v2, v3, v4, v0}, Lcom/chartboost/sdk/CBAPIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams()V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "location"

    invoke-virtual {v2, v0, p2}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->appSignature:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/chartboost/sdk/CBAPIRequest;->sign(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;

    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;-><init>(Lcom/chartboost/sdk/ChartBoost;Landroid/content/Context;)V

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->shouldCache:Z

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p1, v1, :cond_5

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-virtual {v1}, Lcom/chartboost/sdk/ChartBoostDelegate;->shouldDisplayLoadingViewForMoreApps()Z

    move-result v1

    iput-boolean v1, v0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->shouldShowProgress:Z

    :cond_5
    :goto_4
    iput-object p1, v0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->viewType:Lcom/chartboost/sdk/CBWebView$CBViewType;

    iput-object p2, v0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->location:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/chartboost/sdk/ChartBoost;->putConnection(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chartboost/sdk/CBAPIRequest;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoostDelegate;->shouldRequestMoreApps()Z

    move-result v0

    goto :goto_2

    :cond_7
    const-string v0, "more"

    goto :goto_3

    :cond_8
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->shouldShowProgress:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_9
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->shouldCache:Z

    goto/16 :goto_1
.end method


# virtual methods
.method public cacheInterstitial()V
    .locals 3

    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const-string v1, "Default"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/chartboost/sdk/ChartBoost;->showView(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public cacheInterstitial(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/chartboost/sdk/ChartBoost;->showView(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public cacheMoreApps()V
    .locals 3

    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const-string v1, "Default"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/chartboost/sdk/ChartBoost;->showView(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public clearCache()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->cacheMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->connectionMap:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chartboost/sdk/ChartBoost;->preloadTime:J

    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->appSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;
    .locals 1

    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    return-object v0
.end method

.method public getTimeoutConnect()I
    .locals 1

    sget v0, Lcom/chartboost/sdk/ChartBoost;->timeoutConnect:I

    return v0
.end method

.method public getTimeoutRead()I
    .locals 1

    sget v0, Lcom/chartboost/sdk/ChartBoost;->timeoutRead:I

    return v0
.end method

.method public hasCachedInterstitial()Z
    .locals 2

    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const-string v1, "Default"

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/ChartBoost;->cacheExists(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasCachedInterstitial(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    invoke-direct {p0, v0, p1}, Lcom/chartboost/sdk/ChartBoost;->cacheExists(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasCachedMoreApps()Z
    .locals 2

    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const-string v1, "Default"

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/ChartBoost;->cacheExists(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public install()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/chartboost/sdk/CBAPIRequest;

    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    const-string v2, "api"

    const-string v3, "install"

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/CBAPIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams()V

    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/ChartBoost;->appSignature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/CBAPIRequest;->sign(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/chartboost/sdk/ChartBoost$GenericConnection;

    iget-object v2, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/chartboost/sdk/ChartBoost$GenericConnection;-><init>(Lcom/chartboost/sdk/ChartBoost;Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/chartboost/sdk/CBAPIRequest;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/ChartBoost$GenericConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/sdk/ChartBoost;->appId:Ljava/lang/String;

    return-void
.end method

.method public setAppSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/sdk/ChartBoost;->appSignature:Ljava/lang/String;

    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 3

    const/16 v2, 0x2710

    if-ge p1, v2, :cond_0

    const-string v0, "ChartBoost"

    const-string v1, "Timeout less than minimum of 10000 milliseconds"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/chartboost/sdk/ChartBoost;->timeoutConnect:I

    return-void
.end method

.method public setDelegate(Lcom/chartboost/sdk/ChartBoostDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 3

    const/16 v2, 0x2710

    if-ge p1, v2, :cond_0

    const-string v0, "ChartBoost"

    const-string v1, "Timeout less than minimum of 10000 milliseconds"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/chartboost/sdk/ChartBoost;->timeoutRead:I

    return-void
.end method

.method public showInterstitial()V
    .locals 3

    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/chartboost/sdk/ChartBoost;->showView(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/chartboost/sdk/ChartBoost;->showView(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public showMoreApps()V
    .locals 3

    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/chartboost/sdk/ChartBoost;->showView(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
