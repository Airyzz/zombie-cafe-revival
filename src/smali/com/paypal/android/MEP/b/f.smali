.class public final Lcom/paypal/android/MEP/b/f;
.super Lcom/paypal/android/a/i;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/paypal/android/MEP/a/g;
.implements Lcom/paypal/android/MEP/e;
.implements Lcom/paypal/android/a/n;


# static fields
.field private static n:Lcom/paypal/android/a/g;


# instance fields
.field private a:Lcom/paypal/android/MEP/b/f$a;

.field private b:Lcom/paypal/android/MEP/a/f;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Lcom/paypal/android/a/a;

.field private h:Lcom/paypal/android/a/a;

.field private i:Ljava/lang/String;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/MEP/b/f;->n:Lcom/paypal/android/a/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/paypal/android/a/i;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/MEP/b/f;->m:Landroid/widget/TextView;

    return-void
.end method

.method private a(Lcom/paypal/android/MEP/b/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/b/f;->a:Lcom/paypal/android/MEP/b/f$a;

    invoke-static {}, Lcom/capcom/facebook/a;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v2

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v1, "PreapprovalKey"

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v3, "PaymentExecStatus"

    invoke-virtual {v1, v3}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/paypal/android/MEP/PayPalActivity;->paymentSucceeded(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 13

    const/4 v12, -0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x5

    const/4 v8, -0x1

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPreapproval()Lcom/paypal/android/MEP/PayPalPreapproval;

    move-result-object v1

    invoke-super {p0, p1}, Lcom/paypal/android/a/i;->a(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPreapproval;->getPinRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v2, "mpl-preapproval-PIN"

    invoke-virtual {v0, v2}, Lcom/paypal/android/b/b;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/paypal/android/MEP/b/f$a;->a:Lcom/paypal/android/MEP/b/f$a;

    iput-object v0, p0, Lcom/paypal/android/MEP/b/f;->a:Lcom/paypal/android/MEP/b/f$a;

    :goto_0
    invoke-static {p1, v8, v12}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xf

    invoke-virtual {v0, v9, v9, v9, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    sget-object v2, Lcom/paypal/android/b/h$a;->a:Lcom/paypal/android/b/h$a;

    invoke-static {v2, p1}, Lcom/capcom/facebook/a;->b(Lcom/paypal/android/b/h$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/paypal/android/MEP/a/f;

    invoke-direct {v2, p1, p0}, Lcom/paypal/android/MEP/a/f;-><init>(Landroid/content/Context;Lcom/paypal/android/a/i;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/b/f;->b:Lcom/paypal/android/MEP/a/f;

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->b:Lcom/paypal/android/MEP/a/f;

    invoke-virtual {v2, p0}, Lcom/paypal/android/MEP/a/f;->a(Lcom/paypal/android/a/n;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->b:Lcom/paypal/android/MEP/a/f;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/f;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/b/f;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->j:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->j:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/capcom/facebook/a;->e()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "ANDROID_create_code"

    invoke-static {v0}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/paypal/android/a/k;

    invoke-direct {v2, v0, p1}, Lcom/paypal/android/a/k;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const v2, -0xcc9967

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    const-string v2, "Helvetica"

    invoke-static {v2, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v2, "ANDROID_require_pin"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%m"

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPreapproval;->getMerchantName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1, v8, v12}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-virtual {v0, v9, v2, v9, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Lcom/paypal/android/a/a;

    sget-object v3, Lcom/paypal/android/a/a$a;->b:Lcom/paypal/android/a/a$a;

    invoke-direct {v2, p1, v3}, Lcom/paypal/android/a/a;-><init>(Landroid/content/Context;Lcom/paypal/android/a/a$a;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/b/f;->h:Lcom/paypal/android/a/a;

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->h:Lcom/paypal/android/a/a;

    const-string v3, "This page is currently being used to test components."

    invoke-virtual {v2, v3}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->h:Lcom/paypal/android/a/a;

    invoke-virtual {v2, v11, v9, v11, v9}, Lcom/paypal/android/a/a;->setPadding(IIII)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->h:Lcom/paypal/android/a/a;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/paypal/android/a/a;->setVisibility(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->h:Lcom/paypal/android/a/a;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "ANDROID_enter_code"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/16 v2, 0x1f41

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setId(I)V

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "ANDROID_reenter_code"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/16 v2, 0x1f42

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setId(I)V

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1, v8, v12}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/b/f;->f:Landroid/widget/Button;

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->f:Landroid/widget/Button;

    const-string v3, "ANDROID_create"

    invoke-static {v3}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->f:Landroid/widget/Button;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/capcom/facebook/a;->f()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v3, v8, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->f:Landroid/widget/Button;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setGravity(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->f:Landroid/widget/Button;

    invoke-static {}, Lcom/capcom/facebook/a;->c()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->f:Landroid/widget/Button;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->f:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1, v8, v12}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v3, p0, Lcom/paypal/android/MEP/b/f;->f:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v3, 0xf

    const/16 v4, 0xf

    invoke-virtual {v2, v11, v3, v11, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/b/f;->d:Landroid/widget/Button;

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->d:Landroid/widget/Button;

    const-string v3, "ANDROID_cancel"

    invoke-static {v3}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->d:Landroid/widget/Button;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/capcom/facebook/a;->f()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v3, v8, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->d:Landroid/widget/Button;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setGravity(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->d:Landroid/widget/Button;

    invoke-static {}, Lcom/capcom/facebook/a;->d()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->d:Landroid/widget/Button;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->d:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/f;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/b/f;->k:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->k:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->k:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/capcom/facebook/a;->e()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/paypal/android/a/k;

    const-string v2, "ANDROID_review"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/paypal/android/a/k;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v2, -0x170e06

    const v3, -0x777778

    invoke-static {v2, v3}, Lcom/capcom/facebook/a;->b(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/16 v5, 0xa

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const-string v3, "Helvetica"

    invoke-static {v3, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v3, "ANDROID_payment_method"

    invoke-static {v3}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    const-string v3, "Helvetica"

    invoke-static {v3, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANDROID_primary_source"

    invoke-static {v4}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    const-string v3, "Helvetica"

    invoke-static {v3, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v3, "ANDROID_paypal_balance"

    invoke-static {v3}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    const-string v2, "Helvetica"

    invoke-static {v2, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/16 v5, 0xa

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v2, "ANDROID_preapproval_agreement"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%m"

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPreapproval;->getMerchantName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ANDROID_view_policies"

    invoke-static {v3}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    const-string v5, "ANDROID_view_policies"

    invoke-static {v5}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://www.paypal.com/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v6}, Lcom/paypal/android/MEP/PayPal;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cgi-bin/webscr?cmd=xpt/Marketing/popup/FundingMixEducation-outside"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/text/style/URLSpan;

    invoke-direct {v5, v4}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const-string v4, "ANDROID_view_policies"

    invoke-static {v4}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v6, 0x21

    invoke-virtual {v3, v5, v2, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const-string v2, "ANDROID_view_policies"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v4, "https://"

    invoke-static {v3, v2, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1, v8, v12}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-virtual {v0, v9, v2, v9, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Lcom/paypal/android/a/a;

    sget-object v3, Lcom/paypal/android/a/a$a;->b:Lcom/paypal/android/a/a$a;

    invoke-direct {v2, p1, v3}, Lcom/paypal/android/a/a;-><init>(Landroid/content/Context;Lcom/paypal/android/a/a$a;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/b/f;->g:Lcom/paypal/android/a/a;

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->g:Lcom/paypal/android/a/a;

    const-string v3, "This page is currently being used to test components."

    invoke-virtual {v2, v3}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->g:Lcom/paypal/android/a/a;

    invoke-virtual {v2, v11, v9, v11, v9}, Lcom/paypal/android/a/a;->setPadding(IIII)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->g:Lcom/paypal/android/a/a;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/paypal/android/a/a;->setVisibility(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->g:Lcom/paypal/android/a/a;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1, v8, v12}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/b/f;->c:Landroid/widget/Button;

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getPreapproval()Lcom/paypal/android/MEP/PayPalPreapproval;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPalPreapproval;->getType()I

    move-result v2

    if-ne v2, v10, :cond_1

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->c:Landroid/widget/Button;

    const-string v3, "ANDROID_agree_pay"

    invoke-static {v3}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->c:Landroid/widget/Button;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/capcom/facebook/a;->f()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v3, v8, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->c:Landroid/widget/Button;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setGravity(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->c:Landroid/widget/Button;

    invoke-static {}, Lcom/capcom/facebook/a;->c()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->c:Landroid/widget/Button;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->c:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1, v8, v12}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v3, p0, Lcom/paypal/android/MEP/b/f;->c:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v3, 0xf

    const/16 v4, 0xf

    invoke-virtual {v2, v11, v3, v11, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/b/f;->e:Landroid/widget/Button;

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->e:Landroid/widget/Button;

    const-string v3, "ANDROID_cancel"

    invoke-static {v3}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->e:Landroid/widget/Button;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/capcom/facebook/a;->f()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v3, v8, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->e:Landroid/widget/Button;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setGravity(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->e:Landroid/widget/Button;

    invoke-static {}, Lcom/capcom/facebook/a;->d()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->e:Landroid/widget/Button;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->e:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/f;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/b/f;->l:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->l:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->l:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/capcom/facebook/a;->e()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1, v8, v12}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget-object v0, Lcom/paypal/android/MEP/b/f;->n:Lcom/paypal/android/a/g;

    if-nez v0, :cond_2

    new-instance v0, Lcom/paypal/android/a/g;

    invoke-direct {v0, p1}, Lcom/paypal/android/a/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/paypal/android/MEP/b/f;->n:Lcom/paypal/android/a/g;

    :goto_2
    sget-object v0, Lcom/paypal/android/b/h$a;->b:Lcom/paypal/android/b/h$a;

    invoke-static {v0, p1}, Lcom/capcom/facebook/a;->a(Lcom/paypal/android/b/h$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/b/f;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->m:Landroid/widget/TextView;

    const v3, -0xcc9967

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->m:Landroid/widget/TextView;

    const-string v3, "ANDROID_processing_transaction_message"

    invoke-static {v3}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/paypal/android/MEP/b/f;->n:Lcom/paypal/android/a/g;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->l:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/f;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPreapproval;->getPinRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->k:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    return-void

    :cond_0
    sget-object v0, Lcom/paypal/android/MEP/b/f$a;->b:Lcom/paypal/android/MEP/b/f$a;

    iput-object v0, p0, Lcom/paypal/android/MEP/b/f;->a:Lcom/paypal/android/MEP/b/f$a;

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lcom/paypal/android/MEP/b/f;->c:Landroid/widget/Button;

    const-string v3, "ANDROID_agree"

    invoke-static {v3}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/paypal/android/MEP/b/f;->n:Lcom/paypal/android/a/g;

    invoke-virtual {v0}, Lcom/paypal/android/a/g;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3
.end method

.method public final a(Lcom/paypal/android/MEP/a/c;I)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/paypal/android/a/e;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->b:Lcom/paypal/android/MEP/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->b:Lcom/paypal/android/MEP/a/f;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->b:Lcom/paypal/android/MEP/a/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/a/f;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->a:Lcom/paypal/android/MEP/b/f$a;

    sget-object v1, Lcom/paypal/android/MEP/b/f$a;->c:Lcom/paypal/android/MEP/b/f$a;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/paypal/android/MEP/b/f;->i:Ljava/lang/String;

    sget-object v0, Lcom/paypal/android/MEP/b/f$a;->d:Lcom/paypal/android/MEP/b/f$a;

    invoke-direct {p0, v0}, Lcom/paypal/android/MEP/b/f;->a(Lcom/paypal/android/MEP/b/f$a;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final a_()V
    .locals 5

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->a:Lcom/paypal/android/MEP/b/f$a;

    sget-object v1, Lcom/paypal/android/MEP/b/f$a;->c:Lcom/paypal/android/MEP/b/f$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->b:Lcom/paypal/android/MEP/a/f;

    invoke-virtual {v0, v2, v4}, Lcom/paypal/android/MEP/a/f;->a(ZZ)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget-object v0, Lcom/paypal/android/MEP/b/f;->n:Lcom/paypal/android/a/g;

    invoke-virtual {v0}, Lcom/paypal/android/a/g;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->a:Lcom/paypal/android/MEP/b/f$a;

    sget-object v1, Lcom/paypal/android/MEP/b/f$a;->a:Lcom/paypal/android/MEP/b/f$a;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->a:Lcom/paypal/android/MEP/b/f$a;

    sget-object v1, Lcom/paypal/android/MEP/b/f$a;->b:Lcom/paypal/android/MEP/b/f$a;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->a:Lcom/paypal/android/MEP/b/f$a;

    sget-object v1, Lcom/paypal/android/MEP/b/f$a;->d:Lcom/paypal/android/MEP/b/f$a;

    if-ne v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->b:Lcom/paypal/android/MEP/a/f;

    invoke-virtual {v0, v4, v2}, Lcom/paypal/android/MEP/a/f;->a(ZZ)V

    sget-object v0, Lcom/paypal/android/MEP/b/f;->n:Lcom/paypal/android/a/g;

    invoke-virtual {v0}, Lcom/paypal/android/a/g;->b()V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->a:Lcom/paypal/android/MEP/b/f$a;

    sget-object v1, Lcom/paypal/android/MEP/b/f$a;->a:Lcom/paypal/android/MEP/b/f$a;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->a:Lcom/paypal/android/MEP/b/f$a;

    sget-object v1, Lcom/paypal/android/MEP/b/f$a;->b:Lcom/paypal/android/MEP/b/f$a;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->g:Lcom/paypal/android/a/a;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/f;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->g:Lcom/paypal/android/a/a;

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/a;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->h:Lcom/paypal/android/a/a;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/f;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->h:Lcom/paypal/android/a/a;

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/a;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()Lcom/paypal/android/MEP/b/f$a;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->a:Lcom/paypal/android/MEP/b/f$a;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7

    const/16 v6, 0x1f42

    const/16 v5, 0x1f41

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->d:Landroid/widget/Button;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->e:Landroid/widget/Button;

    if-ne v0, p1, :cond_2

    :cond_0
    new-instance v0, Lcom/paypal/android/MEP/a/a;

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/paypal/android/MEP/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/paypal/android/MEP/a/a;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->c:Landroid/widget/Button;

    if-ne v0, p1, :cond_4

    sget-object v0, Lcom/paypal/android/MEP/b/f$a;->c:Lcom/paypal/android/MEP/b/f$a;

    invoke-direct {p0, v0}, Lcom/paypal/android/MEP/b/f;->a(Lcom/paypal/android/MEP/b/f$a;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    const-string v1, "Demo Preapproval Key"

    const-string v3, "COMPLETED"

    invoke-virtual {v0, v1, v3, v2}, Lcom/paypal/android/MEP/PayPalActivity;->paymentSucceeded(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v1, "delegate"

    invoke-virtual {v0, v1, p0}, Lcom/paypal/android/b/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/b;->a(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/paypal/android/MEP/b/f;->f:Landroid/widget/Button;

    if-ne v0, p1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Lcom/paypal/android/MEP/PayPalActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/16 v3, 0x1f41

    invoke-virtual {p0, v3}, Lcom/paypal/android/MEP/b/f;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Lcom/paypal/android/MEP/PayPalActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/16 v3, 0x1f42

    invoke-virtual {p0, v3}, Lcom/paypal/android/MEP/b/f;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    invoke-virtual {p0, v5}, Lcom/paypal/android/MEP/b/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {p0, v6}, Lcom/paypal/android/MEP/b/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_5

    if-nez v4, :cond_d

    :cond_5
    move v0, v2

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move v0, v2

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-le v4, v5, :cond_8

    :cond_7
    move v0, v2

    :cond_8
    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_b

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_9

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x39

    if-le v4, v5, :cond_a

    :cond_9
    move v0, v2

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    if-eqz v0, :cond_c

    const-string v0, "ANDROID_pin_invalid"

    invoke-static {v0}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/b/f;->i:Ljava/lang/String;

    sget-object v0, Lcom/paypal/android/MEP/b/f$a;->d:Lcom/paypal/android/MEP/b/f$a;

    invoke-direct {p0, v0}, Lcom/paypal/android/MEP/b/f;->a(Lcom/paypal/android/MEP/b/f$a;)V

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v1, "Pin"

    invoke-virtual {v0, v1, v3}, Lcom/paypal/android/b/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/paypal/android/MEP/b/f$a;->b:Lcom/paypal/android/MEP/b/f$a;

    invoke-direct {p0, v0}, Lcom/paypal/android/MEP/b/f;->a(Lcom/paypal/android/MEP/b/f$a;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_d
    move v0, v1

    goto :goto_3
.end method
