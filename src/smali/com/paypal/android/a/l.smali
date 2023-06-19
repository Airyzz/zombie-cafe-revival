.class public final Lcom/paypal/android/a/l;
.super Lcom/paypal/android/a/j;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/paypal/android/a/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/paypal/android/a/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p0}, Lcom/paypal/android/a/l;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/paypal/android/a/o;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/a/l;->a:Lcom/paypal/android/a/o;

    return-void
.end method

.method protected final drawableStateChanged()V
    .locals 0

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/paypal/android/a/l;->a()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/paypal/android/a/l;->a(I)V

    iget-object v0, p0, Lcom/paypal/android/a/l;->a:Lcom/paypal/android/a/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/a/l;->a:Lcom/paypal/android/a/o;

    invoke-interface {v0}, Lcom/paypal/android/a/o;->e()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
