.class Lcom/capcom/billing/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/capcom/billing/p;

.field private final synthetic b:Lcom/capcom/billing/t;

.field private final synthetic c:Ljava/util/List;

.field private final synthetic d:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/capcom/billing/p;Lcom/capcom/billing/t;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/billing/r;->a:Lcom/capcom/billing/p;

    iput-object p2, p0, Lcom/capcom/billing/r;->b:Lcom/capcom/billing/t;

    iput-object p3, p0, Lcom/capcom/billing/r;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/capcom/billing/r;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/capcom/billing/r;->b:Lcom/capcom/billing/t;

    iget-object v1, p0, Lcom/capcom/billing/r;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/capcom/billing/r;->d:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/capcom/billing/t;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
