.class Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
.super Lcom/chartboost/sdk/CBAPIConnection;


# instance fields
.field public hadError:Z

.field public location:Ljava/lang/String;

.field public shouldCache:Z

.field final synthetic this$0:Lcom/chartboost/sdk/ChartBoost;

.field public viewType:Lcom/chartboost/sdk/CBWebView$CBViewType;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/ChartBoost;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->this$0:Lcom/chartboost/sdk/ChartBoost;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/CBAPIConnection;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->shouldCache:Z

    iput-boolean v0, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->hadError:Z

    const-string v0, "Default"

    iput-object v0, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->location:Ljava/lang/String;

    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    iput-object v0, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->viewType:Lcom/chartboost/sdk/CBWebView$CBViewType;

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->validateJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Lcom/chartboost/sdk/CBAPIConnection;->onPostExecute(Lorg/json/JSONObject;)V

    :goto_0
    iget-boolean v0, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->hadError:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->this$0:Lcom/chartboost/sdk/ChartBoost;

    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->viewType:Lcom/chartboost/sdk/CBWebView$CBViewType;

    iget-object v2, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->location:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/chartboost/sdk/ChartBoost;->access$1(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-boolean v0, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->shouldCache:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->this$0:Lcom/chartboost/sdk/ChartBoost;

    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->viewType:Lcom/chartboost/sdk/CBWebView$CBViewType;

    iget-object v2, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->location:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/ChartBoost;->access$2(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->this$0:Lcom/chartboost/sdk/ChartBoost;

    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->viewType:Lcom/chartboost/sdk/CBWebView$CBViewType;

    iget-object v2, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->location:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/ChartBoost;->access$0(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->hadError:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0, p1}, Lcom/chartboost/sdk/CBAPIConnection;->onPostExecute(Lorg/json/JSONObject;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0, p1}, Lcom/chartboost/sdk/CBAPIConnection;->onPostExecute(Lorg/json/JSONObject;)V

    throw v0
.end method
