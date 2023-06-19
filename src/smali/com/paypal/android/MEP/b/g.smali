.class public final Lcom/paypal/android/MEP/b/g;
.super Lcom/paypal/android/a/i;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/paypal/android/MEP/a/g;
.implements Lcom/paypal/android/MEP/e;
.implements Lcom/paypal/android/a/n;


# static fields
.field public static a:Ljava/util/Hashtable;

.field private static n:Lcom/paypal/android/a/g;


# instance fields
.field private b:Lcom/paypal/android/MEP/b/g$a;

.field private c:Lcom/paypal/android/MEP/a/f;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Lcom/paypal/android/MEP/a/c;

.field private g:Lcom/paypal/android/MEP/a/c;

.field private h:Lcom/paypal/android/MEP/a/c;

.field private i:Lcom/paypal/android/a/a;

.field private j:Ljava/lang/String;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/TextView;

.field private o:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/MEP/b/g;->a:Ljava/util/Hashtable;

    sput-object v0, Lcom/paypal/android/MEP/b/g;->n:Lcom/paypal/android/a/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/paypal/android/a/i;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/MEP/b/g;->m:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/paypal/android/MEP/b/g;->o:Landroid/content/Context;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->o:Landroid/content/Context;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget-object v0, Lcom/paypal/android/MEP/b/g;->n:Lcom/paypal/android/a/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/paypal/android/a/g;

    iget-object v2, p0, Lcom/paypal/android/MEP/b/g;->o:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/paypal/android/a/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/paypal/android/MEP/b/g;->n:Lcom/paypal/android/a/g;

    :goto_0
    sget-object v0, Lcom/paypal/android/b/h$a;->b:Lcom/paypal/android/b/h$a;

    iget-object v2, p0, Lcom/paypal/android/MEP/b/g;->o:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/capcom/facebook/a;->a(Lcom/paypal/android/b/h$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/b/g;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->m:Landroid/widget/TextView;

    const v2, -0xcc9967

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/paypal/android/MEP/b/g;->n:Lcom/paypal/android/a/g;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    sget-object v0, Lcom/paypal/android/MEP/b/g;->n:Lcom/paypal/android/a/g;

    invoke-virtual {v0}, Lcom/paypal/android/a/g;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v1, "delegate"

    invoke-virtual {v0, v1, p0}, Lcom/paypal/android/b/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/b;->a(I)V

    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->b:Lcom/paypal/android/MEP/b/g$a;

    sget-object v1, Lcom/paypal/android/MEP/b/g$a;->b:Lcom/paypal/android/MEP/b/g$a;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->hasOptedIn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->hasCreatedPIN()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->isLightCountry()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPayType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v2

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v1, "PayKey"

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v3, "PaymentExecStatus"

    invoke-virtual {v1, v3}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v4}, Lcom/paypal/android/MEP/PayPalActivity;->paymentSucceeded(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/paypal/android/MEP/PayPalActivity;->setTransactionSuccessful(Z)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v2

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v1, "PayKey"

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v3, "PaymentExecStatus"

    invoke-virtual {v1, v3}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/paypal/android/MEP/PayPalActivity;->paymentSucceeded(Ljava/lang/String;Ljava/lang/String;Z)V

    check-cast p2, Ljava/lang/String;

    sput-object p2, Lcom/paypal/android/MEP/b/b;->a:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/capcom/facebook/a;->b(I)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 10

    const/4 v9, -0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x5

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-super {p0, p1}, Lcom/paypal/android/a/i;->a(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/paypal/android/MEP/b/g;->o:Landroid/content/Context;

    sget-object v1, Lcom/paypal/android/MEP/b/g$a;->a:Lcom/paypal/android/MEP/b/g$a;

    iput-object v1, p0, Lcom/paypal/android/MEP/b/g;->b:Lcom/paypal/android/MEP/b/g$a;

    invoke-static {p1, v6, v9}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xf

    invoke-virtual {v1, v5, v5, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    sget-object v2, Lcom/paypal/android/b/h$a;->a:Lcom/paypal/android/b/h$a;

    invoke-static {v2, p1}, Lcom/capcom/facebook/a;->b(Lcom/paypal/android/b/h$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/paypal/android/MEP/a/f;

    invoke-direct {v2, p1, p0}, Lcom/paypal/android/MEP/a/f;-><init>(Landroid/content/Context;Lcom/paypal/android/a/i;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/b/g;->c:Lcom/paypal/android/MEP/a/f;

    iget-object v2, p0, Lcom/paypal/android/MEP/b/g;->c:Lcom/paypal/android/MEP/a/f;

    invoke-virtual {v2, p0}, Lcom/paypal/android/MEP/a/f;->a(Lcom/paypal/android/a/n;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/g;->c:Lcom/paypal/android/MEP/a/f;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/paypal/android/MEP/b/g;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/MEP/b/g;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->k:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->k:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/capcom/facebook/a;->e()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/paypal/android/a/k;

    const-string v2, "ANDROID_review"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/paypal/android/a/k;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/g;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1, v6, v9}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-virtual {v1, v5, v2, v5, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Lcom/paypal/android/a/a;

    sget-object v3, Lcom/paypal/android/a/a$a;->b:Lcom/paypal/android/a/a$a;

    invoke-direct {v2, p1, v3}, Lcom/paypal/android/a/a;-><init>(Landroid/content/Context;Lcom/paypal/android/a/a$a;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/b/g;->i:Lcom/paypal/android/a/a;

    iget-object v2, p0, Lcom/paypal/android/MEP/b/g;->i:Lcom/paypal/android/a/a;

    const-string v3, "This page is currently being used to test components."

    invoke-virtual {v2, v3}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/g;->i:Lcom/paypal/android/a/a;

    invoke-virtual {v2, v7, v5, v7, v5}, Lcom/paypal/android/a/a;->setPadding(IIII)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/g;->i:Lcom/paypal/android/a/a;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/paypal/android/a/a;->setVisibility(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/g;->i:Lcom/paypal/android/a/a;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/g;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/paypal/android/MEP/a/c;

    sget-object v2, Lcom/paypal/android/MEP/a/c$a;->b:Lcom/paypal/android/MEP/a/c$a;

    invoke-direct {v1, p1, v2, p0}, Lcom/paypal/android/MEP/a/c;-><init>(Landroid/content/Context;Lcom/paypal/android/MEP/a/c$a;Lcom/paypal/android/MEP/b/g;)V

    iput-object v1, p0, Lcom/paypal/android/MEP/b/g;->g:Lcom/paypal/android/MEP/a/c;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->g:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v1, p0}, Lcom/paypal/android/MEP/a/c;->a(Lcom/paypal/android/a/n;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->g:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v1, v7, v5, v7, v5}, Lcom/paypal/android/MEP/a/c;->setPadding(IIII)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->g:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v1, p0}, Lcom/paypal/android/MEP/a/c;->a(Lcom/paypal/android/MEP/a/g;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->shouldShowFees()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->k:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/paypal/android/MEP/b/g;->g:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    new-instance v1, Lcom/paypal/android/MEP/a/c;

    sget-object v2, Lcom/paypal/android/MEP/a/c$a;->a:Lcom/paypal/android/MEP/a/c$a;

    invoke-direct {v1, p1, v2, p0}, Lcom/paypal/android/MEP/a/c;-><init>(Landroid/content/Context;Lcom/paypal/android/MEP/a/c$a;Lcom/paypal/android/MEP/b/g;)V

    iput-object v1, p0, Lcom/paypal/android/MEP/b/g;->f:Lcom/paypal/android/MEP/a/c;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->f:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v1, p0}, Lcom/paypal/android/MEP/a/c;->a(Lcom/paypal/android/a/n;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->f:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v1, v7, v5, v7, v5}, Lcom/paypal/android/MEP/a/c;->setPadding(IIII)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->f:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v1, p0}, Lcom/paypal/android/MEP/a/c;->a(Lcom/paypal/android/MEP/a/g;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->k:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/paypal/android/MEP/b/g;->f:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/paypal/android/MEP/a/c;

    sget-object v2, Lcom/paypal/android/MEP/a/c$a;->c:Lcom/paypal/android/MEP/a/c$a;

    invoke-direct {v1, p1, v2, p0}, Lcom/paypal/android/MEP/a/c;-><init>(Landroid/content/Context;Lcom/paypal/android/MEP/a/c$a;Lcom/paypal/android/MEP/b/g;)V

    iput-object v1, p0, Lcom/paypal/android/MEP/b/g;->h:Lcom/paypal/android/MEP/a/c;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->h:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v1, p0}, Lcom/paypal/android/MEP/a/c;->a(Lcom/paypal/android/a/n;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->h:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v1, v7, v5, v7, v5}, Lcom/paypal/android/MEP/a/c;->setPadding(IIII)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->h:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v1, p0}, Lcom/paypal/android/MEP/a/c;->a(Lcom/paypal/android/MEP/a/g;)V

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getShippingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->k:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/paypal/android/MEP/b/g;->h:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    invoke-static {p1, v6, v9}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0xa

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/b/g;->e:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getTextType()I

    move-result v0

    if-ne v0, v8, :cond_3

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->e:Landroid/widget/Button;

    const-string v2, "ANDROID_donate"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->e:Landroid/widget/Button;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/capcom/facebook/a;->f()I

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v2, v6, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->e:Landroid/widget/Button;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setGravity(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->e:Landroid/widget/Button;

    invoke-static {}, Lcom/capcom/facebook/a;->c()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->e:Landroid/widget/Button;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->e:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1, v6, v9}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v5, v5, v5, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/MEP/b/g;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->d:Landroid/widget/Button;

    const-string v2, "ANDROID_cancel"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->d:Landroid/widget/Button;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/capcom/facebook/a;->f()I

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v2, v6, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->d:Landroid/widget/Button;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setGravity(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->d:Landroid/widget/Button;

    invoke-static {}, Lcom/capcom/facebook/a;->d()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->d:Landroid/widget/Button;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->d:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/g;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/b/g;->l:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->l:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->l:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/capcom/facebook/a;->e()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1, v6, v9}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget-object v0, Lcom/paypal/android/MEP/b/g;->n:Lcom/paypal/android/a/g;

    if-nez v0, :cond_4

    new-instance v0, Lcom/paypal/android/a/g;

    invoke-direct {v0, p1}, Lcom/paypal/android/a/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/paypal/android/MEP/b/g;->n:Lcom/paypal/android/a/g;

    :goto_1
    sget-object v0, Lcom/paypal/android/b/h$a;->b:Lcom/paypal/android/b/h$a;

    invoke-static {v0, p1}, Lcom/capcom/facebook/a;->a(Lcom/paypal/android/b/h$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/b/g;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->m:Landroid/widget/TextView;

    const v2, -0xcc9967

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->m:Landroid/widget/TextView;

    const-string v2, "ANDROID_processing_transaction_message"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/paypal/android/MEP/b/g;->n:Lcom/paypal/android/a/g;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->l:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/g;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->canShowCart()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->c:Lcom/paypal/android/MEP/a/f;

    invoke-virtual {v0, v7, v7}, Lcom/paypal/android/MEP/a/f;->a(ZZ)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->e:Landroid/widget/Button;

    const-string v2, "ANDROID_pay"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/paypal/android/MEP/b/g;->n:Lcom/paypal/android/a/g;

    invoke-virtual {v0}, Lcom/paypal/android/a/g;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_1
.end method

.method public final a(Lcom/paypal/android/MEP/a/c;I)V
    .locals 2

    sget-object v0, Lcom/paypal/android/MEP/b/l;->a:[I

    invoke-virtual {p1}, Lcom/paypal/android/MEP/a/c;->b()Lcom/paypal/android/MEP/a/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/a/c$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->f:Lcom/paypal/android/MEP/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->f:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v0, p2}, Lcom/paypal/android/MEP/a/c;->setNextFocusUpId(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->h:Lcom/paypal/android/MEP/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->h:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v0, p2}, Lcom/paypal/android/MEP/a/c;->setNextFocusUpId(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->e:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->e:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setNextFocusUpId(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/paypal/android/MEP/b/g$a;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/b/g;->b:Lcom/paypal/android/MEP/b/g$a;

    invoke-static {}, Lcom/capcom/facebook/a;->b()V

    return-void
.end method

.method public final a(Lcom/paypal/android/a/e;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->c:Lcom/paypal/android/MEP/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->c:Lcom/paypal/android/MEP/a/f;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->c:Lcom/paypal/android/MEP/a/f;

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/a/f;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->f:Lcom/paypal/android/MEP/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->f:Lcom/paypal/android/MEP/a/c;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->f:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/a/c;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->g:Lcom/paypal/android/MEP/a/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->g:Lcom/paypal/android/MEP/a/c;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->g:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/a/c;->a(I)V

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->h:Lcom/paypal/android/MEP/a/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->h:Lcom/paypal/android/MEP/a/c;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->h:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/a/c;->a(I)V

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->b:Lcom/paypal/android/MEP/b/g$a;

    sget-object v1, Lcom/paypal/android/MEP/b/g$a;->b:Lcom/paypal/android/MEP/b/g$a;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/paypal/android/MEP/b/g;->j:Ljava/lang/String;

    sget-object v0, Lcom/paypal/android/MEP/b/g$a;->c:Lcom/paypal/android/MEP/b/g$a;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/g;->a(Lcom/paypal/android/MEP/b/g$a;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final a_()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->f:Lcom/paypal/android/MEP/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->f:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/a/c;->c()V

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->g:Lcom/paypal/android/MEP/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->g:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/a/c;->c()V

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->h:Lcom/paypal/android/MEP/a/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->h:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/a/c;->c()V

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->b:Lcom/paypal/android/MEP/b/g$a;

    sget-object v1, Lcom/paypal/android/MEP/b/g$a;->b:Lcom/paypal/android/MEP/b/g$a;

    if-ne v0, v1, :cond_4

    const-string v0, "ANDROID_processing_transaction_message"

    invoke-static {v0}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/paypal/android/MEP/b/g;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->c:Lcom/paypal/android/MEP/a/f;

    invoke-virtual {v0, v2, v3}, Lcom/paypal/android/MEP/a/f;->a(ZZ)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget-object v0, Lcom/paypal/android/MEP/b/g;->n:Lcom/paypal/android/a/g;

    invoke-virtual {v0}, Lcom/paypal/android/a/g;->a()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->b:Lcom/paypal/android/MEP/b/g$a;

    sget-object v1, Lcom/paypal/android/MEP/b/g$a;->d:Lcom/paypal/android/MEP/b/g$a;

    if-ne v0, v1, :cond_5

    const-string v0, "ANDROID_getting_information"

    invoke-static {v0}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/paypal/android/MEP/b/g;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->c:Lcom/paypal/android/MEP/a/f;

    invoke-virtual {v0, v2, v3}, Lcom/paypal/android/MEP/a/f;->a(ZZ)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget-object v0, Lcom/paypal/android/MEP/b/g;->n:Lcom/paypal/android/a/g;

    invoke-virtual {v0}, Lcom/paypal/android/a/g;->a()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->b:Lcom/paypal/android/MEP/b/g$a;

    sget-object v1, Lcom/paypal/android/MEP/b/g$a;->a:Lcom/paypal/android/MEP/b/g$a;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->b:Lcom/paypal/android/MEP/b/g$a;

    sget-object v1, Lcom/paypal/android/MEP/b/g$a;->c:Lcom/paypal/android/MEP/b/g$a;

    if-ne v0, v1, :cond_3

    :cond_6
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->canShowCart()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->c:Lcom/paypal/android/MEP/a/f;

    invoke-virtual {v0, v3, v2}, Lcom/paypal/android/MEP/a/f;->a(ZZ)V

    :goto_1
    sget-object v0, Lcom/paypal/android/MEP/b/g;->n:Lcom/paypal/android/a/g;

    invoke-virtual {v0}, Lcom/paypal/android/a/g;->b()V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->b:Lcom/paypal/android/MEP/b/g$a;

    sget-object v1, Lcom/paypal/android/MEP/b/g$a;->c:Lcom/paypal/android/MEP/b/g$a;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->i:Lcom/paypal/android/a/a;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/g;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->i:Lcom/paypal/android/a/a;

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/a;->setVisibility(I)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->c:Lcom/paypal/android/MEP/a/f;

    invoke-virtual {v0, v2, v2}, Lcom/paypal/android/MEP/a/f;->a(ZZ)V

    goto :goto_1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()Lcom/paypal/android/MEP/b/g$a;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->b:Lcom/paypal/android/MEP/b/g$a;

    return-object v0
.end method

.method public final d()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->c:Lcom/paypal/android/MEP/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->c:Lcom/paypal/android/MEP/a/f;

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/a/f;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->f:Lcom/paypal/android/MEP/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->f:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/a/c;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->g:Lcom/paypal/android/MEP/a/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->g:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/a/c;->a(I)V

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->h:Lcom/paypal/android/MEP/a/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->h:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/a/c;->a(I)V

    :cond_3
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/high16 v4, 0x7f000000

    const/high16 v3, 0x7e000000

    const/high16 v2, 0x7d000000

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->d:Landroid/widget/Button;

    if-ne v0, p1, :cond_1

    new-instance v0, Lcom/paypal/android/MEP/a/a;

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/paypal/android/MEP/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/paypal/android/MEP/a/a;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->e:Landroid/widget/Button;

    if-ne v0, p1, :cond_3

    sget-object v0, Lcom/paypal/android/MEP/b/g$a;->b:Lcom/paypal/android/MEP/b/g$a;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/g;->a(Lcom/paypal/android/MEP/b/g$a;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x4

    const-string v1, "10088342"

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/MEP/b/g;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/paypal/android/MEP/d;->a()Lcom/paypal/android/MEP/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/paypal/android/MEP/d;->a(Lcom/paypal/android/MEP/e;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->f:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/a/c;->a(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->g:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/a/c;->a(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/g;->h:Lcom/paypal/android/MEP/a/c;

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/a/c;->a(I)V

    goto :goto_0
.end method
