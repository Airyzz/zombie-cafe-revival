.class public Lcom/chartboost/sdk/CBWebView;
.super Landroid/webkit/WebView;


# instance fields
.field private responseContext:Lorg/json/JSONObject;

.field private state:Lcom/chartboost/sdk/CBWebView$CBViewState;

.field private type:Lcom/chartboost/sdk/CBWebView$CBViewType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/CBWebView$CBViewType;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p2, v0, :cond_1

    const v0, -0xcccccd

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBWebView;->setBackgroundColor(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iput-object p2, p0, Lcom/chartboost/sdk/CBWebView;->type:Lcom/chartboost/sdk/CBWebView$CBViewType;

    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p2, v0, :cond_0

    new-instance v0, Lcom/chartboost/sdk/CBWebView$1;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/CBWebView$1;-><init>(Lcom/chartboost/sdk/CBWebView;)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void

    :cond_1
    const/high16 v0, -0x67000000

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBWebView;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public getResponseContext()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebView;->responseContext:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getState()Lcom/chartboost/sdk/CBWebView$CBViewState;
    .locals 1

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebView;->state:Lcom/chartboost/sdk/CBWebView$CBViewState;

    return-object v0
.end method

.method public getType()Lcom/chartboost/sdk/CBWebView$CBViewType;
    .locals 1

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebView;->type:Lcom/chartboost/sdk/CBWebView$CBViewType;

    return-object v0
.end method

.method public setResponseContext(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/sdk/CBWebView;->responseContext:Lorg/json/JSONObject;

    return-void
.end method

.method public setState(Lcom/chartboost/sdk/CBWebView$CBViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/sdk/CBWebView;->state:Lcom/chartboost/sdk/CBWebView$CBViewState;

    return-void
.end method

.method public setType(Lcom/chartboost/sdk/CBWebView$CBViewType;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/sdk/CBWebView;->type:Lcom/chartboost/sdk/CBWebView$CBViewType;

    return-void
.end method
