.class Lcom/chartboost/sdk/CBAnalytics$TransactionConnection;
.super Lcom/chartboost/sdk/CBAPIConnection;


# instance fields
.field final synthetic this$0:Lcom/chartboost/sdk/CBAnalytics;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/CBAnalytics;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/sdk/CBAnalytics$TransactionConnection;->this$0:Lcom/chartboost/sdk/CBAnalytics;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/CBAPIConnection;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/CBAnalytics$TransactionConnection;->validateJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Lcom/chartboost/sdk/CBAPIConnection;->onPostExecute(Lorg/json/JSONObject;)V

    :goto_0
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
