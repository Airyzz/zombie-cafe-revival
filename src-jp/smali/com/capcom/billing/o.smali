.class Lcom/capcom/billing/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/capcom/billing/n;

.field private final synthetic b:Lcom/capcom/billing/w;

.field private final synthetic c:Lcom/capcom/billing/x;

.field private final synthetic d:Lcom/capcom/billing/y;


# direct methods
.method constructor <init>(Lcom/capcom/billing/n;Lcom/capcom/billing/w;Lcom/capcom/billing/x;Lcom/capcom/billing/y;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/billing/o;->a:Lcom/capcom/billing/n;

    iput-object p2, p0, Lcom/capcom/billing/o;->b:Lcom/capcom/billing/w;

    iput-object p3, p0, Lcom/capcom/billing/o;->c:Lcom/capcom/billing/x;

    iput-object p4, p0, Lcom/capcom/billing/o;->d:Lcom/capcom/billing/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/capcom/billing/o;->b:Lcom/capcom/billing/w;

    iget-object v1, p0, Lcom/capcom/billing/o;->c:Lcom/capcom/billing/x;

    iget-object v2, p0, Lcom/capcom/billing/o;->d:Lcom/capcom/billing/y;

    invoke-interface {v0, v1, v2}, Lcom/capcom/billing/w;->a(Lcom/capcom/billing/x;Lcom/capcom/billing/y;)V

    return-void
.end method
