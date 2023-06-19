.class Lcom/capcom/billing/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/capcom/billing/SmurfsBilling;

.field private final synthetic b:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/capcom/billing/SmurfsBilling;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/billing/ah;->a:Lcom/capcom/billing/SmurfsBilling;

    iput-object p2, p0, Lcom/capcom/billing/ah;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v0, "Go To Help Screen"

    const-string v1, "Kill current activity"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/capcom/billing/ah;->b:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/capcom/billing/ah;->a:Lcom/capcom/billing/SmurfsBilling;

    invoke-virtual {v1, v0}, Lcom/capcom/billing/SmurfsBilling;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/capcom/billing/ah;->a:Lcom/capcom/billing/SmurfsBilling;

    invoke-virtual {v0}, Lcom/capcom/billing/SmurfsBilling;->a()V

    return-void
.end method
