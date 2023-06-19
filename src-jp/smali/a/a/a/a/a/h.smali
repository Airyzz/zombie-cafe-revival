.class public La/a/a/a/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpEntity;


# static fields
.field private static final a:[C


# instance fields
.field private final b:La/a/a/a/a/c;

.field private final c:Lorg/apache/http/Header;

.field private d:J

.field private volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, La/a/a/a/a/h;->a:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, La/a/a/a/a/e;->a:La/a/a/a/a/e;

    invoke-direct {p0, v0, v1, v1}, La/a/a/a/a/h;-><init>(La/a/a/a/a/e;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(La/a/a/a/a/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, La/a/a/a/a/h;-><init>(La/a/a/a/a/e;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(La/a/a/a/a/e;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    invoke-virtual {p0}, La/a/a/a/a/h;->a()Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, La/a/a/a/a/e;->a:La/a/a/a/a/e;

    :cond_1
    new-instance v0, La/a/a/a/a/c;

    const-string v1, "form-data"

    invoke-direct {v0, v1, p3, p2, p1}, La/a/a/a/a/c;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;La/a/a/a/a/e;)V

    iput-object v0, p0, La/a/a/a/a/h;->b:La/a/a/a/a/c;

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    invoke-virtual {p0, p2, p3}, La/a/a/a/a/h;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/a/a/h;->c:Lorg/apache/http/Header;

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/h;->e:Z

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1e

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    sget-object v4, La/a/a/a/a/h;->a:[C

    sget-object v5, La/a/a/a/a/h;->a:[C

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multipart/form-data; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(La/a/a/a/a/a;)V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/h;->b:La/a/a/a/a/c;

    invoke-virtual {v0, p1}, La/a/a/a/a/c;->a(La/a/a/a/a/a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/h;->e:Z

    return-void
.end method

.method public a(Ljava/lang/String;La/a/a/a/a/a/b;)V
    .locals 1

    new-instance v0, La/a/a/a/a/a;

    invoke-direct {v0, p1, p2}, La/a/a/a/a/a;-><init>(Ljava/lang/String;La/a/a/a/a/a/b;)V

    invoke-virtual {p0, v0}, La/a/a/a/a/h;->a(La/a/a/a/a/a;)V

    return-void
.end method

.method public consumeContent()V
    .locals 2

    invoke-virtual {p0}, La/a/a/a/a/h;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multipart form entity does not implement #getContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-boolean v0, p0, La/a/a/a/a/h;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/h;->b:La/a/a/a/a/c;

    invoke-virtual {v0}, La/a/a/a/a/c;->c()J

    move-result-wide v0

    iput-wide v0, p0, La/a/a/a/a/h;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/h;->e:Z

    :cond_0
    iget-wide v0, p0, La/a/a/a/a/h;->d:J

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/h;->c:Lorg/apache/http/Header;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    invoke-virtual {p0}, La/a/a/a/a/h;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepeatable()Z
    .locals 6

    iget-object v0, p0, La/a/a/a/a/h;->b:La/a/a/a/a/c;

    invoke-virtual {v0}, La/a/a/a/a/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/a;

    invoke-virtual {v0}, La/a/a/a/a/a;->b()La/a/a/a/a/a/b;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/a/a/b;->e()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStreaming()Z
    .locals 1

    invoke-virtual {p0}, La/a/a/a/a/h;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/h;->b:La/a/a/a/a/c;

    invoke-virtual {v0, p1}, La/a/a/a/a/c;->a(Ljava/io/OutputStream;)V

    return-void
.end method
