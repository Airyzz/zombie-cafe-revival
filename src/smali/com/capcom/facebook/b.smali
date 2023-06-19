.class final Lcom/capcom/facebook/b;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/capcom/facebook/a;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/os/Bundle;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Lcom/capcom/facebook/c;

.field private final synthetic f:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/capcom/facebook/a;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/capcom/facebook/c;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/facebook/b;->a:Lcom/capcom/facebook/a;

    iput-object p2, p0, Lcom/capcom/facebook/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/capcom/facebook/b;->c:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/capcom/facebook/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/capcom/facebook/b;->e:Lcom/capcom/facebook/c;

    iput-object p6, p0, Lcom/capcom/facebook/b;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/capcom/facebook/b;->a:Lcom/capcom/facebook/a;

    iget-object v0, v0, Lcom/capcom/facebook/a;->a:Lcom/capcom/facebook/Facebook;

    iget-object v1, p0, Lcom/capcom/facebook/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/capcom/facebook/b;->c:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/capcom/facebook/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/capcom/facebook/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/facebook/b;->e:Lcom/capcom/facebook/c;

    iget-object v2, p0, Lcom/capcom/facebook/b;->f:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lcom/capcom/facebook/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/capcom/facebook/b;->e:Lcom/capcom/facebook/c;

    iget-object v1, p0, Lcom/capcom/facebook/b;->f:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/capcom/facebook/c;->b()V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/capcom/facebook/b;->e:Lcom/capcom/facebook/c;

    iget-object v1, p0, Lcom/capcom/facebook/b;->f:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/capcom/facebook/c;->c()V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/capcom/facebook/b;->e:Lcom/capcom/facebook/c;

    iget-object v1, p0, Lcom/capcom/facebook/b;->f:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/capcom/facebook/c;->a()V

    goto :goto_0
.end method
