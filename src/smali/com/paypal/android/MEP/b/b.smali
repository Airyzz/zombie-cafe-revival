.class public final Lcom/paypal/android/MEP/b/b;
.super Lcom/paypal/android/a/i;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/paypal/android/MEP/e;
.implements Lcom/paypal/android/a/n;


# static fields
.field public static a:Ljava/lang/String;

.field private static l:Lcom/paypal/android/a/g;


# instance fields
.field private b:Lcom/paypal/android/MEP/b/b$a;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Lcom/paypal/android/MEP/a/f;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private m:Landroid/widget/TextView;

.field private n:Ljava/util/Hashtable;

.field private o:Lcom/paypal/android/a/a;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/MEP/b/b;->l:Lcom/paypal/android/a/g;

    sput-object v0, Lcom/paypal/android/MEP/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/paypal/android/a/i;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 7

    const/16 v6, 0xa

    const/4 v4, -0x2

    const/4 v3, 0x1

    const/4 v5, 0x5

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->q:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, v1, v4}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

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

    sget-object v0, Lcom/paypal/android/MEP/b/b;->l:Lcom/paypal/android/a/g;

    if-nez v0, :cond_1

    new-instance v0, Lcom/paypal/android/a/g;

    iget-object v2, p0, Lcom/paypal/android/MEP/b/b;->q:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/paypal/android/a/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/paypal/android/MEP/b/b;->l:Lcom/paypal/android/a/g;

    :goto_0
    sget-object v0, Lcom/paypal/android/b/h$a;->b:Lcom/paypal/android/b/h$a;

    iget-object v2, p0, Lcom/paypal/android/MEP/b/b;->q:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/capcom/facebook/a;->a(Lcom/paypal/android/b/h$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/b/b;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->m:Landroid/widget/TextView;

    const v2, -0xcc9967

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->q:Landroid/content/Context;

    invoke-static {v0, v4, v4}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v5, v6, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Lcom/paypal/android/a/a;

    iget-object v3, p0, Lcom/paypal/android/MEP/b/b;->q:Landroid/content/Context;

    sget-object v4, Lcom/paypal/android/a/a$a;->c:Lcom/paypal/android/a/a$a;

    invoke-direct {v2, v3, v4}, Lcom/paypal/android/a/a;-><init>(Landroid/content/Context;Lcom/paypal/android/a/a$a;)V

    const-string v3, "ANDROID_pin_success"

    invoke-static {v3}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v5, v5, v5}, Lcom/paypal/android/a/a;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    sget-object v0, Lcom/paypal/android/MEP/b/b;->l:Lcom/paypal/android/a/g;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    sget-object v0, Lcom/paypal/android/MEP/b/b;->l:Lcom/paypal/android/a/g;

    invoke-virtual {v0}, Lcom/paypal/android/a/g;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0
.end method

.method static synthetic c()Lcom/paypal/android/a/g;
    .locals 1

    sget-object v0, Lcom/paypal/android/MEP/b/b;->l:Lcom/paypal/android/a/g;

    return-object v0
.end method

.method private d()Z
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/b/d;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private e()Z
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {v0}, Lcom/paypal/android/b/d;->f(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private f()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v1, "NewPhone"

    iget-object v2, p0, Lcom/paypal/android/MEP/b/b;->n:Ljava/util/Hashtable;

    const-string v3, "mobileNumber"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/b/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v1, "NewPin"

    iget-object v2, p0, Lcom/paypal/android/MEP/b/b;->n:Ljava/util/Hashtable;

    const-string v3, "newPIN"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/b/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v1, "delegate"

    invoke-virtual {v0, v1, p0}, Lcom/paypal/android/b/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/b;->a(I)V

    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/paypal/android/MEP/b/b$a;->c:Lcom/paypal/android/MEP/b/b$a;

    iput-object v0, p0, Lcom/paypal/android/MEP/b/b;->b:Lcom/paypal/android/MEP/b/b$a;

    invoke-static {}, Lcom/capcom/facebook/a;->b()V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 9

    const/16 v8, 0xa

    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x5

    invoke-super {p0, p1}, Lcom/paypal/android/a/i;->a(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/paypal/android/MEP/b/b;->q:Landroid/content/Context;

    sget-object v0, Lcom/paypal/android/MEP/b/b$a;->a:Lcom/paypal/android/MEP/b/b$a;

    iput-object v0, p0, Lcom/paypal/android/MEP/b/b;->b:Lcom/paypal/android/MEP/b/b$a;

    invoke-static {p1, v5, v7}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    sget-object v1, Lcom/paypal/android/b/h$a;->a:Lcom/paypal/android/b/h$a;

    invoke-static {v1, p1}, Lcom/capcom/facebook/a;->b(Lcom/paypal/android/b/h$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/paypal/android/MEP/a/f;

    invoke-direct {v1, p1, p0}, Lcom/paypal/android/MEP/a/f;-><init>(Landroid/content/Context;Lcom/paypal/android/a/i;)V

    iput-object v1, p0, Lcom/paypal/android/MEP/b/b;->f:Lcom/paypal/android/MEP/a/f;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->f:Lcom/paypal/android/MEP/a/f;

    invoke-virtual {v1, p0}, Lcom/paypal/android/MEP/a/f;->a(Lcom/paypal/android/a/n;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->f:Lcom/paypal/android/MEP/a/f;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/b;->addView(Landroid/view/View;)V

    invoke-static {p1, v5, v5}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/b/b;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8, v4, v8, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->d:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/capcom/facebook/a;->e()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/paypal/android/a/k;

    const-string v1, "ANDROID_payment_made"

    invoke-static {v1}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/paypal/android/a/k;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1, v5, v7}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/b/b;->p:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v8, v4, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v0, Lcom/paypal/android/a/a;

    sget-object v1, Lcom/paypal/android/a/a$a;->b:Lcom/paypal/android/a/a$a;

    invoke-direct {v0, p1, v1}, Lcom/paypal/android/a/a;-><init>(Landroid/content/Context;Lcom/paypal/android/a/a$a;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/b/b;->o:Lcom/paypal/android/a/a;

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->o:Lcom/paypal/android/a/a;

    const-string v1, "This page is currently being used to test components."

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->o:Lcom/paypal/android/a/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2, v4}, Lcom/paypal/android/a/a;->setPadding(IIII)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->p:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->o:Lcom/paypal/android/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1, v5, v7}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    sget-object v1, Lcom/paypal/android/b/h$a;->a:Lcom/paypal/android/b/h$a;

    invoke-static {v1, p1}, Lcom/capcom/facebook/a;->a(Lcom/paypal/android/b/h$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    const v2, -0xe4c99c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "ANDROID_create_a_pin"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1, v5, v7}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v8, v8, v8, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {}, Lcom/capcom/facebook/a;->e()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/MEP/b/b;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->g:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->g:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->g:Landroid/widget/EditText;

    const-string v2, "ANDROID_enter_mobile"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->g:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->g:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/MEP/b/b;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->h:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->h:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->h:Landroid/widget/EditText;

    const-string v2, "ANDROID_enter_pin"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->h:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->h:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->h:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/MEP/b/b;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->i:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->i:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->i:Landroid/widget/EditText;

    const-string v2, "ANDROID_reenter_pin"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->i:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->i:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->i:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1, v5, v7}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v4, v8, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/MEP/b/b;->j:Landroid/widget/Button;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->j:Landroid/widget/Button;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/capcom/facebook/a;->f()I

    move-result v3

    invoke-direct {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->j:Landroid/widget/Button;

    const-string v2, "ANDROID_create_pin"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->j:Landroid/widget/Button;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->j:Landroid/widget/Button;

    invoke-static {}, Lcom/capcom/facebook/a;->c()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->j:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->j:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->j:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1, v5, v7}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v4, v4, v4, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/MEP/b/b;->k:Landroid/widget/Button;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->k:Landroid/widget/Button;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/capcom/facebook/a;->f()I

    move-result v3

    invoke-direct {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->k:Landroid/widget/Button;

    const-string v2, "ANDROID_skip"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->k:Landroid/widget/Button;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->k:Landroid/widget/Button;

    invoke-static {}, Lcom/capcom/facebook/a;->d()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->k:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->k:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/b;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/b/b;->e:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->e:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->e:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/capcom/facebook/a;->e()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "ANDROID_creating_pin"

    invoke-static {v0}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/paypal/android/MEP/b/b;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->e:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/b;->addView(Landroid/view/View;)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/MEP/b/b;->n:Ljava/util/Hashtable;

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->canShowCart()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->f:Lcom/paypal/android/MEP/a/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/MEP/a/f;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/paypal/android/a/e;I)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/paypal/android/MEP/b/b;->l:Lcom/paypal/android/a/g;

    invoke-virtual {v0}, Lcom/paypal/android/a/g;->b()V

    iput-object p1, p0, Lcom/paypal/android/MEP/b/b;->c:Ljava/lang/String;

    sget-object v0, Lcom/paypal/android/MEP/b/b$a;->b:Lcom/paypal/android/MEP/b/b$a;

    iput-object v0, p0, Lcom/paypal/android/MEP/b/b;->b:Lcom/paypal/android/MEP/b/b$a;

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->h:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->i:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/capcom/facebook/a;->b()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->n:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a_()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->b:Lcom/paypal/android/MEP/b/b$a;

    sget-object v1, Lcom/paypal/android/MEP/b/b$a;->b:Lcom/paypal/android/MEP/b/b$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->e:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->o:Lcom/paypal/android/a/a;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->b:Lcom/paypal/android/MEP/b/b$a;

    sget-object v1, Lcom/paypal/android/MEP/b/b$a;->c:Lcom/paypal/android/MEP/b/b$a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/paypal/android/MEP/b/b;->l:Lcom/paypal/android/a/g;

    invoke-virtual {v0}, Lcom/paypal/android/a/g;->b()V

    const-string v0, "ANDROID_returning_to_merchant"

    invoke-static {v0}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/paypal/android/MEP/b/b;->a(Ljava/lang/String;Z)V

    sget-object v0, Lcom/paypal/android/MEP/b/b;->l:Lcom/paypal/android/a/g;

    invoke-virtual {v0}, Lcom/paypal/android/a/g;->a()V

    new-instance v0, Lcom/paypal/android/MEP/b/i;

    invoke-direct {v0}, Lcom/paypal/android/MEP/b/i;-><init>()V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-direct {p0}, Lcom/paypal/android/MEP/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/paypal/android/MEP/b/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->j:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->j:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->j:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/paypal/android/MEP/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/paypal/android/MEP/b/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/paypal/android/MEP/b/b;->f()V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-static {}, Lcom/paypal/android/MEP/d;->a()Lcom/paypal/android/MEP/d;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/MEP/b/b;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/MEP/b/b;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/paypal/android/MEP/d;->b(Lcom/paypal/android/MEP/e;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->e:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget-object v0, Lcom/paypal/android/MEP/b/b;->l:Lcom/paypal/android/a/g;

    invoke-virtual {v0}, Lcom/paypal/android/a/g;->a()V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/paypal/android/MEP/b/b$a;->c:Lcom/paypal/android/MEP/b/b$a;

    iput-object v0, p0, Lcom/paypal/android/MEP/b/b;->b:Lcom/paypal/android/MEP/b/b$a;

    invoke-static {}, Lcom/capcom/facebook/a;->b()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/MEP/b/b;->k:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/paypal/android/MEP/b/b;->f()V

    sget-object v0, Lcom/paypal/android/MEP/b/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/paypal/android/MEP/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "11111111"

    sput-object v0, Lcom/paypal/android/MEP/b/b;->a:Ljava/lang/String;

    :cond_4
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

    invoke-virtual {v2, v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->paymentSucceeded(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
