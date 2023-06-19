.class public final Lcom/capcom/facebook/h;
.super Landroid/app/Dialog;


# static fields
.field private static a:[F

.field private static b:[F

.field private static c:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lcom/capcom/facebook/f;

.field private f:Landroid/app/ProgressDialog;

.field private g:Landroid/webkit/WebView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, -0x1

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/capcom/facebook/h;->a:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/capcom/facebook/h;->b:[F

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/capcom/facebook/h;->c:Landroid/widget/FrameLayout$LayoutParams;

    return-void

    :array_0
    .array-data 4
        0x41a00000    # 20.0f
        0x42700000    # 60.0f
    .end array-data

    :array_1
    .array-data 4
        0x42200000    # 40.0f
        0x42700000    # 60.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/capcom/facebook/f;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/capcom/facebook/h;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/capcom/facebook/h;->e:Lcom/capcom/facebook/f;

    return-void
.end method

.method static synthetic a(Lcom/capcom/facebook/h;)Lcom/capcom/facebook/f;
    .locals 1

    iget-object v0, p0, Lcom/capcom/facebook/h;->e:Lcom/capcom/facebook/f;

    return-object v0
.end method

.method static synthetic b(Lcom/capcom/facebook/h;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/capcom/facebook/h;->f:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/capcom/facebook/h;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/capcom/facebook/h;->g:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic d(Lcom/capcom/facebook/h;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/capcom/facebook/h;->i:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/capcom/facebook/h;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/capcom/facebook/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/capcom/facebook/h;->f:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/capcom/facebook/h;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/capcom/facebook/h;->f:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/capcom/facebook/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/capcom/facebook/h;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/capcom/facebook/h;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/capcom/facebook/h;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x3c

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v6, v2, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p0, v7}, Lcom/capcom/facebook/h;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/capcom/facebook/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/capcom/facebook/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/capcom/facebook/h;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/capcom/facebook/h;->i:Landroid/widget/TextView;

    const-string v2, "Facebook"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/capcom/facebook/h;->i:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/capcom/facebook/h;->i:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/capcom/facebook/h;->i:Landroid/widget/TextView;

    const v2, -0x927b4c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/capcom/facebook/h;->i:Landroid/widget/TextView;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/capcom/facebook/h;->i:Landroid/widget/TextView;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v1, p0, Lcom/capcom/facebook/h;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/capcom/facebook/h;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/capcom/facebook/h;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/capcom/facebook/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/capcom/facebook/h;->g:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/capcom/facebook/h;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/capcom/facebook/h;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/capcom/facebook/h;->g:Landroid/webkit/WebView;

    new-instance v1, Lcom/capcom/facebook/i;

    invoke-direct {v1, p0, v6}, Lcom/capcom/facebook/i;-><init>(Lcom/capcom/facebook/h;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/capcom/facebook/h;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/capcom/facebook/h;->g:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/capcom/facebook/h;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/capcom/facebook/h;->g:Landroid/webkit/WebView;

    sget-object v1, Lcom/capcom/facebook/h;->c:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/capcom/facebook/h;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/capcom/facebook/h;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/capcom/facebook/h;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {p0}, Lcom/capcom/facebook/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Lcom/capcom/facebook/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {}, Lcom/capcom/zombiecafeandroid/CC_Android;->fromNative_IsKindle()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    sget-object v0, Lcom/capcom/facebook/h;->a:[F

    :goto_0
    iget-object v3, p0, Lcom/capcom/facebook/h;->h:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    aget v6, v0, v6

    mul-float/2addr v6, v2

    add-float/2addr v6, v8

    float-to-int v6, v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x34

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    aget v0, v0, v7

    mul-float/2addr v0, v2

    add-float/2addr v0, v8

    float-to-int v0, v0

    sub-int v0, v1, v0

    invoke-direct {v4, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/capcom/facebook/h;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/capcom/facebook/h;->b:[F

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    sget-object v0, Lcom/capcom/facebook/h;->a:[F

    :goto_2
    iget-object v3, p0, Lcom/capcom/facebook/h;->h:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    aget v6, v0, v6

    mul-float/2addr v6, v2

    add-float/2addr v6, v8

    float-to-int v6, v6

    sub-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    aget v0, v0, v7

    mul-float/2addr v0, v2

    add-float/2addr v0, v8

    float-to-int v0, v0

    sub-int v0, v1, v0

    invoke-direct {v4, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/capcom/facebook/h;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/capcom/facebook/h;->b:[F

    goto :goto_2
.end method
