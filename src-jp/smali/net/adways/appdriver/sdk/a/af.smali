.class public final Lnet/adways/appdriver/sdk/a/af;
.super Ljava/lang/Object;


# static fields
.field private static a:Lnet/adways/appdriver/sdk/a/af;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/lang/Boolean;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnet/adways/appdriver/sdk/a/af;->a:Lnet/adways/appdriver/sdk/a/af;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lnet/adways/appdriver/sdk/a/af;->c:I

    iput-object v1, p0, Lnet/adways/appdriver/sdk/a/af;->d:Ljava/lang/String;

    iput-object v1, p0, Lnet/adways/appdriver/sdk/a/af;->e:Ljava/lang/String;

    iput v2, p0, Lnet/adways/appdriver/sdk/a/af;->f:I

    iput-object v1, p0, Lnet/adways/appdriver/sdk/a/af;->g:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lnet/adways/appdriver/sdk/a/af;->h:I

    iput-object v1, p0, Lnet/adways/appdriver/sdk/a/af;->i:Ljava/lang/String;

    iput v2, p0, Lnet/adways/appdriver/sdk/a/af;->j:I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->k:Ljava/lang/Boolean;

    iput-object v1, p0, Lnet/adways/appdriver/sdk/a/af;->l:Ljava/lang/String;

    iput-object v1, p0, Lnet/adways/appdriver/sdk/a/af;->m:Ljava/lang/String;

    iput-object v1, p0, Lnet/adways/appdriver/sdk/a/af;->n:Ljava/lang/String;

    iput-object v1, p0, Lnet/adways/appdriver/sdk/a/af;->o:Ljava/lang/String;

    iput-object v1, p0, Lnet/adways/appdriver/sdk/a/af;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lnet/adways/appdriver/sdk/a/af;
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Lnet/adways/appdriver/sdk/a/af;->a:Lnet/adways/appdriver/sdk/a/af;

    if-nez v0, :cond_0

    new-instance v0, Lnet/adways/appdriver/sdk/a/ae;

    invoke-direct {v0, p0}, Lnet/adways/appdriver/sdk/a/ae;-><init>(Landroid/content/Context;)V

    const-string v1, "SITE_ID"

    invoke-virtual {v0, v1, v5}, Lnet/adways/appdriver/sdk/a/ae;->b(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "SITE_KEY"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lnet/adways/appdriver/sdk/a/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MODE"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Lnet/adways/appdriver/sdk/a/ae;->b(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "ENV"

    invoke-virtual {v0, v4, v5}, Lnet/adways/appdriver/sdk/a/ae;->b(Ljava/lang/String;I)I

    move-result v0

    :try_start_0
    invoke-static {p0, v1, v2, v3, v0}, Lnet/adways/appdriver/sdk/a/af;->b(Landroid/content/Context;ILjava/lang/String;II)V
    :try_end_0
    .catch Lnet/adways/appdriver/sdk/a/an; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v0, Lnet/adways/appdriver/sdk/a/af;->a:Lnet/adways/appdriver/sdk/a/af;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "appdriver-log"

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/an;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lnet/adways/appdriver/sdk/a/an;

    const-string v1, "system setting have not been initialized, must be setup first."

    invoke-direct {v0, v1}, Lnet/adways/appdriver/sdk/a/an;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;II)V
    .locals 1

    sget-object v0, Lnet/adways/appdriver/sdk/a/af;->a:Lnet/adways/appdriver/sdk/a/af;

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lnet/adways/appdriver/sdk/a/af;->b(Landroid/content/Context;ILjava/lang/String;II)V

    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;ILjava/lang/String;II)V
    .locals 3

    const-string v0, "new system setting initial"

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/v;->a(Ljava/lang/String;)V

    new-instance v0, Lnet/adways/appdriver/sdk/a/af;

    invoke-direct {v0, p0}, Lnet/adways/appdriver/sdk/a/af;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/adways/appdriver/sdk/a/af;->a:Lnet/adways/appdriver/sdk/a/af;

    new-instance v0, Lnet/adways/appdriver/sdk/a/ae;

    invoke-direct {v0, p0}, Lnet/adways/appdriver/sdk/a/ae;-><init>(Landroid/content/Context;)V

    if-gtz p1, :cond_0

    new-instance v0, Lnet/adways/appdriver/sdk/a/an;

    const-string v1, "siteId must be an int value larger than 0 "

    invoke-direct {v0, v1}, Lnet/adways/appdriver/sdk/a/an;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v1, Lnet/adways/appdriver/sdk/a/af;->a:Lnet/adways/appdriver/sdk/a/af;

    iput p1, v1, Lnet/adways/appdriver/sdk/a/af;->c:I

    const-string v1, "SITE_ID"

    invoke-virtual {v0, v1, p1}, Lnet/adways/appdriver/sdk/a/ae;->a(Ljava/lang/String;I)V

    if-eqz p2, :cond_1

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v0, Lnet/adways/appdriver/sdk/a/an;

    const-string v1, "siteKey can not be set to null"

    invoke-direct {v0, v1}, Lnet/adways/appdriver/sdk/a/an;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v1, Lnet/adways/appdriver/sdk/a/af;->a:Lnet/adways/appdriver/sdk/a/af;

    iput-object p2, v1, Lnet/adways/appdriver/sdk/a/af;->d:Ljava/lang/String;

    const-string v1, "SITE_KEY"

    invoke-virtual {v0, v1, p2}, Lnet/adways/appdriver/sdk/a/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lnet/adways/appdriver/sdk/a/af;->a:Lnet/adways/appdriver/sdk/a/af;

    iput p3, v1, Lnet/adways/appdriver/sdk/a/af;->h:I

    const/4 v1, 0x3

    if-gt p3, v1, :cond_3

    if-gez p3, :cond_4

    :cond_3
    new-instance v0, Lnet/adways/appdriver/sdk/a/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupport mode"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/adways/appdriver/sdk/a/an;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v1, "MODE"

    invoke-virtual {v0, v1, p3}, Lnet/adways/appdriver/sdk/a/ae;->a(Ljava/lang/String;I)V

    sget-object v1, Lnet/adways/appdriver/sdk/a/af;->a:Lnet/adways/appdriver/sdk/a/af;

    iput p4, v1, Lnet/adways/appdriver/sdk/a/af;->j:I

    const-string v1, "ENV"

    invoke-virtual {v0, v1, p4}, Lnet/adways/appdriver/sdk/a/ae;->a(Ljava/lang/String;I)V

    sget-object v0, Lnet/adways/appdriver/sdk/a/af;->a:Lnet/adways/appdriver/sdk/a/af;

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/af;->e()Ljava/lang/String;

    sget-object v0, Lnet/adways/appdriver/sdk/a/af;->a:Lnet/adways/appdriver/sdk/a/af;

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/af;->d()Ljava/lang/String;

    sget-object v0, Lnet/adways/appdriver/sdk/a/af;->a:Lnet/adways/appdriver/sdk/a/af;

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/af;->i()Ljava/lang/String;

    sget-object v0, Lnet/adways/appdriver/sdk/a/af;->a:Lnet/adways/appdriver/sdk/a/af;

    invoke-virtual {v0}, Lnet/adways/appdriver/sdk/a/af;->l()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lnet/adways/appdriver/sdk/a/af;->c:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lnet/adways/appdriver/sdk/a/af;->f:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/adways/appdriver/sdk/a/af;->g:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "1"

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->i:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lnet/adways/appdriver/sdk/a/af;->h:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->l:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "not defined"

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->m:Ljava/lang/String;

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->m:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const-string v0, "not defined"

    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/af;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "appdriver-log"

    const-string v1, "failed to get the application version in AndroidManifest.xml"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->m:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "appdriver-log"

    const-string v2, "failed to get the application version in AndroidManifest.xml"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "not defined"

    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/af;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "appdriver-log"

    const-string v1, "failed to get the application version in AndroidManifest.xml"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "not defined"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/af;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "appdriver-log"

    const-string v2, "failed to get the application version in AndroidManifest.xml"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    throw v0
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->g:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v1, Lnet/adways/appdriver/sdk/a/ae;

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lnet/adways/appdriver/sdk/a/ae;-><init>(Landroid/content/Context;)V

    const-string v0, "UUID"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lnet/adways/appdriver/sdk/a/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->g:Ljava/lang/String;

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->g:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->g:Ljava/lang/String;

    const-string v0, "UUID"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/af;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lnet/adways/appdriver/sdk/a/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    const-string v1, "net.adways.appdriver.scheme"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "net.adways.appdriver.host"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    const-string v0, "undefined"

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "://"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->e:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->e:Ljava/lang/String;

    return-object v0

    :cond_2
    :try_start_1
    const-string v0, "appdriver-log"

    const-string v1, "meta-data scheme/host is not found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "appdriver-log"

    const-string v2, "get appliation info failed when tring to get meta-data scheme/host."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lnet/adways/appdriver/sdk/a/af;->f:I

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "0"

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->n:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/su"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->n:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final j()V
    .locals 3

    invoke-virtual {p0}, Lnet/adways/appdriver/sdk/a/af;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "get super-switch status"

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/v;->a(Ljava/lang/String;)V

    new-instance v1, Lnet/adways/appdriver/sdk/a/u;

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v2, Lnet/adways/appdriver/sdk/a/am;

    invoke-direct {v2}, Lnet/adways/appdriver/sdk/a/am;-><init>()V

    invoke-direct {v1, v0, v2}, Lnet/adways/appdriver/sdk/a/u;-><init>(Landroid/content/Context;Lnet/adways/appdriver/sdk/a/t;)V

    invoke-virtual {v1}, Lnet/adways/appdriver/sdk/a/u;->a()Lnet/adways/appdriver/sdk/a/ai;

    :cond_0
    return-void
.end method

.method public final k()Z
    .locals 4

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lnet/adways/appdriver/sdk/a/ae;

    invoke-direct {v1, v0}, Lnet/adways/appdriver/sdk/a/ae;-><init>(Landroid/content/Context;)V

    const-string v2, "on"

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/am;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "on"

    invoke-virtual {v1, v0, v3}, Lnet/adways/appdriver/sdk/a/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->k:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "appdriver-log"

    const-string v2, "failed to get Super-Switch"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->o:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lnet/adways/appdriver/sdk/a/af;->j:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()V
    .locals 7

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "try to get advertising id"

    invoke-static {v1}, Lnet/adways/appdriver/sdk/a/v;->a(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getAdvertisingIdInfo"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "return advertising id ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/af;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/v;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "appdriver-log"

    const-string v1, "give up fetching Advertising Id since not found google play services library"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "appdriver-log"

    const-string v2, "get advertising id failed"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "appdriver-log"

    const-string v2, "crashed when getting advertising id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lnet/adways/appdriver/sdk/a/an;

    invoke-direct {v0}, Lnet/adways/appdriver/sdk/a/an;-><init>()V

    throw v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/adways/appdriver/sdk/a/af;->p:Ljava/lang/String;

    return-object v0
.end method
