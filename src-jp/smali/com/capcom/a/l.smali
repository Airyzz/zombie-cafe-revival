.class Lcom/capcom/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/capcom/a/j;


# direct methods
.method constructor <init>(Lcom/capcom/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/a/l;->a:Lcom/capcom/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/capcom/a/l;->a:Lcom/capcom/a/j;

    invoke-static {v0}, Lcom/capcom/a/j;->a(Lcom/capcom/a/j;)Lcom/capcom/a/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/capcom/a/h;->a()V

    iget-object v0, p0, Lcom/capcom/a/l;->a:Lcom/capcom/a/j;

    invoke-virtual {v0}, Lcom/capcom/a/j;->dismiss()V

    return-void
.end method
