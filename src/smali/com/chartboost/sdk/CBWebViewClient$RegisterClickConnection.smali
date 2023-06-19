.class Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;
.super Lcom/chartboost/sdk/CBAPIConnection;


# instance fields
.field final synthetic this$0:Lcom/chartboost/sdk/CBWebViewClient;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/CBWebViewClient;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->this$0:Lcom/chartboost/sdk/CBWebViewClient;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/CBAPIConnection;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->validateJson(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->data:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->data:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->this$0:Lcom/chartboost/sdk/CBWebViewClient;

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->data:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/chartboost/sdk/CBWebViewClient;->access$0(Lcom/chartboost/sdk/CBWebViewClient;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0, p1}, Lcom/chartboost/sdk/CBAPIConnection;->onPostExecute(Lorg/json/JSONObject;)V

    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->this$0:Lcom/chartboost/sdk/CBWebViewClient;

    invoke-static {v0}, Lcom/chartboost/sdk/CBWebViewClient;->access$1(Lcom/chartboost/sdk/CBWebViewClient;)Lcom/chartboost/sdk/CBDialogActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v0}, Lcom/chartboost/sdk/CBWebView;->getState()Lcom/chartboost/sdk/CBWebView$CBViewState;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewState;->CBViewStateDisplayedByDefaultController:Lcom/chartboost/sdk/CBWebView$CBViewState;

    if-ne v0, v1, :cond_1

    const-string v0, "cb"

    const-string v1, "closing interstitial ad"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->this$0:Lcom/chartboost/sdk/CBWebViewClient;

    invoke-static {v0}, Lcom/chartboost/sdk/CBWebViewClient;->access$2(Lcom/chartboost/sdk/CBWebViewClient;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-super {p0, p1}, Lcom/chartboost/sdk/CBAPIConnection;->onPostExecute(Lorg/json/JSONObject;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0, p1}, Lcom/chartboost/sdk/CBAPIConnection;->onPostExecute(Lorg/json/JSONObject;)V

    throw v0
.end method
