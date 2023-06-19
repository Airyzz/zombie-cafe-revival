.class public final Lcom/paypal/android/MEP/a/f;
.super Lcom/paypal/android/a/d;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Lcom/paypal/android/a/f;

.field private b:Z

.field private g:Landroid/graphics/drawable/GradientDrawable;

.field private h:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/paypal/android/a/i;)V
    .locals 12

    const v11, -0x777778

    const/4 v10, -0x1

    const/4 v9, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/paypal/android/a/d;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/a;

    move-result-object v6

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->getPreapproval()Lcom/paypal/android/MEP/PayPalPreapproval;

    move-result-object v4

    instance-of v7, p2, Lcom/paypal/android/MEP/b/e;

    instance-of v0, p2, Lcom/paypal/android/MEP/b/h;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/paypal/android/MEP/b/b;

    if-eqz v0, :cond_3

    :cond_0
    move v1, v3

    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v0, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/paypal/android/MEP/a/f;->a(Landroid/widget/LinearLayout$LayoutParams;I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v0, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Lcom/paypal/android/MEP/a/f;->a(Landroid/widget/LinearLayout$LayoutParams;I)V

    const v0, -0x170e06

    invoke-static {v0, v11}, Lcom/capcom/facebook/a;->b(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/a/f;->g:Landroid/graphics/drawable/GradientDrawable;

    const v0, 0xd8d3a4

    invoke-static {v0, v11}, Lcom/capcom/facebook/a;->b(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/a/f;->h:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/f;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v9, v9, v9, v2}, Lcom/paypal/android/MEP/a/f;->setPadding(IIII)V

    const/16 v0, 0x378a

    const/16 v8, 0x1cf

    invoke-static {v0, v8}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/f;->b(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x9620

    const/16 v8, 0x1ae

    invoke-static {v0, v8}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/f;->c(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p0}, Lcom/paypal/android/MEP/a/f;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->getPayType()I

    move-result v0

    const/4 v8, 0x3

    if-eq v0, v8, :cond_16

    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->j()Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->i()Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->getDynamicAmountCalculationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_4

    :cond_1
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/paypal/android/MEP/a/f;->b:Z

    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/c;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/c;->c()Lcom/paypal/android/MEP/b;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/c;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/c;->c()Lcom/paypal/android/MEP/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    move v4, v2

    :goto_2
    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/c;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/c;->c()Lcom/paypal/android/MEP/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/c;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/c;->c()Lcom/paypal/android/MEP/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/b;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/paypal/android/MEP/a/f;->b:Z

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_3
    move v1, v2

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->c:Landroid/widget/LinearLayout;

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    if-eqz v1, :cond_9

    const-string v0, "system-icon-confirmation.png"

    invoke-static {p1, v0}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    :goto_3
    iget-object v4, p0, Lcom/paypal/android/MEP/a/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/paypal/android/a/f;

    sget-object v4, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    sget-object v8, Lcom/paypal/android/b/h$a;->c:Lcom/paypal/android/b/h$a;

    invoke-direct {v0, p1, v4, v8, v2}, Lcom/paypal/android/a/f;-><init>(Landroid/content/Context;Lcom/paypal/android/b/h$a;Lcom/paypal/android/b/h$a;B)V

    iput-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    if-eqz v1, :cond_d

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->isPersonalPayment()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->getTextType()I

    move-result v0

    if-ne v0, v3, :cond_c

    :cond_6
    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANDROID_total_paid"

    invoke-static {v4}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/f;->a(Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/f;->a(I)V

    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->f()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->g()Lcom/paypal/android/MEP/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/c;->l()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/capcom/facebook/a;->a(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/f;->b(Ljava/lang/String;)V

    :goto_5
    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    const v1, -0xcc9a00

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/f;->b(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    invoke-virtual {v0, v9, v2, v9, v2}, Lcom/paypal/android/a/f;->setPadding(IIII)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/MEP/a/f;->e:Lcom/paypal/android/a/l;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->e:Lcom/paypal/android/a/l;

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/l;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/paypal/android/MEP/a/f;->b:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/f;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->g()Lcom/paypal/android/MEP/c;

    move-result-object v0

    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/paypal/android/MEP/a/e;->a(Landroid/content/Context;Lcom/paypal/android/MEP/c;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/MEP/a/f;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_7
    :goto_6
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/f;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/paypal/android/b/h$a;->c:Lcom/paypal/android/b/h$a;

    invoke-static {v0, p1}, Lcom/capcom/facebook/a;->a(Lcom/paypal/android/b/h$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->f()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->g()Lcom/paypal/android/MEP/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/c;->l()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/capcom/facebook/a;->a(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID_total"

    invoke-static {v3}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/paypal/android/b/h$a;->f:Lcom/paypal/android/b/h$a;

    invoke-static {v0, p1}, Lcom/capcom/facebook/a;->a(Lcom/paypal/android/b/h$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v10, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "ANDROID_shipping_tax_estimated_note"

    invoke-static {v1}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->getDynamicAmountCalculationEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v7, :cond_8

    iget-object v1, p0, Lcom/paypal/android/MEP/a/f;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_8
    :goto_9
    return-void

    :cond_9
    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->isPersonalPayment()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->getTextType()I

    move-result v0

    if-ne v0, v3, :cond_b

    :cond_a
    const-string v0, "shopping-list-enabled.png"

    invoke-static {p1, v0}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    goto/16 :goto_3

    :cond_b
    const-string v0, "shopping-cart-enabled.png"

    invoke-static {p1, v0}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    goto/16 :goto_3

    :cond_c
    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANDROID_receipt"

    invoke-static {v4}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/f;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_d
    iget-boolean v0, p0, Lcom/paypal/android/MEP/a/f;->b:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANDROID_my_total"

    invoke-static {v4}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/f;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_e
    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/c;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/c;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    iget-object v1, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/paypal/android/a/f;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_f
    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANDROID_my_total"

    invoke-static {v4}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/f;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_10
    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->h()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/capcom/facebook/a;->a(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/f;->b(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_11
    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_12

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/c;

    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/paypal/android/MEP/a/e;->a(Landroid/content/Context;Lcom/paypal/android/MEP/c;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/MEP/a/f;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_6

    :cond_12
    :goto_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/c;

    new-instance v4, Lcom/paypal/android/MEP/a/e;

    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, p1, v0, v8}, Lcom/paypal/android/MEP/a/e;-><init>(Landroid/content/Context;Lcom/paypal/android/MEP/c;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_13
    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->h()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/capcom/facebook/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID_total"

    invoke-static {v3}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/paypal/android/MEP/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_15
    invoke-virtual {p0, v2}, Lcom/paypal/android/MEP/a/f;->setClickable(Z)V

    goto/16 :goto_9

    :cond_16
    iput-boolean v3, p0, Lcom/paypal/android/MEP/a/f;->b:Z

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->c:Landroid/widget/LinearLayout;

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    if-eqz v1, :cond_18

    const-string v0, "system-icon-confirmation.png"

    invoke-static {p1, v0}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    :goto_b
    iget-object v6, p0, Lcom/paypal/android/MEP/a/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/paypal/android/a/f;

    sget-object v6, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    sget-object v8, Lcom/paypal/android/b/h$a;->c:Lcom/paypal/android/b/h$a;

    invoke-direct {v0, p1, v6, v8, v2}, Lcom/paypal/android/a/f;-><init>(Landroid/content/Context;Lcom/paypal/android/b/h$a;Lcom/paypal/android/b/h$a;B)V

    iput-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    if-eqz v1, :cond_19

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ANDROID_receipt"

    invoke-static {v6}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/f;->b(Ljava/lang/String;)V

    :goto_c
    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/f;->a(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    const v1, -0xcc9a00

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/f;->b(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/MEP/a/f;->e:Lcom/paypal/android/a/l;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->e:Lcom/paypal/android/a/l;

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/l;->setVisibility(I)V

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->getPreapproval()Lcom/paypal/android/MEP/PayPalPreapproval;

    move-result-object v0

    if-nez v7, :cond_8

    iget-object v1, p0, Lcom/paypal/android/MEP/a/f;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v11}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/f;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/paypal/android/a/f;

    sget-object v2, Lcom/paypal/android/b/h$a;->e:Lcom/paypal/android/b/h$a;

    sget-object v3, Lcom/paypal/android/b/h$a;->f:Lcom/paypal/android/b/h$a;

    invoke-direct {v1, p1, v2, v3}, Lcom/paypal/android/a/f;-><init>(Landroid/content/Context;Lcom/paypal/android/b/h$a;Lcom/paypal/android/b/h$a;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID_name"

    invoke-static {v3}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/a/f;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPalPreapproval;->getMerchantName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/a/f;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/f;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalPreapproval;->getStartDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalPreapproval;->getStartDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_17

    new-instance v1, Lcom/paypal/android/a/f;

    sget-object v2, Lcom/paypal/android/b/h$a;->e:Lcom/paypal/android/b/h$a;

    sget-object v3, Lcom/paypal/android/b/h$a;->f:Lcom/paypal/android/b/h$a;

    invoke-direct {v1, p1, v2, v3}, Lcom/paypal/android/a/f;-><init>(Landroid/content/Context;Lcom/paypal/android/b/h$a;Lcom/paypal/android/b/h$a;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID_start_date"

    invoke-static {v3}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/a/f;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalPreapproval;->getStartDate()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/a/f;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/f;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_17
    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalPreapproval;->getEndDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalPreapproval;->getEndDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    new-instance v1, Lcom/paypal/android/a/f;

    sget-object v2, Lcom/paypal/android/b/h$a;->e:Lcom/paypal/android/b/h$a;

    sget-object v3, Lcom/paypal/android/b/h$a;->f:Lcom/paypal/android/b/h$a;

    invoke-direct {v1, p1, v2, v3}, Lcom/paypal/android/a/f;-><init>(Landroid/content/Context;Lcom/paypal/android/b/h$a;Lcom/paypal/android/b/h$a;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID_end_date"

    invoke-static {v3}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/a/f;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalPreapproval;->getEndDate()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/paypal/android/a/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_9

    :cond_18
    const-string v0, "shopping-list-enabled.png"

    invoke-static {p1, v0}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    goto/16 :goto_b

    :cond_19
    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    const-string v1, "ANDROID_billing_summary"

    invoke-static {v1}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/f;->b(Ljava/lang/String;)V

    goto/16 :goto_c
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/f;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/f;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final a(ZZ)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    const v2, -0x777778

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/paypal/android/MEP/a/f;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/paypal/android/MEP/a/f;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/paypal/android/MEP/a/f;->setClickable(Z)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->e:Lcom/paypal/android/a/l;

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/l;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/f;->a(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    const v1, -0xcc9a00

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/f;->b(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/paypal/android/MEP/a/f;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/paypal/android/MEP/a/f;->setClickable(Z)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->e:Lcom/paypal/android/a/l;

    invoke-virtual {v0, v4}, Lcom/paypal/android/a/l;->setVisibility(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/f;->a(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/a/f;

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/f;->b(I)V

    goto :goto_0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/paypal/android/MEP/a/f;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/f;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/f;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
