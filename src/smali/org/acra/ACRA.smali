.class public Lorg/acra/ACRA;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_MAIL_REPORT_FIELDS:[Lorg/acra/ReportField;

.field public static final DEFAULT_REPORT_FIELDS:[Lorg/acra/ReportField;

.field public static final DEV_LOGGING:Z = false

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final NULL_VALUE:Ljava/lang/String; = "ACRA-NULL-STRING"

.field public static final PREF_ALWAYS_ACCEPT:Ljava/lang/String; = "acra.alwaysaccept"

.field public static final PREF_DISABLE_ACRA:Ljava/lang/String; = "acra.disable"

.field public static final PREF_ENABLE_ACRA:Ljava/lang/String; = "acra.enable"

.field public static final PREF_ENABLE_DEVICE_ID:Ljava/lang/String; = "acra.deviceid.enable"

.field public static final PREF_ENABLE_SYSTEM_LOGS:Ljava/lang/String; = "acra.syslog.enable"

.field public static final PREF_USER_EMAIL_ADDRESS:Ljava/lang/String; = "acra.user.email"

.field private static a:Landroid/app/Application;

.field private static b:Lorg/acra/a/a;

.field private static c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private static d:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v0, Lorg/acra/ACRA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/acra/ReportField;

    sget-object v1, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    aput-object v1, v0, v3

    sget-object v1, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    aput-object v1, v0, v4

    sget-object v1, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    aput-object v1, v0, v5

    sget-object v1, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    aput-object v1, v0, v6

    sget-object v1, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    sput-object v0, Lorg/acra/ACRA;->DEFAULT_MAIL_REPORT_FIELDS:[Lorg/acra/ReportField;

    const/16 v0, 0x22

    new-array v0, v0, [Lorg/acra/ReportField;

    sget-object v1, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    aput-object v1, v0, v3

    sget-object v1, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    aput-object v1, v0, v4

    sget-object v1, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    aput-object v1, v0, v5

    sget-object v1, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    aput-object v1, v0, v6

    sget-object v1, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/acra/ReportField;->USER_APP_START_DATE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/acra/ReportField;->DROPBOX:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lorg/acra/ReportField;->EVENTSLOG:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lorg/acra/ReportField;->RADIOLOG:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lorg/acra/ReportField;->DEVICE_ID:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lorg/acra/ReportField;->ENVIRONMENT:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lorg/acra/ReportField;->SHARED_PREFERENCES:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lorg/acra/ReportField;->SETTINGS_SYSTEM:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lorg/acra/ReportField;->SETTINGS_SECURE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    sput-object v0, Lorg/acra/ACRA;->DEFAULT_REPORT_FIELDS:[Lorg/acra/ReportField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .locals 0

    invoke-static {}, Lorg/acra/ACRA;->b()V

    return-void
.end method

.method private static b()V
    .locals 4

    sget-object v0, Lorg/acra/b;->a:[I

    sget-object v1, Lorg/acra/ACRA;->b:Lorg/acra/a/a;

    invoke-interface {v1}, Lorg/acra/a/a;->c()Lorg/acra/ReportingInteractionMode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ReportingInteractionMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACRA is enabled for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/acra/ACRA;->a:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intializing..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v0

    sget-object v1, Lorg/acra/ACRA;->b:Lorg/acra/a/a;

    invoke-interface {v1}, Lorg/acra/a/a;->c()Lorg/acra/ReportingInteractionMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/acra/ErrorReporter;->a(Lorg/acra/ReportingInteractionMode;)V

    sget-object v1, Lorg/acra/ACRA;->d:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lorg/acra/ErrorReporter;->setAppStartDate(Landroid/text/format/Time;)V

    const-string v1, ""

    sget-object v2, Lorg/acra/ACRA;->b:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/acra/ACRA;->a:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reports will be sent by email (if accepted by user)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/acra/b/a;

    sget-object v2, Lorg/acra/ACRA;->a:Landroid/app/Application;

    invoke-direct {v1, v2}, Lorg/acra/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/acra/ErrorReporter;->addReportSender(Lorg/acra/b/e;)V

    :cond_1
    :goto_0
    sget-object v1, Lorg/acra/ACRA;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/acra/ErrorReporter;->init(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/acra/ErrorReporter;->checkReportsOnApplicationStart()V

    return-void

    :pswitch_0
    sget-object v0, Lorg/acra/ACRA;->b:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->n()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/acra/c;

    const-string v1, "TOAST mode: you have to define the resToastText parameter in your application @ReportsCrashes() annotation."

    invoke-direct {v0, v1}, Lorg/acra/c;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, Lorg/acra/ACRA;->b:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->l()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/acra/ACRA;->b:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->m()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/acra/ACRA;->b:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->k()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/acra/ACRA;->b:Lorg/acra/a/a;

    invoke-interface {v0}, Lorg/acra/a/a;->h()I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    new-instance v0, Lorg/acra/c;

    const-string v1, "NOTIFICATION mode: you have to define at least the resNotifTickerText, resNotifTitle, resNotifText, resDialogText parameters in your application @ReportsCrashes() annotation."

    invoke-direct {v0, v1}, Lorg/acra/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v1, Lorg/acra/ACRA;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "android.permission.INTERNET"

    sget-object v3, Lorg/acra/ACRA;->a:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lorg/acra/ACRA;->b:Lorg/acra/a/a;

    invoke-interface {v1}, Lorg/acra/a/a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, ""

    sget-object v2, Lorg/acra/ACRA;->b:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lorg/acra/b/d;

    sget-object v2, Lorg/acra/ACRA;->b:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/acra/b/d;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/acra/ErrorReporter;->addReportSender(Lorg/acra/b/e;)V

    goto :goto_0

    :cond_4
    sget-object v1, Lorg/acra/ACRA;->b:Lorg/acra/a/a;

    invoke-interface {v1}, Lorg/acra/a/a;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    sget-object v2, Lorg/acra/ACRA;->b:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/acra/b/b;

    sget-object v2, Lorg/acra/ACRA;->b:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/acra/b/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/acra/ErrorReporter;->addReportSender(Lorg/acra/b/e;)V

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/acra/ACRA;->a:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be granted permission android.permission.INTERNET"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " if you want your crash reports to be sent. If you don\'t want to add this permission to your application you can also enable sending reports by email. If this is your will then provide your email address in @ReportsCrashes(mailTo=\"your.account@domain.com\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getACRASharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    const-string v0, ""

    sget-object v1, Lorg/acra/ACRA;->b:Lorg/acra/a/a;

    invoke-interface {v1}, Lorg/acra/a/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retrieve SharedPreferences "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/acra/ACRA;->b:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lorg/acra/ACRA;->a:Landroid/app/Application;

    sget-object v1, Lorg/acra/ACRA;->b:Lorg/acra/a/a;

    invoke-interface {v1}, Lorg/acra/a/a;->o()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/acra/ACRA;->b:Lorg/acra/a/a;

    invoke-interface {v2}, Lorg/acra/a/a;->p()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Retrieve application default SharedPreferences."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lorg/acra/ACRA;->a:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public static getConfig()Lorg/acra/a/a;
    .locals 1

    sget-object v0, Lorg/acra/ACRA;->b:Lorg/acra/a/a;

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lorg/acra/ACRA;->d:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    sput-object p0, Lorg/acra/ACRA;->a:Landroid/app/Application;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lorg/acra/a/a;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/acra/a/a;

    sput-object v0, Lorg/acra/ACRA;->b:Lorg/acra/a/a;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/acra/ACRA;->getACRASharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Set OnSharedPreferenceChangeListener."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/acra/a;

    invoke-direct {v0}, Lorg/acra/a;-><init>()V

    sput-object v0, Lorg/acra/ACRA;->c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    :try_start_0
    const-string v4, "acra.disable"

    const-string v0, "acra.enable"

    const/4 v5, 0x1

    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-eqz v0, :cond_2

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACRA is disabled for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/acra/ACRA;->a:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-object v0, Lorg/acra/ACRA;->c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-static {}, Lorg/acra/ACRA;->b()V
    :try_end_1
    .catch Lorg/acra/c; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
