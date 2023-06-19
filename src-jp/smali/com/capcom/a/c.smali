.class Lcom/capcom/a/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/capcom/a/a;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/os/Bundle;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Lcom/capcom/a/d;

.field private final synthetic f:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/capcom/a/a;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/capcom/a/d;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/a/c;->a:Lcom/capcom/a/a;

    iput-object p2, p0, Lcom/capcom/a/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/capcom/a/c;->c:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/capcom/a/c;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/capcom/a/c;->e:Lcom/capcom/a/d;

    iput-object p6, p0, Lcom/capcom/a/c;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/capcom/a/c;->a:Lcom/capcom/a/a;

    iget-object v0, v0, Lcom/capcom/a/a;->a:Lcom/capcom/a/f;

    iget-object v1, p0, Lcom/capcom/a/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/capcom/a/c;->c:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/capcom/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/capcom/a/f;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/a/c;->e:Lcom/capcom/a/d;

    iget-object v2, p0, Lcom/capcom/a/c;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/capcom/a/d;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/capcom/a/c;->e:Lcom/capcom/a/d;

    iget-object v2, p0, Lcom/capcom/a/c;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/capcom/a/d;->a(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/capcom/a/c;->e:Lcom/capcom/a/d;

    iget-object v2, p0, Lcom/capcom/a/c;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/capcom/a/d;->a(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/capcom/a/c;->e:Lcom/capcom/a/d;

    iget-object v2, p0, Lcom/capcom/a/c;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/capcom/a/d;->a(Ljava/io/IOException;Ljava/lang/Object;)V

    goto :goto_0
.end method
