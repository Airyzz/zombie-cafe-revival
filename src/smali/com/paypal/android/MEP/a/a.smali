.class public final Lcom/paypal/android/MEP/a/a;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    const/16 v10, 0x11

    const/16 v9, 0xa

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/paypal/android/MEP/a/a;->setCancelable(Z)V

    invoke-virtual {p0, v6}, Lcom/paypal/android/MEP/a/a;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v7}, Lcom/paypal/android/MEP/a/a;->requestWindowFeature(I)Z

    invoke-static {p1, v8, v8}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v0, 0x5

    const/4 v2, 0x5

    invoke-virtual {v1, v9, v0, v9, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, v6, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lcom/paypal/android/b/h$a;->a:Lcom/paypal/android/b/h$a;

    invoke-static {v0, p1}, Lcom/capcom/facebook/a;->a(Lcom/paypal/android/b/h$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "ANDROID_cancel_transaction"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v6, v6, v6, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v0, "ANDROID_go_back_to_merchant"

    invoke-static {v0}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/a;

    move-result-object v3

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPayType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPreapproval()Lcom/paypal/android/MEP/PayPalPreapproval;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalPreapproval;->getMerchantName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v3, "%m"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    invoke-static {v2, p1}, Lcom/capcom/facebook/a;->a(Lcom/paypal/android/b/h$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    invoke-static {v0, p1}, Lcom/capcom/facebook/a;->a(Lcom/paypal/android/b/h$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "ANDROID_lose_all_information"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, -0x2

    invoke-static {p1, v8, v0}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v6, v9, v6, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {p1}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, 0x3

    invoke-virtual {v2, v6, v6, v3, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/paypal/android/MEP/a/a;->a:Landroid/widget/Button;

    iget-object v3, p0, Lcom/paypal/android/MEP/a/a;->a:Landroid/widget/Button;

    const-string v4, "ANDROID_ok"

    invoke-static {v4}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/a;->a:Landroid/widget/Button;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/a;->a:Landroid/widget/Button;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/capcom/facebook/a;->f()I

    move-result v5

    invoke-direct {v4, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/a;->a:Landroid/widget/Button;

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setGravity(I)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/a;->a:Landroid/widget/Button;

    invoke-static {}, Lcom/capcom/facebook/a;->c()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/a;->a:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/a;->a:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/paypal/android/MEP/a/a;->b:Landroid/widget/Button;

    iget-object v3, p0, Lcom/paypal/android/MEP/a/a;->b:Landroid/widget/Button;

    const-string v4, "ANDROID_cancel"

    invoke-static {v4}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/a;->b:Landroid/widget/Button;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/a;->b:Landroid/widget/Button;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/capcom/facebook/a;->f()I

    move-result v5

    invoke-direct {v4, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/a;->b:Landroid/widget/Button;

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setGravity(I)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/a;->b:Landroid/widget/Button;

    invoke-static {}, Lcom/capcom/facebook/a;->d()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/a;->b:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/a;->b:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/paypal/android/MEP/a/a;->setContentView(Landroid/view/View;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPayType()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->isPersonalPayment()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcom/paypal/android/MEP/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/c;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/c;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/paypal/android/MEP/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/c;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/c;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    :cond_3
    invoke-virtual {v3}, Lcom/paypal/android/MEP/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/c;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/c;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPayType()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    invoke-virtual {v3}, Lcom/paypal/android/MEP/a;->g()Lcom/paypal/android/MEP/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/c;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    :cond_5
    invoke-virtual {v3}, Lcom/paypal/android/MEP/a;->g()Lcom/paypal/android/MEP/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/c;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const-string v0, "ANDROID_the_merchant"

    invoke-static {v0}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        -0x170e06
        -0x422d16
    .end array-data
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/MEP/a/a;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPal;->setOptIn(Z)V

    invoke-virtual {p0}, Lcom/paypal/android/MEP/a/a;->dismiss()V

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalActivity;->paymentCanceled()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/MEP/a/a;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/paypal/android/MEP/a/a;->dismiss()V

    goto :goto_0
.end method
