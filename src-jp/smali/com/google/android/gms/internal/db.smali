.class public Lcom/google/android/gms/internal/db;
.super Lcom/google/android/gms/internal/dq;


# static fields
.field private static final a:I


# instance fields
.field private final b:Landroid/app/Activity;

.field private c:Lcom/google/android/gms/internal/ch;

.field private d:Lcom/google/android/gms/internal/di;

.field private e:Lcom/google/android/gms/internal/ii;

.field private f:Lcom/google/android/gms/internal/df;

.field private g:Lcom/google/android/gms/internal/dl;

.field private h:Z

.field private i:Landroid/widget/FrameLayout;

.field private j:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/db;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dq;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/db;->k:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/db;->l:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/db;->m:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ch;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.ads.AdActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    iget-object v2, p1, Lcom/google/android/gms/internal/ch;->n:Lcom/google/android/gms/internal/ev;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ev;->e:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ch;->a(Landroid/content/Intent;Lcom/google/android/gms/internal/ch;)V

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static c(IIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method private c(Z)V
    .locals 13

    const/16 v3, 0x400

    const/4 v12, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/db;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/db;->m:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v1, v1, Lcom/google/android/gms/internal/ch;->q:Lcom/google/android/gms/internal/v;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/v;->c:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget v1, v1, Lcom/google/android/gms/internal/ch;->k:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/db;->a(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_3

    const-string v1, "Enabling hardware acceleration on the AdActivity window."

    invoke-static {v1}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ia;->a(Landroid/view/Window;)V

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/de;

    iget-object v1, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v3, v3, Lcom/google/android/gms/internal/ch;->p:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/de;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/db;->n:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/db;->m:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->n:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/db;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/db;->j()V

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->e:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->f()Lcom/google/android/gms/internal/ik;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ik;->a()Z

    move-result v3

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v1, v1, Lcom/google/android/gms/internal/ch;->e:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ii;->e()Lcom/google/android/gms/internal/al;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v5, v5, Lcom/google/android/gms/internal/ch;->n:Lcom/google/android/gms/internal/ev;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ii;->a(Landroid/content/Context;Lcom/google/android/gms/internal/al;ZZLcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/ev;)Lcom/google/android/gms/internal/ii;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->f()Lcom/google/android/gms/internal/ik;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v8, v0, Lcom/google/android/gms/internal/ch;->f:Lcom/google/android/gms/internal/aq;

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v9, v0, Lcom/google/android/gms/internal/ch;->j:Lcom/google/android/gms/internal/dm;

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v11, v0, Lcom/google/android/gms/internal/ch;->o:Lcom/google/android/gms/internal/bc;

    move-object v6, v4

    move-object v7, v4

    move v10, v2

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/oy;Lcom/google/android/gms/internal/dh;Lcom/google/android/gms/internal/aq;Lcom/google/android/gms/internal/dm;ZLcom/google/android/gms/internal/bc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->f()Lcom/google/android/gms/internal/ik;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/dc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/dc;-><init>(Lcom/google/android/gms/internal/db;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/im;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->m:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    iget-object v1, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v1, v1, Lcom/google/android/gms/internal/ch;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ii;->loadUrl(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ii;->a(Lcom/google/android/gms/internal/db;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/db;->m:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    sget v1, Lcom/google/android/gms/internal/db;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ii;->setBackgroundColor(I)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/db;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0, v1, v12, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->c()V

    :cond_6
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/db;->a(Z)V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/db;->n:Landroid/widget/RelativeLayout;

    sget v1, Lcom/google/android/gms/internal/db;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->i:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v5, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v6, v0, Lcom/google/android/gms/internal/ch;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v7, v0, Lcom/google/android/gms/internal/ch;->i:Ljava/lang/String;

    const-string v8, "text/html"

    const-string v9, "UTF-8"

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/ii;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/dd;

    const-string v1, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dd;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->e:Lcom/google/android/gms/internal/ii;

    iput-object v0, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    iget-object v1, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ii;->setContext(Landroid/content/Context;)V

    goto :goto_1
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/db;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/db;->l:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->f:Lcom/google/android/gms/internal/df;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ii;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->f:Lcom/google/android/gms/internal/df;

    iget-object v0, v0, Lcom/google/android/gms/internal/df;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    iget-object v2, p0, Lcom/google/android/gms/internal/db;->f:Lcom/google/android/gms/internal/df;

    iget v2, v2, Lcom/google/android/gms/internal/df;->a:I

    iget-object v3, p0, Lcom/google/android/gms/internal/db;->f:Lcom/google/android/gms/internal/df;

    iget-object v3, v3, Lcom/google/android/gms/internal/df;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->d:Lcom/google/android/gms/internal/dh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->d:Lcom/google/android/gms/internal/dh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dh;->o()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public a(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->d:Lcom/google/android/gms/internal/di;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->d:Lcom/google/android/gms/internal/di;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/db;->c(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/db;->k:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ch;->a(Landroid/content/Intent;)Lcom/google/android/gms/internal/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/dd;

    const-string v1, "Could not get info for ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dd;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/dd; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dd;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->q:Lcom/google/android/gms/internal/v;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->q:Lcom/google/android/gms/internal/v;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/v;->b:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/db;->m:Z

    :goto_1
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->d:Lcom/google/android/gms/internal/dh;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->d:Lcom/google/android/gms/internal/dh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dh;->p()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget v0, v0, Lcom/google/android/gms/internal/ch;->l:I

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->c:Lcom/google/android/gms/internal/oy;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v0, v0, Lcom/google/android/gms/internal/ch;->c:Lcom/google/android/gms/internal/oy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/oy;->r()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget v0, v0, Lcom/google/android/gms/internal/ch;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/internal/dd;

    const-string v1, "Could not determine ad overlay type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dd;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/db;->m:Z

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/db;->c(Z)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/df;

    iget-object v1, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v1, v1, Lcom/google/android/gms/internal/ch;->e:Lcom/google/android/gms/internal/ii;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/df;-><init>(Lcom/google/android/gms/internal/ii;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/db;->f:Lcom/google/android/gms/internal/df;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/db;->c(Z)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/db;->c(Z)V

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/db;->k:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v1, v1, Lcom/google/android/gms/internal/ch;->b:Lcom/google/android/gms/internal/ce;

    iget-object v2, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-object v2, v2, Lcom/google/android/gms/internal/ch;->j:Lcom/google/android/gms/internal/dm;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/cz;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ce;Lcom/google/android/gms/internal/dm;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Lcom/google/android/gms/internal/dd; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/db;->i:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->i:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/db;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/db;->j()V

    iput-object p2, p0, Lcom/google/android/gms/internal/db;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method public a(Z)V
    .locals 4

    const/4 v3, -0x2

    if-eqz p1, :cond_0

    const/16 v0, 0x32

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/dl;

    iget-object v2, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/dl;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/db;->g:Lcom/google/android/gms/internal/dl;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_1

    const/16 v0, 0xb

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->g:Lcom/google/android/gms/internal/dl;

    iget-object v2, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ch;->h:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/dl;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->n:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/db;->g:Lcom/google/android/gms/internal/dl;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    goto :goto_1
.end method

.method public b()Lcom/google/android/gms/internal/di;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->d:Lcom/google/android/gms/internal/di;

    return-object v0
.end method

.method public b(IIII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->d:Lcom/google/android/gms/internal/di;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/di;

    iget-object v1, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/di;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ii;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/db;->d:Lcom/google/android/gms/internal/di;

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/db;->d:Lcom/google/android/gms/internal/di;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/db;->c(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->f()Lcom/google/android/gms/internal/ik;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ik;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/db;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->g:Lcom/google/android/gms/internal/dl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->g:Lcom/google/android/gms/internal/dl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dl;->a(Z)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget v0, v0, Lcom/google/android/gms/internal/ch;->k:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/db;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/db;->i:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/db;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/db;->j()V

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/google/android/gms/internal/db;->i:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/db;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v2, p0, Lcom/google/android/gms/internal/db;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/ch;

    iget v0, v0, Lcom/google/android/gms/internal/ch;->l:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/db;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    invoke-static {v0}, Lcom/google/android/gms/internal/hq;->b(Landroid/webkit/WebView;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/db;->k:Z

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->d:Lcom/google/android/gms/internal/di;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->d:Lcom/google/android/gms/internal/di;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/di;->c()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/db;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->f:Lcom/google/android/gms/internal/df;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    invoke-static {v0}, Lcom/google/android/gms/internal/hq;->a(Landroid/webkit/WebView;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/db;->l()V

    return-void
.end method

.method public h()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/db;->l()V

    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->d:Lcom/google/android/gms/internal/di;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->d:Lcom/google/android/gms/internal/di;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/di;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/db;->l()V

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/db;->h:Z

    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/db;->g:Lcom/google/android/gms/internal/dl;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/db;->a(Z)V

    return-void
.end method
