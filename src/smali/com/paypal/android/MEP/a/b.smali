.class public final Lcom/paypal/android/MEP/a/b;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Z

.field private b:I

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v8, -0x2

    const/4 v1, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v6, v6, v6, v6}, Lcom/paypal/android/MEP/a/b;->setPadding(IIII)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/a/b;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->c:Landroid/widget/LinearLayout;

    const/16 v3, 0x1389

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->c:Landroid/widget/LinearLayout;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6, v2, v6, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->isLightCountry()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "tab-selected-email.png"

    invoke-static {p1, v0}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/a/b;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v6, v2, v6, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->c:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/paypal/android/MEP/a/b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v0, "tab-unselected-email.png"

    invoke-static {p1, v0}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/a/b;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v6, v2, v6, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->c:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/paypal/android/MEP/a/b;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v0, "tab-selected-phone.png"

    invoke-static {p1, v0}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/a/b;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v6, v2, v6, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->c:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/paypal/android/MEP/a/b;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v0, "tab-unselected-phone.png"

    invoke-static {p1, v0}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/a/b;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v6, v2, v6, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->c:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/paypal/android/MEP/a/b;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v0, v1

    :goto_0
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/paypal/android/MEP/a/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/paypal/android/MEP/a/b;->d:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/paypal/android/MEP/a/b;->d:Landroid/widget/LinearLayout;

    const/16 v4, 0x138a

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v3, p0, Lcom/paypal/android/MEP/a/b;->l:Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/paypal/android/MEP/a/b;->l:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/b;->l:Landroid/graphics/drawable/GradientDrawable;

    const v4, -0x4f4f50

    invoke-virtual {v3, v7, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/b;->d:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/paypal/android/MEP/a/b;->l:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/b;->d:Landroid/widget/LinearLayout;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/b;->d:Landroid/widget/LinearLayout;

    const/16 v4, 0xa

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/paypal/android/MEP/a/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/paypal/android/MEP/a/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v2, v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/a/b;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->i:Landroid/widget/TextView;

    const/16 v3, 0x138b

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->i:Landroid/widget/TextView;

    const-string v3, "Helvetica"

    invoke-static {v3, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->i:Landroid/widget/TextView;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->i:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/b;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/b;->d:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/paypal/android/MEP/a/b;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/MEP/a/b;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/paypal/android/MEP/a/b;->j:Landroid/widget/EditText;

    const/16 v3, 0x138c

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setId(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/b;->j:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/b;->j:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/b;->d:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/paypal/android/MEP/a/b;->j:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/MEP/a/b;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/paypal/android/MEP/a/b;->k:Landroid/widget/EditText;

    const/16 v3, 0x138d

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setId(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/b;->k:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/MEP/a/b;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/b;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/b;->addView(Landroid/view/View;)V

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/b;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getLoginType()I

    move-result v0

    if-ne v0, v7, :cond_1

    iput-boolean v2, p0, Lcom/paypal/android/MEP/a/b;->a:Z

    invoke-direct {p0}, Lcom/paypal/android/MEP/a/b;->g()V

    :goto_1
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/paypal/android/MEP/a/b;->f()V

    goto :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        -0xc0c0d
        -0x333334
    .end array-data
.end method

.method private f()V
    .locals 4

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->isLightCountry()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/paypal/android/MEP/a/b;->a:Z

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANDROID_login_with_email_and_password"

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->j:Landroid/widget/EditText;

    const-string v1, "ANDROID_email_field"

    invoke-static {v1}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->j:Landroid/widget/EditText;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getAccountEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->j:Landroid/widget/EditText;

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getAccountEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->k:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->k:Landroid/widget/EditText;

    const-string v1, "ANDROID_password_field"

    invoke-static {v1}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->k:Landroid/widget/EditText;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->k:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iput v3, p0, Lcom/paypal/android/MEP/a/b;->b:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->j:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private g()V
    .locals 6

    const/4 v5, 0x3

    const/16 v1, 0x8

    const/4 v0, 0x0

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->isLightCountry()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/paypal/android/MEP/a/b;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/b;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/b;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/b;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-boolean v2, p0, Lcom/paypal/android/MEP/a/b;->a:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/paypal/android/MEP/a/b;->i:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANDROID_login_with_phone_and_pin"

    invoke-static {v4}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v2, p0, Lcom/paypal/android/MEP/a/b;->j:Landroid/widget/EditText;

    iget-boolean v3, p0, Lcom/paypal/android/MEP/a/b;->a:Z

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->j:Landroid/widget/EditText;

    const-string v1, "ANDROID_phone_field"

    invoke-static {v1}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getAccountPhone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->j:Landroid/widget/EditText;

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getAccountPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->k:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->k:Landroid/widget/EditText;

    const-string v1, "ANDROID_pin_field"

    invoke-static {v1}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->k:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/paypal/android/MEP/a/b;->b:I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/paypal/android/MEP/a/b;->i:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANDROID_login_with_pin"

    invoke-static {v4}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->j:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method public final d()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method public final e()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/paypal/android/MEP/a/b;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/paypal/android/MEP/a/b;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->f:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/paypal/android/MEP/a/b;->b:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/paypal/android/MEP/a/b;->f()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/MEP/a/b;->h:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/paypal/android/MEP/a/b;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/paypal/android/MEP/a/b;->g()V

    goto :goto_0
.end method
