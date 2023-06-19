.class public final Lcom/paypal/android/a/k;
.super Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 8

    const/16 v1, 0x50

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/paypal/android/a/k;->setOrientation(I)V

    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/paypal/android/a/k;->setPadding(IIII)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/a/k;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/paypal/android/a/k;->setGravity(I)V

    invoke-static {p2, v7, v6}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget-object v1, Lcom/paypal/android/b/h$a;->c:Lcom/paypal/android/b/h$a;

    invoke-static {v1, p2}, Lcom/capcom/facebook/a;->a(Lcom/paypal/android/b/h$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v4, v4, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v2, 0x53

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const v2, -0x377fc0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, "paypal_logo_22.png"

    invoke-static {p2, v1}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p2, v6, v6}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const-string v2, "lock-icon.png"

    invoke-static {p2, v2}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/a/k;->addView(Landroid/view/View;)V

    invoke-static {p2, v7, v6}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x2

    invoke-direct {v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v2, v5, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/a/k;->addView(Landroid/view/View;)V

    return-void

    :array_0
    .array-data 4
        -0x5c3213
        -0xe4c99c
        -0x5c3213
    .end array-data
.end method
