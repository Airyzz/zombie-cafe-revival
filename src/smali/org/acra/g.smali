.class final Lorg/acra/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lorg/acra/CrashReportDialog;


# direct methods
.method constructor <init>(Lorg/acra/CrashReportDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/acra/g;->a:Lorg/acra/CrashReportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ErrorReporter;->deletePendingReports()V

    iget-object v0, p0, Lorg/acra/g;->a:Lorg/acra/CrashReportDialog;

    invoke-virtual {v0}, Lorg/acra/CrashReportDialog;->finish()V

    return-void
.end method
