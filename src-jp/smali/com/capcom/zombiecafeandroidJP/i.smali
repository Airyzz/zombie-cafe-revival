.class public Lcom/capcom/zombiecafeandroidJP/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/capcom/a/d;


# instance fields
.field final synthetic a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;


# direct methods
.method public constructor <init>(Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/i;->a:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/capcom/a/i;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "GeneralInfo"

    const-string v1, "FacebookError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->am:Z

    return-void
.end method

.method public a(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "GeneralInfo"

    const-string v1, "FileNotFound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->am:Z

    return-void
.end method

.method public a(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "GeneralInfo"

    const-string v1, "IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->am:Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "LogoutRequestListener"

    const-string v1, "logout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->am:Z

    return-void
.end method

.method public a(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "GeneralInfo"

    const-string v1, "Malformed URL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->am:Z

    return-void
.end method
