.class Lcom/capcom/billing/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/capcom/billing/SmurfsBilling;


# direct methods
.method constructor <init>(Lcom/capcom/billing/SmurfsBilling;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/billing/aj;->a:Lcom/capcom/billing/SmurfsBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/capcom/billing/aj;->a:Lcom/capcom/billing/SmurfsBilling;

    invoke-virtual {v0}, Lcom/capcom/billing/SmurfsBilling;->a()V

    return-void
.end method
