.class final Lcom/capcom/zombiecafeandroid/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/capcom/facebook/c;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "UploadImage Listener ERROR"

    const-string v1, "IoException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UploadImage Listener-OnComplete"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final b()V
    .locals 2

    const-string v0, "UploadImage Listener ERROR"

    const-string v1, "FileNotFound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final c()V
    .locals 2

    const-string v0, "UploadImage Listener ERROR"

    const-string v1, "Malformedurl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
