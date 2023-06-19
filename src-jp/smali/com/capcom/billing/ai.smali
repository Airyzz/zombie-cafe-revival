.class Lcom/capcom/billing/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/capcom/billing/SmurfsBilling;

.field private final synthetic b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/capcom/billing/SmurfsBilling;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/billing/ai;->a:Lcom/capcom/billing/SmurfsBilling;

    iput-object p2, p0, Lcom/capcom/billing/ai;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/capcom/billing/ai;->a:Lcom/capcom/billing/SmurfsBilling;

    iget-object v1, p0, Lcom/capcom/billing/ai;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/capcom/billing/SmurfsBilling;->a(Lcom/capcom/billing/SmurfsBilling;Ljava/lang/String;)V

    return-void
.end method
