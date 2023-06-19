.class public Lcom/paypal/android/a/e;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private a:[Landroid/widget/LinearLayout$LayoutParams;

.field private b:Lcom/paypal/android/a/n;

.field private c:I

.field protected f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p0}, Lcom/paypal/android/a/e;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0, v1}, Lcom/paypal/android/a/e;->setFocusable(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/paypal/android/a/e;->f:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/paypal/android/a/e;->c:I

    invoke-virtual {p0, v1}, Lcom/paypal/android/a/e;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget v0, p0, Lcom/paypal/android/a/e;->f:I

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p1, :cond_2

    iget v0, p0, Lcom/paypal/android/a/e;->c:I

    if-lt p1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "State "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is outside the acceptable range 0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/paypal/android/a/e;->c:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput p1, p0, Lcom/paypal/android/a/e;->f:I

    iget-object v0, p0, Lcom/paypal/android/a/e;->a:[Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/paypal/android/a/e;->f:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/paypal/android/a/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/a/e;->b:Lcom/paypal/android/a/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/a/e;->b:Lcom/paypal/android/a/n;

    invoke-interface {v0, p0, p1}, Lcom/paypal/android/a/n;->a(Lcom/paypal/android/a/e;I)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/LinearLayout$LayoutParams;I)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/a/e;->a:[Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/paypal/android/a/e;->c:I

    new-array v0, v0, [Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/paypal/android/a/e;->a:[Landroid/widget/LinearLayout$LayoutParams;

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/a/e;->a:[Landroid/widget/LinearLayout$LayoutParams;

    aput-object p1, v0, p2

    iget v0, p0, Lcom/paypal/android/a/e;->f:I

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/paypal/android/a/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/paypal/android/a/n;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/a/e;->b:Lcom/paypal/android/a/n;

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/paypal/android/a/e;->a(Z)V

    return-void
.end method
