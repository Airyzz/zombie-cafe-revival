.class final Lcom/capcom/billing/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/capcom/billing/SmurfsBilling;


# direct methods
.method constructor <init>(Lcom/capcom/billing/SmurfsBilling;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/billing/o;->a:Lcom/capcom/billing/SmurfsBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/capcom/billing/o;->a:Lcom/capcom/billing/SmurfsBilling;

    invoke-virtual {v0}, Lcom/capcom/billing/SmurfsBilling;->doFinish()V

    :cond_0
    return-void
.end method
