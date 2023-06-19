.class Lcom/capcom/zombiecafeandroidJP/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/capcom/a/d;


# instance fields
.field final synthetic a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/j;->a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/capcom/a/i;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "UploadImage Listener ERROR"

    const-string v1, "Facebook"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "UploadImage Listener ERROR"

    const-string v1, "FileNotFound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "UploadImage Listener ERROR"

    const-string v1, "IoException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "UploadImage Listener-OnComplete"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "UploadImage Listener ERROR"

    const-string v1, "Malformedurl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
