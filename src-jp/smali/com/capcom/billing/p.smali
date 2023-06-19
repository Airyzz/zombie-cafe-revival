.class Lcom/capcom/billing/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/capcom/billing/l;

.field private final synthetic b:Ljava/util/List;

.field private final synthetic c:Lcom/capcom/billing/s;

.field private final synthetic d:Landroid/os/Handler;

.field private final synthetic e:Lcom/capcom/billing/t;


# direct methods
.method constructor <init>(Lcom/capcom/billing/l;Ljava/util/List;Lcom/capcom/billing/s;Landroid/os/Handler;Lcom/capcom/billing/t;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/billing/p;->a:Lcom/capcom/billing/l;

    iput-object p2, p0, Lcom/capcom/billing/p;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/capcom/billing/p;->c:Lcom/capcom/billing/s;

    iput-object p4, p0, Lcom/capcom/billing/p;->d:Landroid/os/Handler;

    iput-object p5, p0, Lcom/capcom/billing/p;->e:Lcom/capcom/billing/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/capcom/billing/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/capcom/billing/p;->a:Lcom/capcom/billing/l;

    invoke-virtual {v0}, Lcom/capcom/billing/l;->d()V

    iget-object v0, p0, Lcom/capcom/billing/p;->c:Lcom/capcom/billing/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/capcom/billing/p;->d:Landroid/os/Handler;

    new-instance v2, Lcom/capcom/billing/q;

    iget-object v3, p0, Lcom/capcom/billing/p;->c:Lcom/capcom/billing/s;

    iget-object v4, p0, Lcom/capcom/billing/p;->b:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/capcom/billing/q;-><init>(Lcom/capcom/billing/p;Lcom/capcom/billing/s;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/capcom/billing/p;->e:Lcom/capcom/billing/t;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/capcom/billing/p;->d:Landroid/os/Handler;

    new-instance v2, Lcom/capcom/billing/r;

    iget-object v3, p0, Lcom/capcom/billing/p;->e:Lcom/capcom/billing/t;

    iget-object v4, p0, Lcom/capcom/billing/p;->b:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/capcom/billing/r;-><init>(Lcom/capcom/billing/p;Lcom/capcom/billing/t;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/capcom/billing/z;

    :try_start_0
    const-string v3, "IabHelper"

    const-string v4, "consumeAsyncInternal before consume"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/capcom/billing/p;->a:Lcom/capcom/billing/l;

    invoke-virtual {v3, v0}, Lcom/capcom/billing/l;->a(Lcom/capcom/billing/z;)V

    const-string v3, "IabHelper"

    const-string v4, "consumeAsyncInternal after consume"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/capcom/billing/x;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Successful consume of sku "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/capcom/billing/z;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/capcom/billing/x;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/capcom/billing/k; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/capcom/billing/k;->a()Lcom/capcom/billing/x;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
