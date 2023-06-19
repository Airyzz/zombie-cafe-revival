.class public final Lcom/paypal/android/MEP/a/e;
.super Lcom/paypal/android/a/d;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/paypal/android/MEP/c;Ljava/lang/String;)V
    .locals 10

    const/4 v5, 0x1

    const/4 v9, 0x5

    const/4 v4, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/paypal/android/a/d;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/MEP/a/e;->a(Landroid/widget/LinearLayout$LayoutParams;I)V

    invoke-virtual {p0, v0, v5}, Lcom/paypal/android/MEP/a/e;->a(Landroid/widget/LinearLayout$LayoutParams;I)V

    invoke-virtual {p0, v1}, Lcom/paypal/android/MEP/a/e;->setBackgroundColor(I)V

    const v0, 0x1e7ae

    const/16 v2, 0xb69

    invoke-static {v0, v2}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/e;->b(Landroid/graphics/drawable/Drawable;)V

    const v0, 0xeeff

    const/16 v2, 0xb6f

    invoke-static {v0, v2}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/e;->c(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p0}, Lcom/paypal/android/MEP/a/e;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/e;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9, v1, v9, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/e;->c:Landroid/widget/LinearLayout;

    const v2, -0x2a2a2b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/e;->c:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/e;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/paypal/android/MEP/a/e;->e:Lcom/paypal/android/a/l;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/e;->e:Lcom/paypal/android/a/l;

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/l;->setVisibility(I)V

    new-instance v2, Lcom/paypal/android/a/f;

    sget-object v0, Lcom/paypal/android/b/h$a;->c:Lcom/paypal/android/b/h$a;

    sget-object v3, Lcom/paypal/android/b/h$a;->c:Lcom/paypal/android/b/h$a;

    invoke-direct {v2, p1, v0, v3}, Lcom/paypal/android/a/f;-><init>(Landroid/content/Context;Lcom/paypal/android/b/h$a;Lcom/paypal/android/b/h$a;)V

    invoke-virtual {v2, v4, v1, v1, v1}, Lcom/paypal/android/a/f;->setPadding(IIII)V

    invoke-virtual {p2}, Lcom/paypal/android/MEP/c;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/paypal/android/MEP/c;->a()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/paypal/android/MEP/c;->l()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-static {v3, p3}, Lcom/capcom/facebook/a;->a(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0}, Lcom/paypal/android/a/f;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/paypal/android/a/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/e;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/e;->d:Landroid/widget/LinearLayout;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/e;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p2}, Lcom/paypal/android/MEP/c;->c()Lcom/paypal/android/MEP/b;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/paypal/android/MEP/c;->c()Lcom/paypal/android/MEP/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/paypal/android/MEP/c;->c()Lcom/paypal/android/MEP/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    :goto_0
    invoke-virtual {p2}, Lcom/paypal/android/MEP/c;->c()Lcom/paypal/android/MEP/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    invoke-virtual {p2}, Lcom/paypal/android/MEP/c;->c()Lcom/paypal/android/MEP/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/b;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->f()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->g()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->h()I

    move-result v6

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->i()Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    new-instance v2, Lcom/paypal/android/a/f;

    sget-object v7, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    sget-object v8, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    invoke-direct {v2, p1, v7, v8}, Lcom/paypal/android/a/f;-><init>(Landroid/content/Context;Lcom/paypal/android/b/h$a;Lcom/paypal/android/b/h$a;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ANDROID_item"

    invoke-static {v8}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/paypal/android/a/f;->a(Ljava/lang/String;)V

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-static {v4, p3}, Lcom/capcom/facebook/a;->a(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/paypal/android/a/f;->b(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/paypal/android/MEP/a/e;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/paypal/android/b/h$a;->f:Lcom/paypal/android/b/h$a;

    invoke-static {v0, p1}, Lcom/capcom/facebook/a;->a(Lcom/paypal/android/b/h$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANDROID_item_num"

    invoke-static {v4}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/e;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    if-eqz v5, :cond_4

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v5, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_4

    sget-object v0, Lcom/paypal/android/b/h$a;->f:Lcom/paypal/android/b/h$a;

    invoke-static {v0, p1}, Lcom/capcom/facebook/a;->a(Lcom/paypal/android/b/h$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID_item_price"

    invoke-static {v3}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5, p3}, Lcom/capcom/facebook/a;->a(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/e;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    if-lez v6, :cond_5

    sget-object v0, Lcom/paypal/android/b/h$a;->f:Lcom/paypal/android/b/h$a;

    invoke-static {v0, p1}, Lcom/capcom/facebook/a;->a(Lcom/paypal/android/b/h$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID_quantity"

    invoke-static {v3}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/e;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    invoke-virtual {p2}, Lcom/paypal/android/MEP/c;->c()Lcom/paypal/android/MEP/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_6

    invoke-static {p1, v9, v9}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/e;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_7
    const-string v0, ""

    invoke-virtual {v2, v0}, Lcom/paypal/android/a/f;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    if-eqz v4, :cond_2

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v4, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lcom/paypal/android/a/f;

    sget-object v2, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    sget-object v7, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    invoke-direct {v0, p1, v2, v7}, Lcom/paypal/android/a/f;-><init>(Landroid/content/Context;Lcom/paypal/android/b/h$a;Lcom/paypal/android/b/h$a;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ANDROID_item"

    invoke-static {v7}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ": "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "ANDROID_item"

    invoke-static {v7}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/f;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/f;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/e;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p2}, Lcom/paypal/android/MEP/c;->b()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v1, Lcom/paypal/android/a/f;

    sget-object v2, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    sget-object v3, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    invoke-direct {v1, p1, v2, v3}, Lcom/paypal/android/a/f;-><init>(Landroid/content/Context;Lcom/paypal/android/b/h$a;Lcom/paypal/android/b/h$a;)V

    const-string v2, "ANDROID_total"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/a/f;->a(Ljava/lang/String;)V

    invoke-static {v0, p3}, Lcom/capcom/facebook/a;->a(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/paypal/android/a/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/e;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_a
    invoke-virtual {p2}, Lcom/paypal/android/MEP/c;->c()Lcom/paypal/android/MEP/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->a()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_b

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-lez v1, :cond_b

    new-instance v1, Lcom/paypal/android/a/f;

    sget-object v2, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    sget-object v3, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    invoke-direct {v1, p1, v2, v3}, Lcom/paypal/android/a/f;-><init>(Landroid/content/Context;Lcom/paypal/android/b/h$a;Lcom/paypal/android/b/h$a;)V

    const-string v2, "ANDROID_tax"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/a/f;->a(Ljava/lang/String;)V

    invoke-static {v0, p3}, Lcom/capcom/facebook/a;->a(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/paypal/android/a/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/e;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_b
    invoke-virtual {p2}, Lcom/paypal/android/MEP/c;->c()Lcom/paypal/android/MEP/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->b()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_c

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-lez v1, :cond_c

    new-instance v1, Lcom/paypal/android/a/f;

    sget-object v2, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    sget-object v3, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    invoke-direct {v1, p1, v2, v3}, Lcom/paypal/android/a/f;-><init>(Landroid/content/Context;Lcom/paypal/android/b/h$a;Lcom/paypal/android/b/h$a;)V

    const-string v2, "ANDROID_shipping"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/a/f;->a(Ljava/lang/String;)V

    invoke-static {v0, p3}, Lcom/capcom/facebook/a;->a(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/paypal/android/a/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/e;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_c
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/paypal/android/MEP/c;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 11

    const/4 v5, 0x1

    const/4 v10, 0x5

    const/4 v0, 0x0

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v10, v0, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v1, 0xa

    invoke-virtual {v2, v1, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1}, Lcom/paypal/android/MEP/c;->c()Lcom/paypal/android/MEP/b;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/paypal/android/MEP/c;->c()Lcom/paypal/android/MEP/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/b;->c()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/paypal/android/MEP/c;->c()Lcom/paypal/android/MEP/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/b;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/paypal/android/MEP/c;->c()Lcom/paypal/android/MEP/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    invoke-virtual {p1}, Lcom/paypal/android/MEP/c;->c()Lcom/paypal/android/MEP/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/b;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->f()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->g()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->h()I

    move-result v7

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->i()Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    new-instance v3, Lcom/paypal/android/a/f;

    sget-object v8, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    sget-object v9, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    invoke-direct {v3, p0, v8, v9}, Lcom/paypal/android/a/f;-><init>(Landroid/content/Context;Lcom/paypal/android/b/h$a;Lcom/paypal/android/b/h$a;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ANDROID_item"

    invoke-static {v9}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/paypal/android/a/f;->a(Ljava/lang/String;)V

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {v5, p2}, Lcom/capcom/facebook/a;->a(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/paypal/android/a/f;->b(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/paypal/android/b/h$a;->f:Lcom/paypal/android/b/h$a;

    invoke-static {v0, p0}, Lcom/capcom/facebook/a;->a(Lcom/paypal/android/b/h$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ANDROID_item_num"

    invoke-static {v5}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    if-eqz v6, :cond_2

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v6, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/paypal/android/b/h$a;->f:Lcom/paypal/android/b/h$a;

    invoke-static {v0, p0}, Lcom/capcom/facebook/a;->a(Lcom/paypal/android/b/h$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANDROID_item_price"

    invoke-static {v4}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6, p2}, Lcom/capcom/facebook/a;->a(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    if-lez v7, :cond_3

    sget-object v0, Lcom/paypal/android/b/h$a;->f:Lcom/paypal/android/b/h$a;

    invoke-static {v0, p0}, Lcom/capcom/facebook/a;->a(Lcom/paypal/android/b/h$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANDROID_quantity"

    invoke-static {v4}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {p1}, Lcom/paypal/android/MEP/c;->c()Lcom/paypal/android/MEP/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_4

    invoke-static {p0, v10, v10}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_5
    const-string v0, ""

    invoke-virtual {v3, v0}, Lcom/paypal/android/a/f;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    if-eqz v5, :cond_0

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v5, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/paypal/android/a/f;

    sget-object v3, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    sget-object v8, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    invoke-direct {v0, p0, v3, v8}, Lcom/paypal/android/a/f;-><init>(Landroid/content/Context;Lcom/paypal/android/b/h$a;Lcom/paypal/android/b/h$a;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ANDROID_item"

    invoke-static {v8}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ": "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "ANDROID_item"

    invoke-static {v8}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/paypal/android/a/f;->a(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/paypal/android/a/f;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/paypal/android/MEP/c;->b()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v1, Lcom/paypal/android/a/f;

    sget-object v3, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    sget-object v4, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    invoke-direct {v1, p0, v3, v4}, Lcom/paypal/android/a/f;-><init>(Landroid/content/Context;Lcom/paypal/android/b/h$a;Lcom/paypal/android/b/h$a;)V

    const-string v3, "ANDROID_total"

    invoke-static {v3}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/paypal/android/a/f;->a(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/capcom/facebook/a;->a(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/paypal/android/a/f;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_8
    invoke-virtual {p1}, Lcom/paypal/android/MEP/c;->c()Lcom/paypal/android/MEP/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->a()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-lez v1, :cond_9

    new-instance v1, Lcom/paypal/android/a/f;

    sget-object v3, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    sget-object v4, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    invoke-direct {v1, p0, v3, v4}, Lcom/paypal/android/a/f;-><init>(Landroid/content/Context;Lcom/paypal/android/b/h$a;Lcom/paypal/android/b/h$a;)V

    const-string v3, "ANDROID_tax"

    invoke-static {v3}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/paypal/android/a/f;->a(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/capcom/facebook/a;->a(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/paypal/android/a/f;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_9
    invoke-virtual {p1}, Lcom/paypal/android/MEP/c;->c()Lcom/paypal/android/MEP/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b;->b()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_a

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-lez v1, :cond_a

    new-instance v1, Lcom/paypal/android/a/f;

    sget-object v3, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    sget-object v4, Lcom/paypal/android/b/h$a;->d:Lcom/paypal/android/b/h$a;

    invoke-direct {v1, p0, v3, v4}, Lcom/paypal/android/a/f;-><init>(Landroid/content/Context;Lcom/paypal/android/b/h$a;Lcom/paypal/android/b/h$a;)V

    const-string v3, "ANDROID_shipping"

    invoke-static {v3}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/paypal/android/a/f;->a(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/capcom/facebook/a;->a(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/paypal/android/a/f;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_a
    return-object v2
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
