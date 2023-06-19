.class public final Lorg/acra/util/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;
.implements Lorg/apache/http/conn/scheme/SocketFactory;


# instance fields
.field private a:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/acra/util/c;->a:Ljavax/net/ssl/SSLContext;

    return-void
.end method

.method private static a()Ljavax/net/ssl/SSLContext;
    .locals 5

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lorg/acra/util/f;

    invoke-direct {v4}, Lorg/acra/util/f;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private b()Ljavax/net/ssl/SSLContext;
    .locals 1

    iget-object v0, p0, Lorg/acra/util/c;->a:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/acra/util/c;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/util/c;->a:Ljavax/net/ssl/SSLContext;

    :cond_0
    iget-object v0, p0, Lorg/acra/util/c;->a:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method


# virtual methods
.method public final connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 5

    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v1

    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v2

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    if-eqz p1, :cond_3

    move-object v0, p1

    :goto_0
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    if-nez p4, :cond_0

    if-lez p5, :cond_2

    :cond_0
    if-gez p5, :cond_1

    const/4 p5, 0x0

    :cond_1
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v4}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    :cond_2
    invoke-virtual {v0, v3, v1}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lorg/acra/util/c;->createSocket()Ljava/net/Socket;

    move-result-object v0

    goto :goto_0
.end method

.method public final createSocket()Ljava/net/Socket;
    .locals 1

    invoke-direct {p0}, Lorg/acra/util/c;->b()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1

    invoke-direct {p0}, Lorg/acra/util/c;->b()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
