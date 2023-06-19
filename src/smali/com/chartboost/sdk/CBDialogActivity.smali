.class public Lcom/chartboost/sdk/CBDialogActivity;
.super Landroid/app/Activity;


# static fields
.field public static final BUNDLE_KEY_CONFIGOBJECT:Ljava/lang/String; = "bk_cfgo"

.field public static final BUNDLE_KEY_TYPE:Ljava/lang/String; = "bk_type"

.field public static final OVERLAY_OPACITY:I = 0x4b

.field public static final TAG:Ljava/lang/String; = "CBDialogActivity"


# instance fields
.field protected cbConfiguration:Lorg/json/JSONObject;

.field protected cbContainer:Landroid/widget/RelativeLayout;

.field protected cbObject:Lcom/chartboost/sdk/ChartBoost;

.field protected cbViewType:I

.field protected ctx:Landroid/content/Context;

.field public webView:Lcom/chartboost/sdk/CBWebView;

.field private webViewClient:Lcom/chartboost/sdk/CBWebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webViewClient:Lcom/chartboost/sdk/CBWebViewClient;

    return-void
.end method

.method static synthetic access$0(Lcom/chartboost/sdk/CBDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/chartboost/sdk/CBDialogActivity;->display()V

    return-void
.end method

.method private display()V
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    iget v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbViewType:I

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    invoke-virtual {v1}, Lcom/chartboost/sdk/CBWebView$CBViewType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/chartboost/sdk/CBWebView;

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/CBWebView;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/CBWebView$CBViewType;)V

    iput-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/chartboost/sdk/ChartBoost;->getSharedChartBoost(Landroid/content/Context;)Lcom/chartboost/sdk/ChartBoost;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbObject:Lcom/chartboost/sdk/ChartBoost;

    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbObject:Lcom/chartboost/sdk/ChartBoost;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->finish()V

    :cond_2
    new-instance v0, Lcom/chartboost/sdk/CBWebViewClient;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/CBWebViewClient;-><init>(Lcom/chartboost/sdk/CBDialogActivity;)V

    iput-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webViewClient:Lcom/chartboost/sdk/CBWebViewClient;

    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewState;->CBViewStateWaitingForDisplay:Lcom/chartboost/sdk/CBWebView$CBViewState;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBWebView;->setState(Lcom/chartboost/sdk/CBWebView$CBViewState;)V

    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbConfiguration:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBWebView;->setResponseContext(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->webViewClient:Lcom/chartboost/sdk/CBWebViewClient;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbConfiguration:Lorg/json/JSONObject;

    const-string v1, "html"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "html content is blank!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->finish()V

    :goto_1
    return-void

    :cond_4
    iget v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbViewType:I

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    invoke-virtual {v1}, Lcom/chartboost/sdk/CBWebView$CBViewType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/chartboost/sdk/CBWebView;

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/CBWebView;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/CBWebView$CBViewType;)V

    iput-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    const-string v1, "file:///android_asset/"

    iget-object v2, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbConfiguration:Lorg/json/JSONObject;

    const-string v3, "html"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/CBWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v3, 0x400

    const/4 v2, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBDialogActivity;->requestWindowFeature(I)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bk_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->finish()V

    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bk_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbViewType:I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "bk_cfgo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbConfiguration:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p0, p0, Lcom/chartboost/sdk/CBDialogActivity;->ctx:Landroid/content/Context;

    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/chartboost/sdk/CBDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/CBDialogActivity$1;-><init>(Lcom/chartboost/sdk/CBDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBDialogActivity;->setContentView(Landroid/view/View;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webViewClient:Lcom/chartboost/sdk/CBWebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webViewClient:Lcom/chartboost/sdk/CBWebViewClient;

    const-string v1, "chartboost://close"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBWebViewClient;->handleChartBoostRequest(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
