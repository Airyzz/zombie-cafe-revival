.class public final Lcom/paypal/android/a/g;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v2, -0x2

    const/16 v1, 0xa

    const/16 v5, 0x32

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/a/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/paypal/android/a/g;->setPadding(IIII)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x34

    const/16 v3, 0x1d

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    const v3, 0x97ce

    const/16 v4, 0x14f2

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v3, 0x29c3c

    const/16 v4, 0x1547

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v3, 0x1a089

    const/16 v4, 0x1546

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v3, 0x1117d

    const/16 v4, 0x1563

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const/16 v3, 0x4e80

    const/16 v4, 0x1518

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v3, 0x247b9

    const/16 v4, 0x1496

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v3, 0x16b3e

    const/16 v4, 0x152f

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v3, 0xd992

    const/16 v4, 0x156d

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const/16 v3, 0x1dc7

    const/16 v4, 0x155e

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v3, 0x1f317

    const/16 v4, 0x1534

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v3, 0x1d287

    const/16 v4, 0x1527

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v3, 0x13bfb

    const/16 v4, 0x14f7

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v3, 0x812e

    const/16 v4, 0x14f2

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v3, 0x27fbe

    const/16 v4, 0x1517

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v3, 0x18995

    const/16 v4, 0x1524

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v3, 0xfa6e

    const/16 v4, 0x155e

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const/16 v3, 0x3959

    const/16 v4, 0x1527

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v3, 0x20b8d

    const/16 v4, 0x14ed

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v3, 0x1533d

    const/16 v4, 0x14b7

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v3, 0xc3fd

    const/16 v4, 0x1595

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v3, 0xacc0

    const/16 v4, 0x1594

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const/16 v3, 0x156f

    invoke-static {v6, v3}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v3, 0x1bd37

    const/16 v4, 0x1550

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v3, 0x126e0

    const/16 v4, 0x151b

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const/16 v3, 0x6caa

    const/16 v4, 0x1484

    invoke-static {v3, v4}, Lcom/capcom/facebook/a;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    iput-object v2, p0, Lcom/paypal/android/a/g;->a:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v2, p0, Lcom/paypal/android/a/g;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/a/g;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/a/g;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/paypal/android/a/g;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/a/g;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    return-void
.end method
