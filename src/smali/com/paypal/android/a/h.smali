.class public final Lcom/paypal/android/a/h;
.super Landroid/widget/CheckBox;


# instance fields
.field private a:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const v0, 0x167f4

    const/16 v1, 0x34a

    invoke-static {v0, v1}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x27b3c

    const/16 v2, 0x482

    invoke-static {v1, v2}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v2, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v3, p0, Lcom/paypal/android/a/h;->a:Landroid/graphics/drawable/StateListDrawable;

    iget-object v3, p0, Lcom/paypal/android/a/h;->a:Landroid/graphics/drawable/StateListDrawable;

    new-array v4, v9, [I

    const v5, -0x10100a0

    aput v5, v4, v6

    invoke-virtual {v3, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/paypal/android/a/h;->a:Landroid/graphics/drawable/StateListDrawable;

    new-array v4, v9, [I

    const v5, 0x10100a0

    aput v5, v4, v6

    invoke-virtual {v3, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-double v3, v1

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getDensity()F

    move-result v1

    float-to-double v5, v1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-int v1, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-double v3, v0

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getDensity()F

    move-result v0

    float-to-double v5, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-int v0, v3

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/paypal/android/a/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/a/h;->a:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, v0}, Lcom/paypal/android/a/h;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Lcom/paypal/android/a/h;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
