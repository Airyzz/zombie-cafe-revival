.class public Lorg/acra/CrashReportDialog;
.super Landroid/app/Activity;


# instance fields
.field a:Ljava/lang/String;

.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lorg/acra/CrashReportDialog;->b:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lorg/acra/CrashReportDialog;->c:Landroid/widget/EditText;

    iput-object v0, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    iput-object v0, p0, Lorg/acra/CrashReportDialog;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lorg/acra/CrashReportDialog;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lorg/acra/CrashReportDialog;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lorg/acra/CrashReportDialog;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic c(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x3

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v7, 0xa

    const/4 v6, -0x2

    const/4 v5, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "REPORT_FILE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/CrashReportDialog;->a:Ljava/lang/String;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opening CrashReportDialog for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/acra/CrashReportDialog;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/acra/CrashReportDialog;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->finish()V

    :cond_0
    invoke-virtual {p0, v9}, Lorg/acra/CrashReportDialog;->requestWindowFeature(I)Z

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v3

    invoke-interface {v3}, Lorg/acra/a/a;->h()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2, v5, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v1

    invoke-interface {v1}, Lorg/acra/a/a;->d()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v1, v7, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/acra/CrashReportDialog;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/acra/CrashReportDialog;->c:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLines(I)V

    iget-object v1, p0, Lorg/acra/CrashReportDialog;->c:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v1

    invoke-interface {v1}, Lorg/acra/a/a;->e()I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v1, v7, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v1, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v1

    invoke-interface {v1}, Lorg/acra/a/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v2

    invoke-interface {v2}, Lorg/acra/a/a;->p()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/acra/CrashReportDialog;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/CrashReportDialog;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/acra/CrashReportDialog;->b:Landroid/content/SharedPreferences;

    const-string v3, "acra.user.email"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v3, 0x1040013

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    new-instance v3, Lorg/acra/f;

    invoke-direct {v3, p0}, Lorg/acra/f;-><init>(Lorg/acra/CrashReportDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v3, 0x1040009

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    new-instance v3, Lorg/acra/g;

    invoke-direct {v3, p0}, Lorg/acra/g;-><init>(Lorg/acra/CrashReportDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lorg/acra/CrashReportDialog;->setContentView(Landroid/view/View;)V

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v0

    invoke-interface {v0}, Lorg/acra/a/a;->i()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lorg/acra/CrashReportDialog;->setTitle(I)V

    :cond_3
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v1

    invoke-interface {v1}, Lorg/acra/a/a;->f()I

    move-result v1

    invoke-virtual {v0, v9, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lorg/acra/CrashReportDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x29a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method
