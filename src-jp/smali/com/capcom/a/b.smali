.class Lcom/capcom/a/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/capcom/a/a;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/capcom/a/d;

.field private final synthetic d:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/capcom/a/a;Landroid/content/Context;Lcom/capcom/a/d;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/a/b;->a:Lcom/capcom/a/a;

    iput-object p2, p0, Lcom/capcom/a/b;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/capcom/a/b;->c:Lcom/capcom/a/d;

    iput-object p4, p0, Lcom/capcom/a/b;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/capcom/a/b;->a:Lcom/capcom/a/a;

    iget-object v0, v0, Lcom/capcom/a/a;->a:Lcom/capcom/a/f;

    iget-object v1, p0, Lcom/capcom/a/b;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/capcom/a/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/a/b;->c:Lcom/capcom/a/d;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/capcom/a/b;->c:Lcom/capcom/a/d;

    new-instance v1, Lcom/capcom/a/i;

    const-string v2, "auth.expireSession failed"

    invoke-direct {v1, v2}, Lcom/capcom/a/i;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/capcom/a/b;->d:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/capcom/a/d;->a(Lcom/capcom/a/i;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/capcom/a/b;->c:Lcom/capcom/a/d;

    iget-object v2, p0, Lcom/capcom/a/b;->d:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/capcom/a/d;->a(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/capcom/a/b;->c:Lcom/capcom/a/d;

    iget-object v2, p0, Lcom/capcom/a/b;->d:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/capcom/a/d;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/capcom/a/b;->c:Lcom/capcom/a/d;

    iget-object v2, p0, Lcom/capcom/a/b;->d:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/capcom/a/d;->a(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/capcom/a/b;->c:Lcom/capcom/a/d;

    iget-object v2, p0, Lcom/capcom/a/b;->d:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/capcom/a/d;->a(Ljava/io/IOException;Ljava/lang/Object;)V

    goto :goto_0
.end method
