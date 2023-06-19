.class public Lcom/paypal/android/a/j;
.super Landroid/widget/Button;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private a:I

.field private b:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x2

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/paypal/android/a/j;->a:I

    invoke-virtual {p0, p0}, Lcom/paypal/android/a/j;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/a/j;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/paypal/android/a/j;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 3

    iget v0, p0, Lcom/paypal/android/a/j;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p1, :cond_2

    const/4 v0, 0x3

    if-lt p1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "State "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is outside the acceptable range 0-2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput p1, p0, Lcom/paypal/android/a/j;->a:I

    iget-object v0, p0, Lcom/paypal/android/a/j;->b:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/a/j;->b:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/paypal/android/a/j;->a:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/paypal/android/a/j;->setBackgroundColor(I)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/a/j;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final a(ILandroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v1, 0x3

    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "State "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is outside the acceptable range 0-2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/a/j;->b:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/paypal/android/a/j;->b:[Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/a/j;->b:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v0, p1

    iget v0, p0, Lcom/paypal/android/a/j;->a:I

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, Lcom/paypal/android/a/j;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/paypal/android/a/j;->getDrawableState()[I

    move-result-object v0

    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    invoke-static {v1, v0}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v4, [I

    const v2, 0x101009c

    aput v2, v1, v3

    invoke-static {v1, v0}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/paypal/android/a/j;->a(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/paypal/android/a/j;->a(I)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method
