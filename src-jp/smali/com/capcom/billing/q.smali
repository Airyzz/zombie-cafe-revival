.class Lcom/capcom/billing/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/capcom/billing/p;

.field private final synthetic b:Lcom/capcom/billing/s;

.field private final synthetic c:Ljava/util/List;

.field private final synthetic d:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/capcom/billing/p;Lcom/capcom/billing/s;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/billing/q;->a:Lcom/capcom/billing/p;

    iput-object p2, p0, Lcom/capcom/billing/q;->b:Lcom/capcom/billing/s;

    iput-object p3, p0, Lcom/capcom/billing/q;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/capcom/billing/q;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/capcom/billing/q;->b:Lcom/capcom/billing/s;

    iget-object v0, p0, Lcom/capcom/billing/q;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/capcom/billing/z;

    iget-object v1, p0, Lcom/capcom/billing/q;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/capcom/billing/x;

    invoke-interface {v2, v0, v1}, Lcom/capcom/billing/s;->a(Lcom/capcom/billing/z;Lcom/capcom/billing/x;)V

    return-void
.end method
