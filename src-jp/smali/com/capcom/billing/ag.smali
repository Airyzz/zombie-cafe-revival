.class Lcom/capcom/billing/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/capcom/billing/SmurfsBilling;


# direct methods
.method constructor <init>(Lcom/capcom/billing/SmurfsBilling;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/billing/ag;->a:Lcom/capcom/billing/SmurfsBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "What Button is This?"

    const-string v1, "Kill current activity"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/billing/ag;->a:Lcom/capcom/billing/SmurfsBilling;

    invoke-virtual {v0}, Lcom/capcom/billing/SmurfsBilling;->a()V

    return-void
.end method
