.class public abstract Lcom/paypal/android/a/i;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/widget/ScrollView;

.field private b:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/16 v1, 0x280

    const/16 v0, 0x320

    const/16 v5, 0xa

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPalActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPalActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v4

    const/16 v2, 0x1e0

    if-le v3, v4, :cond_0

    if-ge v4, v0, :cond_1

    :cond_0
    if-le v4, v3, :cond_4

    if-lt v3, v0, :cond_4

    :cond_1
    :goto_0
    if-le v3, v4, :cond_2

    if-le v4, v1, :cond_2

    sub-int v2, v3, v0

    div-int/lit8 v2, v2, 0x2

    sub-int v5, v4, v1

    div-int/lit8 v5, v5, 0x2

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    sub-int v1, v4, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v2, v5, v0, v1}, Lcom/paypal/android/a/i;->setPadding(IIII)V

    :goto_1
    const/high16 v0, 0x7f000000

    invoke-virtual {p0, v0}, Lcom/paypal/android/a/i;->setBackgroundColor(I)V

    invoke-virtual {p0, p1}, Lcom/paypal/android/a/i;->a(Landroid/content/Context;)V

    return-void

    :cond_2
    if-le v4, v3, :cond_3

    if-le v3, v1, :cond_3

    sub-int v2, v3, v1

    div-int/lit8 v2, v2, 0x2

    sub-int v5, v4, v0

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    sub-int v0, v4, v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v2, v5, v1, v0}, Lcom/paypal/android/a/i;->setPadding(IIII)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/paypal/android/a/i;->setPadding(IIII)V

    goto :goto_1

    :cond_4
    move v0, v1

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 8

    const/16 v7, 0xb

    const/4 v6, 0x1

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v4, -0x1

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/a/i;->a:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/paypal/android/a/i;->a:Landroid/widget/ScrollView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    iget-object v1, p0, Lcom/paypal/android/a/i;->a:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/paypal/android/a/i;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v0, p0, Lcom/paypal/android/a/i;->a:Landroid/widget/ScrollView;

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/a/i;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/paypal/android/a/i;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/paypal/android/a/i;->b:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/a/i;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/paypal/android/a/i;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/paypal/android/a/i;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "banner-sandbox.png"

    invoke-static {p1, v1}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "banner-demo.png"

    invoke-static {p1, v1}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :array_0
    .array-data 4
        -0x1
        -0xf1225
        -0xf1225
        -0xf1225
    .end array-data
.end method

.method public abstract a_()V
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/a/i;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public abstract b()V
.end method

.method protected onMeasure(II)V
    .locals 8

    const/16 v2, 0x280

    const/16 v1, 0x320

    const/16 v0, 0xa

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPalActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int v3, v6, v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_2

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    const/16 v3, 0x1e0

    if-le v5, v6, :cond_0

    if-ge v6, v1, :cond_1

    :cond_0
    if-le v6, v5, :cond_7

    if-lt v5, v1, :cond_7

    :cond_1
    :goto_1
    if-le v5, v6, :cond_4

    if-le v6, v2, :cond_4

    sub-int v3, v5, v1

    div-int/lit8 v3, v3, 0x2

    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    sub-int v1, v5, v1

    div-int/lit8 v1, v1, 0x2

    if-eqz v4, :cond_3

    :goto_2
    invoke-virtual {p0, v3, v7, v1, v0}, Lcom/paypal/android/a/i;->setPadding(IIII)V

    :goto_3
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void

    :cond_2
    const/4 v3, 0x0

    move v4, v3

    goto :goto_0

    :cond_3
    sub-int v0, v6, v2

    div-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_4
    if-le v6, v5, :cond_6

    if-le v5, v2, :cond_6

    sub-int v3, v5, v2

    div-int/lit8 v3, v3, 0x2

    sub-int v7, v6, v1

    div-int/lit8 v7, v7, 0x2

    sub-int v2, v5, v2

    div-int/lit8 v2, v2, 0x2

    if-eqz v4, :cond_5

    :goto_4
    invoke-virtual {p0, v3, v7, v2, v0}, Lcom/paypal/android/a/i;->setPadding(IIII)V

    goto :goto_3

    :cond_5
    sub-int v0, v6, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/paypal/android/a/i;->setPadding(IIII)V

    goto :goto_3

    :cond_7
    move v1, v2

    move v2, v3

    goto :goto_1
.end method
