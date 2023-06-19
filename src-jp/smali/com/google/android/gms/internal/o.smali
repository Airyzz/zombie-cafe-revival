.class public final Lcom/google/android/gms/internal/o;
.super Lcom/google/android/gms/a/e;


# static fields
.field private static final a:Lcom/google/android/gms/internal/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/o;

    invoke-direct {v0}, Lcom/google/android/gms/internal/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/o;->a:Lcom/google/android/gms/internal/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.AdManagerCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/a/e;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/al;Ljava/lang/String;Lcom/google/android/gms/internal/bu;)Lcom/google/android/gms/internal/y;
    .locals 6

    const v1, 0x4da6e8

    invoke-static {p0}, Lcom/google/android/gms/common/g;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/o;->a:Lcom/google/android/gms/internal/o;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/o;->b(Landroid/content/Context;Lcom/google/android/gms/internal/al;Ljava/lang/String;Lcom/google/android/gms/internal/bu;)Lcom/google/android/gms/internal/y;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Using AdManager from the client jar."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)V

    new-instance v5, Lcom/google/android/gms/internal/ev;

    const/4 v0, 0x1

    invoke-direct {v5, v1, v1, v0}, Lcom/google/android/gms/internal/ev;-><init>(IIZ)V

    new-instance v0, Lcom/google/android/gms/internal/oz;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/oz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/al;Ljava/lang/String;Lcom/google/android/gms/internal/bv;Lcom/google/android/gms/internal/ev;)V

    :cond_1
    return-object v0
.end method

.method private b(Landroid/content/Context;Lcom/google/android/gms/internal/al;Ljava/lang/String;Lcom/google/android/gms/internal/bu;)Lcom/google/android/gms/internal/y;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/a/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/o;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ab;

    const v5, 0x4da6e8

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ab;->a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/al;Ljava/lang/String;Lcom/google/android/gms/internal/bv;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/z;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/y;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/a/f; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Could not create remote AdManager."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Could not create remote AdManager."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    goto :goto_0
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/o;->b(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ab;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ab;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/ac;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ab;

    move-result-object v0

    return-object v0
.end method
