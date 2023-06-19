.class Lcom/capcom/gcm/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/capcom/gcm/a;


# direct methods
.method constructor <init>(Lcom/capcom/gcm/a;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/gcm/b;->a:Lcom/capcom/gcm/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/capcom/gcm/b;->a:Lcom/capcom/gcm/a;

    invoke-virtual {v1}, Lcom/capcom/gcm/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/capcom/gcm/b;->a:Lcom/capcom/gcm/a;

    invoke-virtual {v1, v0}, Lcom/capcom/gcm/a;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
