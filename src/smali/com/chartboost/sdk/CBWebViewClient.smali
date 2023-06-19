.class public Lcom/chartboost/sdk/CBWebViewClient;
.super Landroid/webkit/WebViewClient;


# static fields
.field public static final TAG:Ljava/lang/String; = "ChartBoost AdView"


# instance fields
.field private cb:Lcom/chartboost/sdk/ChartBoost;

.field private cbContainer:Landroid/widget/RelativeLayout;

.field private context:Landroid/content/Context;

.field private dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/CBDialogActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    iput-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    iput-object p1, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    iput-object p1, p0, Lcom/chartboost/sdk/CBWebViewClient;->context:Landroid/content/Context;

    iget-object v0, p1, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/chartboost/sdk/ChartBoost;->getSharedChartBoost(Landroid/content/Context;)Lcom/chartboost/sdk/ChartBoost;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    return-void
.end method

.method static synthetic access$0(Lcom/chartboost/sdk/CBWebViewClient;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chartboost/sdk/CBWebViewClient;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/chartboost/sdk/CBWebViewClient;)Lcom/chartboost/sdk/CBDialogActivity;
    .locals 1

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/chartboost/sdk/CBWebViewClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/chartboost/sdk/CBWebViewClient;->closeView()V

    return-void
.end method

.method private closeView()V
    .locals 2

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    invoke-virtual {v0}, Lcom/chartboost/sdk/CBDialogActivity;->close()V

    goto :goto_0
.end method

.method private handleChartBoostRequestForInterstitial(Ljava/lang/String;)V
    .locals 5

    const-string v0, "cb"

    const-string v1, "handleChartBoostRequestForInterstitial"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const-string v2, "cb"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "function: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v1, v1, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/ChartBoostDelegate;->didCloseInterstitial(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/chartboost/sdk/CBWebViewClient;->closeView()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "link"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v2, v2, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/ChartBoostDelegate;->didClickInterstitial(Landroid/view/View;)V

    :cond_3
    :try_start_0
    new-instance v1, Lcom/chartboost/sdk/CBAPIRequest;

    iget-object v2, p0, Lcom/chartboost/sdk/CBWebViewClient;->context:Landroid/content/Context;

    const-string v3, "api"

    const-string v4, "click"

    invoke-direct {v1, v2, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams()V

    const-string v2, "to"

    iget-object v3, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v3, v3, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v3}, Lcom/chartboost/sdk/CBWebView;->getResponseContext()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "to"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cgn"

    iget-object v3, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v3, v3, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v3}, Lcom/chartboost/sdk/CBWebView;->getResponseContext()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "cgn"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "creative"

    iget-object v3, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v3, v3, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v3}, Lcom/chartboost/sdk/CBWebView;->getResponseContext()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "creative"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v2}, Lcom/chartboost/sdk/ChartBoost;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v3}, Lcom/chartboost/sdk/ChartBoost;->getAppSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/CBAPIRequest;->sign(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cb"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "decoding: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;

    iget-object v3, p0, Lcom/chartboost/sdk/CBWebViewClient;->context:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;-><init>(Lcom/chartboost/sdk/CBWebViewClient;Landroid/content/Context;)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->shouldShowProgress:Z

    const/4 v3, 0x3

    aget-object v0, v0, v3

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->data:Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/chartboost/sdk/CBAPIRequest;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, "cb"

    const-string v1, "sending request click request"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private handleChartBoostRequestForMoreApps(Ljava/lang/String;)V
    .locals 6

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v1, v1, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/ChartBoostDelegate;->didCloseMoreApps(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/chartboost/sdk/CBWebViewClient;->closeView()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "link"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v2, v2, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/ChartBoostDelegate;->didClickMoreApps(Landroid/view/View;)V

    :cond_3
    :try_start_0
    new-instance v1, Lcom/chartboost/sdk/CBAPIRequest;

    iget-object v2, p0, Lcom/chartboost/sdk/CBWebViewClient;->context:Landroid/content/Context;

    const-string v3, "api"

    const-string v4, "click"

    invoke-direct {v1, v2, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams()V

    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONTokener;

    const/4 v4, 0x4

    aget-object v4, v0, v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "to"

    const-string v4, "to"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    const-string v3, "cgn"

    const-string v4, "cgn"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    :try_start_3
    const-string v3, "creative"

    const-string v4, "creative"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    :try_start_4
    const-string v3, "type"

    const-string v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    :try_start_5
    const-string v3, "more_type"

    const-string v4, "more_type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    :try_start_6
    iget-object v2, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v2}, Lcom/chartboost/sdk/ChartBoost;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v3}, Lcom/chartboost/sdk/ChartBoost;->getAppSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/CBAPIRequest;->sign(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;

    iget-object v3, p0, Lcom/chartboost/sdk/CBWebViewClient;->context:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;-><init>(Lcom/chartboost/sdk/CBWebViewClient;Landroid/content/Context;)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->shouldShowProgress:Z

    const/4 v3, 0x3

    aget-object v0, v0, v3

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->data:Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/chartboost/sdk/CBAPIRequest;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    goto :goto_5

    :catch_2
    move-exception v3

    goto :goto_4

    :catch_3
    move-exception v3

    goto :goto_3

    :catch_4
    move-exception v3

    goto :goto_2

    :catch_5
    move-exception v3

    goto :goto_1
.end method

.method private openUrl(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "ChartBoost AdView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sideloading URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected handleChartBoostRequest(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ChartBoost AdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handling chartboost:// request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v0, v0, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v0}, Lcom/chartboost/sdk/CBWebView;->getType()Lcom/chartboost/sdk/CBWebView$CBViewType;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/chartboost/sdk/CBWebViewClient;->handleChartBoostRequestForInterstitial(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v0, v0, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v0}, Lcom/chartboost/sdk/CBWebView;->getType()Lcom/chartboost/sdk/CBWebView$CBViewType;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/chartboost/sdk/CBWebViewClient;->handleChartBoostRequestForMoreApps(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    check-cast p1, Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {p1}, Lcom/chartboost/sdk/CBWebView;->getState()Lcom/chartboost/sdk/CBWebView$CBViewState;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewState;->CBViewStateWaitingForDisplay:Lcom/chartboost/sdk/CBWebView$CBViewState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewState;->CBViewStateOther:Lcom/chartboost/sdk/CBWebView$CBViewState;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/CBWebView;->setState(Lcom/chartboost/sdk/CBWebView$CBViewState;)V

    invoke-virtual {p1}, Lcom/chartboost/sdk/CBWebView;->getType()Lcom/chartboost/sdk/CBWebView$CBViewType;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartBoostDelegate;->shouldDisplayInterstitial(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/CBWebViewClient;->closeView()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    const-string v0, "ChartBoost AdView"

    const-string v1, "Got an interstitial, adding to view!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_2
    :goto_1
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewState;->CBViewStateDisplayedByDefaultController:Lcom/chartboost/sdk/CBWebView$CBViewState;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/CBWebView;->setState(Lcom/chartboost/sdk/CBWebView$CBViewState;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/chartboost/sdk/CBWebView;->getType()Lcom/chartboost/sdk/CBWebView$CBViewType;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartBoostDelegate;->shouldDisplayMoreApps(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/chartboost/sdk/CBWebViewClient;->closeView()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    const-string v0, "ChartBoost AdView"

    const-string v1, "Got More Apps, adding to view!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_1
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chartboost"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/chartboost/sdk/CBWebViewClient;->handleChartBoostRequest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
