.class public final Lcom/paypal/android/MEP/CheckoutButton;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TEXT_DONATE:I = 0x1

.field public static final TEXT_PAY:I

.field private static p:Z


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/graphics/drawable/GradientDrawable;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/content/Context;

.field private l:Landroid/graphics/drawable/StateListDrawable;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/paypal/android/MEP/CheckoutButton;->p:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/paypal/android/MEP/CheckoutButton;->k:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final a(II)V
    .locals 13

    iput p1, p0, Lcom/paypal/android/MEP/CheckoutButton;->a:I

    iget v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0xc2

    iput v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->b:I

    const/16 v0, 0x25

    iput v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->c:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->d:I

    const/16 v1, 0x16

    const/high16 v0, 0x40c00000    # 6.0f

    :goto_0
    const-string v2, "Helvetica"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    const/4 v4, 0x3

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x40200000    # 2.5f

    iget v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->a:I

    int-to-float v6, v6

    mul-float/2addr v3, v6

    add-float/2addr v3, v2

    iget v2, p0, Lcom/paypal/android/MEP/CheckoutButton;->d:I

    int-to-float v2, v2

    const/high16 v6, 0x41000000    # 8.0f

    sub-float/2addr v2, v6

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/paypal/android/MEP/PayPal;->getDensity()F

    move-result v6

    iget v7, p0, Lcom/paypal/android/MEP/CheckoutButton;->b:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v7, v7

    iput v7, p0, Lcom/paypal/android/MEP/CheckoutButton;->b:I

    iget v7, p0, Lcom/paypal/android/MEP/CheckoutButton;->c:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v7, v7

    iput v7, p0, Lcom/paypal/android/MEP/CheckoutButton;->c:I

    iget v7, p0, Lcom/paypal/android/MEP/CheckoutButton;->d:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->d:I

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/paypal/android/MEP/CheckoutButton;->setOrientation(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/paypal/android/MEP/CheckoutButton;->setPadding(IIII)V

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    invoke-direct {v6, v7, v8}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->g:Landroid/graphics/drawable/GradientDrawable;

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->g:Landroid/graphics/drawable/GradientDrawable;

    iget v7, p0, Lcom/paypal/android/MEP/CheckoutButton;->b:I

    iget v8, p0, Lcom/paypal/android/MEP/CheckoutButton;->c:I

    iget v9, p0, Lcom/paypal/android/MEP/CheckoutButton;->d:I

    add-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->g:Landroid/graphics/drawable/GradientDrawable;

    const/4 v7, 0x1

    const v8, -0x585859

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/paypal/android/MEP/CheckoutButton;->k:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->f:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->f:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    iget v9, p0, Lcom/paypal/android/MEP/CheckoutButton;->d:I

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->f:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->f:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/paypal/android/MEP/CheckoutButton;->k:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->h:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->h:Landroid/widget/TextView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->h:Landroid/widget/TextView;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->h:Landroid/widget/TextView;

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->h:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->h:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->h:Landroid/widget/TextView;

    const v7, -0xe5e5e6

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->h:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->h:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->h:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/paypal/android/MEP/CheckoutButton;->k:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->i:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->i:Landroid/widget/TextView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->i:Landroid/widget/TextView;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->i:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->i:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->i:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/paypal/android/MEP/CheckoutButton;->i:Landroid/widget/TextView;

    const v6, -0xe4c99c

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/CheckoutButton;->i:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    new-instance v2, Landroid/text/SpannableString;

    const-string v6, "ANDROID_not_you"

    invoke-static {v6}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/UnderlineSpan;

    invoke-direct {v6}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->i:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/CheckoutButton;->i:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/CheckoutButton;->f:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/CheckoutButton;->f:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/CheckoutButton;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/paypal/android/MEP/CheckoutButton;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->k:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/CheckoutButton;->j:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/paypal/android/MEP/CheckoutButton;->j:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/CheckoutButton;->j:Landroid/widget/LinearLayout;

    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/CheckoutButton;->j:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/CheckoutButton;->j:Landroid/widget/LinearLayout;

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x2

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v2, p0, Lcom/paypal/android/MEP/CheckoutButton;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_1

    invoke-direct {v2, v6, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iget v6, p0, Lcom/paypal/android/MEP/CheckoutButton;->b:I

    iget v7, p0, Lcom/paypal/android/MEP/CheckoutButton;->c:I

    invoke-virtual {v2, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v6, 0x1

    const v7, -0x377fc7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_2

    invoke-direct {v6, v7, v8}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iget v7, p0, Lcom/paypal/android/MEP/CheckoutButton;->b:I

    iget v8, p0, Lcom/paypal/android/MEP/CheckoutButton;->c:I

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v0, 0x1

    const v7, -0x377fc7

    invoke-virtual {v6, v0, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->l:Landroid/graphics/drawable/StateListDrawable;

    iget-object v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->l:Landroid/graphics/drawable/StateListDrawable;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const v9, -0x10100a7

    aput v9, v7, v8

    invoke-virtual {v0, v7, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->l:Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v7, 0x0

    const v8, 0x10100a7

    aput v8, v2, v7

    invoke-virtual {v0, v2, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->j:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/paypal/android/MEP/CheckoutButton;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const-string v0, "donate"

    :goto_1
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v7, 0x2

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "ANDROID_"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "_button"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "%PP"

    const/4 v9, -0x1

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    :goto_2
    array-length v9, v8

    if-ge v2, v9, :cond_2

    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string v10, "\\n"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v8, v2

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v8, v2

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {v11, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x98

    iput v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->b:I

    const/16 v0, 0x21

    iput v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->c:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->d:I

    const/16 v1, 0x16

    const/high16 v0, 0x40c00000    # 6.0f

    goto/16 :goto_0

    :pswitch_2
    const/16 v0, 0x116

    iput v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->b:I

    const/16 v0, 0x2b

    iput v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->c:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->d:I

    const/16 v1, 0x1e

    const/high16 v0, 0x41200000    # 10.0f

    goto/16 :goto_0

    :pswitch_3
    const/16 v0, 0x126

    iput v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->b:I

    const/16 v0, 0x2d

    iput v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->c:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->d:I

    const/16 v1, 0x16

    const/high16 v0, 0x41200000    # 10.0f

    goto/16 :goto_0

    :cond_1
    const-string v0, "pay"

    goto/16 :goto_1

    :cond_2
    const-string v2, "pl"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "fr"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "donate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    iget v7, p0, Lcom/paypal/android/MEP/CheckoutButton;->a:I

    int-to-float v7, v7

    mul-float/2addr v2, v7

    add-float/2addr v0, v2

    sub-float v0, v3, v0

    move v2, v4

    :goto_3
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/paypal/android/MEP/CheckoutButton;->k:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/paypal/android/MEP/CheckoutButton;->m:Landroid/widget/TextView;

    const/4 v3, 0x0

    aget-object v3, v8, v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/paypal/android/MEP/CheckoutButton;->m:Landroid/widget/TextView;

    const/4 v4, 0x0

    aget-object v4, v8, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/paypal/android/MEP/CheckoutButton;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v3, p0, Lcom/paypal/android/MEP/CheckoutButton;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/paypal/android/MEP/CheckoutButton;->m:Landroid/widget/TextView;

    const v4, -0xe4c99c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/paypal/android/MEP/CheckoutButton;->m:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lcom/paypal/android/MEP/CheckoutButton;->m:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/paypal/android/MEP/CheckoutButton;->k:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/paypal/android/MEP/CheckoutButton;->n:Landroid/widget/TextView;

    array-length v3, v8

    const/4 v4, 0x1

    if-le v3, v4, :cond_9

    const/4 v3, 0x1

    aget-object v3, v8, v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/paypal/android/MEP/CheckoutButton;->n:Landroid/widget/TextView;

    const/4 v4, 0x1

    aget-object v4, v8, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/paypal/android/MEP/CheckoutButton;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/CheckoutButton;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->n:Landroid/widget/TextView;

    const v2, -0xe4c99c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    aget-object v0, v8, v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->n:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_4
    iget-object v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->n:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    const-string v0, "paypal_"

    const-string v2, "zh_hk"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "cn_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "logo_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/MEP/CheckoutButton;->k:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/capcom/facebook/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->o:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->o:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/MEP/CheckoutButton;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/MEP/CheckoutButton;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/MEP/CheckoutButton;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/CheckoutButton;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/paypal/android/MEP/CheckoutButton;->updateButton()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/CheckoutButton;->setSelected(Z)V

    return-void

    :cond_6
    const-string v0, "zh"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "jp"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    iget v4, p0, Lcom/paypal/android/MEP/CheckoutButton;->a:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    add-float/2addr v0, v3

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_8
    iget-object v3, p0, Lcom/paypal/android/MEP/CheckoutButton;->m:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_9
    iget-object v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->n:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_a
    move v0, v3

    move v2, v4

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x133a
        -0x5600
    .end array-data

    :array_2
    .array-data 4
        -0x3297
        -0x1d8ecd
    .end array-data
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-boolean v0, Lcom/paypal/android/MEP/CheckoutButton;->p:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->h:Landroid/widget/TextView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->i:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    sput-boolean v2, Lcom/paypal/android/MEP/CheckoutButton;->p:Z

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getAuthSettings()I

    move-result v0

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->resetAccount()V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/MEP/PayPal;->setAuthSettings(I)V

    sput-boolean v2, Lcom/paypal/android/MEP/b/e;->a:Z

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/b;->a(I)V

    invoke-virtual {p0}, Lcom/paypal/android/MEP/CheckoutButton;->performClick()Z

    :goto_1
    invoke-virtual {p0, v3}, Lcom/paypal/android/MEP/CheckoutButton;->setActive(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->j:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    sput-boolean v2, Lcom/paypal/android/MEP/CheckoutButton;->p:Z

    sput-boolean v3, Lcom/paypal/android/MEP/b/e;->a:Z

    iget-boolean v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->e:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/paypal/android/MEP/CheckoutButton;->performClick()Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/paypal/android/MEP/CheckoutButton;->performClick()Z

    goto :goto_1
.end method

.method public final setActive(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/paypal/android/MEP/CheckoutButton;->setClickable(Z)V

    invoke-virtual {p0, p1}, Lcom/paypal/android/MEP/CheckoutButton;->setFocusable(Z)V

    return-void
.end method

.method public final updateButton()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/paypal/android/MEP/CheckoutButton;->p:Z

    invoke-virtual {p0}, Lcom/paypal/android/MEP/CheckoutButton;->updateName()V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getLoginType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getAuthSettings()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->e:Z

    iget-boolean v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->b:I

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/CheckoutButton;->setMinimumWidth(I)V

    iget v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->c:I

    iget v1, p0, Lcom/paypal/android/MEP/CheckoutButton;->d:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/CheckoutButton;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/CheckoutButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p0}, Lcom/paypal/android/MEP/CheckoutButton;->invalidate()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->f:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->b:I

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/CheckoutButton;->setMinimumWidth(I)V

    iget v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->c:I

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/CheckoutButton;->setMinimumHeight(I)V

    invoke-virtual {p0, v1}, Lcom/paypal/android/MEP/CheckoutButton;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public final updateName()V
    .locals 4

    const/16 v3, 0x15

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getAccountName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/CheckoutButton;->h:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/paypal/android/MEP/CheckoutButton;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
