.class public final Lorg/apache/http/entity/mime/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lorg/apache/http/entity/mime/b;

.field private final c:Lorg/apache/http/entity/mime/a/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/entity/mime/a/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Body may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/apache/http/entity/mime/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/http/entity/mime/a;->c:Lorg/apache/http/entity/mime/a/a;

    new-instance v0, Lorg/apache/http/entity/mime/b;

    invoke-direct {v0}, Lorg/apache/http/entity/mime/b;-><init>()V

    iput-object v0, p0, Lorg/apache/http/entity/mime/a;->b:Lorg/apache/http/entity/mime/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/entity/mime/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/http/entity/mime/a/a;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/http/entity/mime/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/apache/http/entity/mime/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/http/entity/mime/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/http/entity/mime/a/a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/http/entity/mime/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/apache/http/entity/mime/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Transfer-Encoding"

    invoke-virtual {p2}, Lorg/apache/http/entity/mime/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/http/entity/mime/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/entity/mime/a;->b:Lorg/apache/http/entity/mime/b;

    new-instance v1, Lorg/apache/http/entity/mime/e;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/entity/mime/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/mime/b;->a(Lorg/apache/http/entity/mime/e;)V

    return-void
.end method


# virtual methods
.method public final a()Lorg/apache/http/entity/mime/a/a;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/entity/mime/a;->c:Lorg/apache/http/entity/mime/a/a;

    return-object v0
.end method

.method public final b()Lorg/apache/http/entity/mime/b;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/entity/mime/a;->b:Lorg/apache/http/entity/mime/b;

    return-object v0
.end method
