.class Lcom/capcom/billing/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/capcom/billing/l;

.field private final synthetic b:Z

.field private final synthetic c:Ljava/util/List;

.field private final synthetic d:Landroid/os/Handler;

.field private final synthetic e:Lcom/capcom/billing/w;


# direct methods
.method constructor <init>(Lcom/capcom/billing/l;ZLjava/util/List;Landroid/os/Handler;Lcom/capcom/billing/w;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/billing/n;->a:Lcom/capcom/billing/l;

    iput-boolean p2, p0, Lcom/capcom/billing/n;->b:Z

    iput-object p3, p0, Lcom/capcom/billing/n;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/capcom/billing/n;->d:Landroid/os/Handler;

    iput-object p5, p0, Lcom/capcom/billing/n;->e:Lcom/capcom/billing/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v1, Lcom/capcom/billing/x;

    const/4 v0, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v1, v0, v2}, Lcom/capcom/billing/x;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/capcom/billing/n;->a:Lcom/capcom/billing/l;

    iget-boolean v3, p0, Lcom/capcom/billing/n;->b:Z

    iget-object v4, p0, Lcom/capcom/billing/n;->c:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/capcom/billing/l;->a(ZLjava/util/List;)Lcom/capcom/billing/y;
    :try_end_0
    .catch Lcom/capcom/billing/k; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/capcom/billing/n;->a:Lcom/capcom/billing/l;

    invoke-virtual {v2}, Lcom/capcom/billing/l;->d()V

    iget-object v2, p0, Lcom/capcom/billing/n;->d:Landroid/os/Handler;

    new-instance v3, Lcom/capcom/billing/o;

    iget-object v4, p0, Lcom/capcom/billing/n;->e:Lcom/capcom/billing/w;

    invoke-direct {v3, p0, v4, v1, v0}, Lcom/capcom/billing/o;-><init>(Lcom/capcom/billing/n;Lcom/capcom/billing/w;Lcom/capcom/billing/x;Lcom/capcom/billing/y;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/capcom/billing/k;->a()Lcom/capcom/billing/x;

    move-result-object v1

    goto :goto_0
.end method
