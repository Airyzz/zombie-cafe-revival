.class Lcom/capcom/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/capcom/a/j;


# direct methods
.method constructor <init>(Lcom/capcom/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/a/k;->a:Lcom/capcom/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/capcom/a/k;->a:Lcom/capcom/a/j;

    invoke-static {v0}, Lcom/capcom/a/j;->a(Lcom/capcom/a/j;)Lcom/capcom/a/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/capcom/a/h;->a()V

    return-void
.end method
