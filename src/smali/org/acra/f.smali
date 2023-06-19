.class final Lorg/acra/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lorg/acra/CrashReportDialog;


# direct methods
.method constructor <init>(Lorg/acra/CrashReportDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/acra/f;->a:Lorg/acra/CrashReportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v0

    new-instance v1, Lorg/acra/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/acra/k;-><init>(Lorg/acra/ErrorReporter;)V

    invoke-virtual {v1}, Lorg/acra/k;->a()V

    iget-object v0, p0, Lorg/acra/f;->a:Lorg/acra/CrashReportDialog;

    invoke-static {v0}, Lorg/acra/CrashReportDialog;->a(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/acra/f;->a:Lorg/acra/CrashReportDialog;

    iget-object v0, v0, Lorg/acra/CrashReportDialog;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/acra/f;->a:Lorg/acra/CrashReportDialog;

    invoke-static {v2}, Lorg/acra/CrashReportDialog;->a(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/acra/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/acra/f;->a:Lorg/acra/CrashReportDialog;

    invoke-static {v0}, Lorg/acra/CrashReportDialog;->b(Lorg/acra/CrashReportDialog;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/acra/f;->a:Lorg/acra/CrashReportDialog;

    invoke-static {v0}, Lorg/acra/CrashReportDialog;->c(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/acra/f;->a:Lorg/acra/CrashReportDialog;

    invoke-static {v0}, Lorg/acra/CrashReportDialog;->c(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/acra/f;->a:Lorg/acra/CrashReportDialog;

    invoke-static {v2}, Lorg/acra/CrashReportDialog;->b(Lorg/acra/CrashReportDialog;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "acra.user.email"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lorg/acra/f;->a:Lorg/acra/CrashReportDialog;

    iget-object v2, v2, Lorg/acra/CrashReportDialog;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/acra/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "About to start ReportSenderWorker from CrashReportDialog"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lorg/acra/k;->start()V

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v0

    invoke-interface {v0}, Lorg/acra/a/a;->g()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/acra/f;->a:Lorg/acra/CrashReportDialog;

    invoke-virtual {v1}, Lorg/acra/CrashReportDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    iget-object v0, p0, Lorg/acra/f;->a:Lorg/acra/CrashReportDialog;

    invoke-virtual {v0}, Lorg/acra/CrashReportDialog;->finish()V

    return-void
.end method
