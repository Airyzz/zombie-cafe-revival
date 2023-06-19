.class public final Lcom/google/android/gms/internal/if;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/if;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/if;->a(Landroid/util/DisplayMetrics;I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/util/DisplayMetrics;I)I
    .locals 2

    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-static {v0, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/if;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "emulator"

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/if;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%032X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {v6, v7, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/al;Ljava/lang/String;)V
    .locals 2

    const/high16 v0, -0x1000000

    const/4 v1, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/if;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/al;Ljava/lang/String;II)V

    return-void
.end method

.method private static a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/al;Ljava/lang/String;II)V
    .locals 7

    const/16 v6, 0x11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/if;->a(Landroid/content/Context;I)I

    move-result v0

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p1, Lcom/google/android/gms/internal/al;->g:I

    sub-int/2addr v4, v0

    iget v5, p1, Lcom/google/android/gms/internal/al;->d:I

    sub-int v0, v5, v0

    invoke-direct {v3, v4, v0, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p1, Lcom/google/android/gms/internal/al;->g:I

    iget v1, p1, Lcom/google/android/gms/internal/al;->d:I

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/al;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p3}, Lcom/google/android/gms/internal/ig;->e(Ljava/lang/String;)V

    const/high16 v0, -0x10000

    const/high16 v1, -0x1000000

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/if;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/al;Ljava/lang/String;II)V

    return-void
.end method

.method public static a()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
